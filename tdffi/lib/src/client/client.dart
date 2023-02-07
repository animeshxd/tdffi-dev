// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tdffi/src/client/errors.dart';
import 'package:tdffi/tdffi.dart' as api;
import 'package:logging/logging.dart';

import '../utils.dart';

class TdlibWrapper {
  int _requestId = 0;
  TdlibWrapper({this.dynamicLibrary});
  DynamicLibrary? dynamicLibrary;
  late api.td_json_client td =
      api.td_json_client(dynamicLibrary ?? DynamicLibrary.executable());
  late var client = td.td_json_client_create();

  final __subject = BehaviorSubject<api.TlObject>();

  ///Sends request to the TDLib client.
  ///
  /// Throws [Exception] on [api.Error]
  Future<T> send<T extends api.TlObject>(api.Func func) async {
    func.extra = ++_requestId;
    var charPtr = func.toCharPtr();
    td.td_json_client_send(client, charPtr);
    // malloc.free(charPtr);
    var event =
        await __subject.where((event) => event.extra == _requestId).first;
    if (event is api.Error) {
      throw TelegramError.fromError(event);
    }
    return event as T;
  }

  ///Receives incoming updates and request responses from the TDLib client
  Future<api.TlObject?> _receive() async {
    var result = td.td_json_client_receive(client, 1);
    if (result.address == nullptr.address) return null;
    var object = getObject(json.decode(result.toDartString()));
    return object;
  }

  ///Receives incoming updates and request responses from the TDLib client
  Stream<api.TlObject> receive() async* {
    while (true) {
      var object = await _receive();
      if (object != null) {
        yield object;
      }
    }
  }

  ///Synchronously executes TDLib request
  ///
  ///Throws [TelegramError] on [api.Error]
  Future<T?> execute<T extends api.TlObject>(api.Func func) async {
    var response = td.td_json_client_execute(client, func.toCharPtr());
    var object = getObject(jsonDecode(response.toDartString()));

    if (object == null) {
      return null;
    }

    if (object is api.Error) {
      throw TelegramError.fromError(object);
    }

    return object as T;
  }

  ///Destroys the TDLib client instance.
  ///
  ///After this is called the client instance must not be used anymore.
  void destroy() {
    td.td_json_client_destroy(client);
  }
}

class Base extends TdlibWrapper {
  bool isRunning = false;
  StreamSubscription? _subscription;
  late var updates = __subject.whereType<api.Update>();
  Base({super.dynamicLibrary});

  Future<void> start() async {
    if (!isRunning) {
      _subscription = receive().listen(__subject.add);
    }
    isRunning = true;
  }

  @override
  Future<void> destroy() async {
    await _subscription?.cancel();
    super.destroy();
  }
}

class Auth extends Base {
  ///
  Auth({api.SetTdlibParameters? tdlibParameters, super.dynamicLibrary}) {
    _tdlibParameters = tdlibParameters;
  }

  bool _isAuthorized = false;
  Future<bool> get isAuthorized async {
    if (!isRunning) return isRunning;
    var result =
        await send<api.AuthorizationState>(api.GetAuthorizationState());
    _isAuthorized = result is api.AuthorizationStateReady;
    return _isAuthorized;
  }

  api.SetTdlibParameters? _tdlibParameters;
  StreamSubscription? _authSubscription;
  StreamSubscription? _connSubscription;
  var log = Logger('Auth');

  /// login to Telegram Account
  ///
  /// [botToken] The bot token,
  ///
  /// [phoneNumber] The phone number of the user, in international format \,
  ///
  /// [password] The 2-step verification password to check,
  ///
  /// [codeCallback] A callable that will be used to retrieve the authorization code.
  ///
  /// [settings] The settings for phone number authentication
  ///
  /// [firstName] First Name for new telegram Account, 1 to 64 character
  ///
  /// [lastName] Last Name for new telegram Account, 0 - 64 character
  ///
  /// Returns current [api.User]
  Future<api.User> login(
      {String? botToken,
      String? phoneNumber,
      String? password,
      Future<String> Function()? codeCallback,
      api.PhoneNumberAuthenticationSettings? settings,
      String? firstName,
      String lastName = ''}) async {
    // start the tdlib client if not running
    await start();

    if (_tdlibParameters == null) throw Exception("set TdlibParameters");

    while (!_isAuthorized) {
      var state =
          await send<api.AuthorizationState>(api.GetAuthorizationState());
      await _handleAuthState(
        state,
        phoneNumber,
        botToken,
        codeCallback,
        password,
        firstName,
        lastName,
      );
    }

    _authSubscription = updates
        .whereType<api.UpdateAuthorizationState>()
        .map((event) => event.authorization_state)
        .listen((state) async => await _handleAuthState(
              state,
              phoneNumber,
              botToken,
              codeCallback,
              password,
              firstName,
              lastName,
            ));

    _connSubscription = updates
        .whereType<api.UpdateConnectionState>()
        .map((event) => event.state.runtimeType)
        .listen((event) {
      switch (event) {
        case api.ConnectionStateConnecting:
          log.info('establishing a connection to the Telegram servers');
          break;
        case api.ConnectionStateReady:
          log.info('Connected to Telegram servers');
          break;
        case api.ConnectionStateUpdating:
          log.info(
              'Downloading data received while the application was offline');
          break;
        case api.ConnectionStateWaitingForNetwork:
          log.info('waiting for the network to become available.');
          break;
        default:
      }
    });
    return await send<api.User>(api.GetMe());
  }

  Future<void> _handleAuthState(
      api.AuthorizationState state,
      String? phone,
      String? botToken,
      Future<String> Function()? codeCallback,
      String? password,
      String? firstName,
      [String lastName = '']) async {
    switch (state.runtimeType) {
      case api.AuthorizationStateWaitTdlibParameters:
        await send(_tdlibParameters!);
        break;
      case api.AuthorizationStateWaitPhoneNumber:
        if (phone != null) {
          await send(api.SetAuthenticationPhoneNumber(phone_number: phone));
        } else if (botToken != null) {
          await send(api.CheckAuthenticationBotToken(token: botToken));
        }
        break;
      case api.AuthorizationStateWaitCode:
        if (codeCallback != null) {
          await send(
              api.CheckAuthenticationCode(code: await codeCallback.call()));
        }
        break;

      case api.AuthorizationStateWaitPassword:
        if (password != null) {
          await send(api.CheckAuthenticationPassword(password: password));
        }
        break;

      case api.AuthorizationStateWaitRegistration:
        if (firstName != null) {
          await send(
            api.RegisterUser(first_name: firstName, last_name: lastName),
          );
        }
        break;

      case api.AuthorizationStateWaitEmailAddress:
      case api.AuthorizationStateWaitEmailCode:
      case api.AuthorizationStateWaitOtherDeviceConfirmation:
        throw Exception("unsupported Authorization type");

      case api.AuthorizationStateReady:
        _isAuthorized = true;
        log.info('The user has been successfully authorized.');
        break;

      case api.AuthorizationStateClosed:
      case api.AuthorizationStateLoggingOut:
        log.info('logged out successfully');
        await destroy();
        break;
      default:
        log.info(state);
    }
  }

  @override
  Future<void> destroy() async {
    await super.destroy();
    await _connSubscription?.cancel();
    await _authSubscription?.cancel();
  }

  Future<void> logout() async {
    await send(api.LogOut());
  }
}

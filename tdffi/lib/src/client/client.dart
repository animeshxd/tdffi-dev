// ignore_for_file: non_constant_identifier_names, overridden_fields, annotate_overrides, constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:isolate';
import 'package:ffi/ffi.dart';
import 'package:tdffi/td.dart' as api;
import 'package:logging/logging.dart';

import './extension.dart';
import 'errors.dart';

abstract class LifeCycle {
  /// Initilize resources
  Future<void> init();

  /// Destroy and clean allocated resourses
  Future<void> destroy();
}

abstract class AbstractNativeTdlibWrapper extends LifeCycle {
  int get clientId;
  set clientId(int i);
  void sendAsync(api.Func request);
  Future<api.TlObject?> receive([double timeout = 1]);
  Future<T> execute<T extends api.TlObject>(api.SyncFunc request);
}

class NativeTdlibWrapper extends api.td_json_client
    implements AbstractNativeTdlibWrapper {
  final _log = Logger("NativeTdlibWrapper");

  /// An opaque identifier of a new TDLib instance.
  late int _clientId;

  /// An opaque identifier of a new TDLib instance.
  @override
  int get clientId => _clientId;

  /// An opaque identifier of a new TDLib instance.
  @override
  set clientId(int id) => _clientId = id;

  NativeTdlibWrapper(super.dynamicLibrary, [int? clientId]) {
    this.clientId = clientId ?? td_create_client_id();
  }

  ///Asynchronously Sends request to the TDLib client.
  void sendAsync(api.Func request) async {
    var charPtr = request.toCharPtr();
    td_send(clientId, charPtr);
    malloc.free(charPtr);
  }

  ///Receives incoming updates and request responses from the TDLib client
  ///
  ///Throws [UnknownTelegramResponseError] on unknown response
  ///
  ///Throws [TypeError] if it fails to deserialize response
  Future<api.TlObject?> receive([double timeout = 1]) async {
    var result = td_receive(timeout);
    if (result.address == nullptr.address) return null;
    api.TlObject? object;
    try {
      object = api.TlObject.fromMap(json.decode(result.toDartString()));
    } on TypeError catch (e) {
      _log.shout(result.toDartString(), e);
      rethrow;
    }
    if (object == null) {
      throw UnknownTelegramResponseError(message: result.toDartString());
    }
    return object;
  }

  ///Synchronously executes TDLib request
  ///
  ///Throws [TelegramError] on [api.Error]
  ///and [UnknownTelegramResponseError] on unknown response
  Future<T> execute<T extends api.TlObject>(api.SyncFunc request) async {
    var req = request.toCharPtr();
    var response = td_execute(req);
    malloc.free(req);
    var object = api.TlObject.fromMap(jsonDecode(response.toDartString()));

    if (object == null) {
      throw UnknownTelegramResponseError(message: response.toDartString());
    }

    if (object is api.Error) {
      throw TelegramError.fromError(object);
    }
    return object as T;
  }

  @override
  Future<void> destroy() async {}

  @override
  Future<void> init() async {}
}

class TdlibEventController extends NativeTdlibWrapper implements LifeCycle {
  int _requestId = 0;

  bool isRunning = false;
  bool _initialized = false;
  String dynamicLibPath;
  final _subject = StreamController<api.TlObject>.broadcast();
  Stream<api.TlObject> get _event => _subject.stream;

  /// Contains notifications about data changes
  Stream<api.Update> get updates => _event.whereType<api.Update>();

  TdlibEventController({this.dynamicLibPath = "libtdjson.so", int? clientId})
      : super(DynamicLibrary.open(dynamicLibPath), clientId);

  final ReceivePort _receivePort = ReceivePort("Tdlib");
  StreamSubscription? _subscription;
  Isolate? _isolate;
  // Map<String, api.UpdateOption> updateOptions = {};

  /// Emit responses from NativeTdlibWrapper.receive to SendPort
  ///
  /// Args: {SendPort port, String path, int clientId}
  static void eventEmmiter(Map<String, dynamic> args) async {
    // print(args);
    SendPort sendPort = args['port'];
    String path = args['path'];
    int clientId = args['clientId'];
    var client = NativeTdlibWrapper(DynamicLibrary.open(path), clientId);
    // client.sendAsync(api.TestNetwork());
    while (true) {
      var object = await client.receive();
      if (object != null) {
        // print(object);
        sendPort.send(object);
      }
    }
  }

  Future<void> init() async {
    if (!_initialized) {
      _isolate = await Isolate.spawn(
        eventEmmiter,
        {
          'port': _receivePort.sendPort,
          'path': dynamicLibPath,
          'clientId': clientId
        },
        paused: true,
      );
      _initialized = true;
      _subscription ??=
          _receivePort.listen((message) => _subject.sink.add(message));
    }
  }

  /// Start tdlib event stream
  Future<void> start() async {
    await init();
    if (!isRunning) {
      _isolate!.resume(_isolate!.pauseCapability!);
      isRunning = true;
    }
  }

  @override
  Future<void> destroy() async {
    await _subscription?.cancel();
    _subscription = null;
    _isolate?.kill(priority: Isolate.immediate);
    isRunning = false;
    _initialized = false;
  }
}

abstract class AbstractTdlibWrapper implements AbstractNativeTdlibWrapper {
  Stream<api.Update> get updates;
  Future<T> send<T extends api.TlObject>(api.Func request);
}

class Tdlib extends TdlibEventController implements AbstractTdlibWrapper {
  Tdlib({super.dynamicLibPath, super.clientId});

  ///Sends request to the TDLib client.
  ///
  /// Throws [TelegramError] on [api.Error]
  /// and Throws [TelegramClientNotStarted] if client is not started
  @override
  Future<T> send<T extends api.TlObject>(api.Func request) async {
    if (!isRunning) throw TelegramClientNotStarted();
    request.extra = ++_requestId;
    sendAsync(request);
    var event =
        await _event.where((event) => event.extra == request.extra).first;

    if (event is api.Error) {
      throw TelegramError.fromError(event);
    }
    return event as T;
  }
}

class Auth extends Tdlib {
  ///
  Auth({required this.tdlibParameters, super.dynamicLibPath, super.clientId});

  bool _isAuthorized = false;

  ///check if The user has been successfully authorized.
  Future<bool> get isAuthorized async {
    if (!isRunning) return false;
    var result =
        await send<api.AuthorizationState>(api.GetAuthorizationState());
    _isAuthorized = result is api.AuthorizationStateReady;
    return _isAuthorized;
  }

  /// Required parameters for TDLib initialization
  ///
  /// [tdlibParameters] - use [DefaultTdlibParameters] for default
  api.SetTdlibParameters tdlibParameters;
  StreamSubscription? _authSubscription;
  StreamSubscription? _connSubscription;

  final _log = Logger("Auth");

  /// login to Telegram Account
  ///
  /// [botToken] the authentication token of a bot; to log in as a bot.
  ///
  /// [phoneNumber] the phone number of the user and sends an authentication code to the user,
  /// use [codeCallback] to set the received authentication code.
  ///
  /// [settings] Contains settings for the authentication of the user's phone number.
  ///
  /// [password] the 2-step verification password,
  /// throws [Exception] if user has 2FA enabled and [password] is `null`.
  ///
  /// [firstName] and [lastName] will be used for creating new account.
  ///
  /// use [onAuthorizationStateUpdate] for manually handling [api.AuthorizationState],
  /// it will use provided [tdlibParameters] for handling [api.AuthorizationStateWaitTdlibParameters].
  ///
  /// [api.AuthorizationStateWaitEmailAddress],
  /// [api.AuthorizationStateWaitEmailCode],
  /// [api.AuthorizationStateWaitOtherDeviceConfirmation] are not supported,
  /// use [onAuthorizationStateUpdate] to handle all available [api.AuthorizationState].
  ///
  /// Returns current [api.User]
  Future<api.User> login(
      {String? botToken,
      String? phoneNumber,
      String? password,
      Future<String> Function()? codeCallback,
      api.PhoneNumberAuthenticationSettings? settings,
      String? firstName,
      String lastName = '',
      Future<void> Function(api.AuthorizationState state)?
          onAuthorizationStateUpdate}) async {
    assert(onAuthorizationStateUpdate != null ||
        botToken != null ||
        phoneNumber != null && codeCallback != null);

    // start the tdlib client if not running
    await super.start();

    _connSubscription ??= _event
        .whereType<api.UpdateConnectionState>()
        .map((event) => event.state)
        .listen(_connectionHandler);

    if (onAuthorizationStateUpdate != null) {
      while (!_isAuthorized) {
        var state =
            await send<api.AuthorizationState>(api.GetAuthorizationState());
        _isAuthorized = state is api.AuthorizationStateReady;
        if (state is! api.AuthorizationStateWaitTdlibParameters) {
          await onAuthorizationStateUpdate(state);
          continue;
        }
        await send(tdlibParameters);
      }
      _authSubscription ??= _event
          .whereType<api.UpdateAuthorizationState>()
          .map((event) => event.authorization_state)
          .listen((state) async {
        if (state is! api.AuthorizationStateWaitTdlibParameters) {
          await onAuthorizationStateUpdate(state);
          return;
        }
        await send(tdlibParameters);
      });
      return await send<api.User>(api.GetMe());
    }

    func(api.AuthorizationState state) async => await _authStateHandler(
          state,
          phoneNumber: phoneNumber,
          botToken: botToken,
          codeCallback: codeCallback,
          settings: settings,
          password: password,
          firstName: firstName,
          lastName: lastName,
        );

    while (!_isAuthorized) {
      var state =
          await send<api.AuthorizationState>(api.GetAuthorizationState());
      await func.call(state);
    }

    _authSubscription ??= _event
        .whereType<api.UpdateAuthorizationState>()
        .map((event) => event.authorization_state)
        .listen((state) async => await func.call(state));

    return await send<api.User>(api.GetMe());
  }

  /// Handle ConnectionState
  void _connectionHandler(api.ConnectionState state) {
    switch (state.runtimeType) {
      case api.ConnectionStateConnecting:
        _log.info('establishing a connection to the Telegram servers');
        break;
      case api.ConnectionStateReady:
        _log.info('Connected to Telegram servers');
        break;
      case api.ConnectionStateUpdating:
        _log.info(
            'Downloading data received while the application was offline');
        break;
      case api.ConnectionStateWaitingForNetwork:
        _log.info('waiting for the network to become available.');
        break;
      default:
    }
  }

  /// Handle AuthorizationState
  Future<void> _authStateHandler(api.AuthorizationState state,
      {String? botToken,
      String? phoneNumber,
      String? password,
      Future<String> Function()? codeCallback,
      api.PhoneNumberAuthenticationSettings? settings,
      String? firstName,
      String lastName = ''}) async {
    // log.fine("[_authStateHandler] ${state.CONSTRUCTOR}");
    switch (state.runtimeType) {
      case api.AuthorizationStateWaitTdlibParameters:
        await send(tdlibParameters);
        break;
      case api.AuthorizationStateWaitPhoneNumber:
        if (phoneNumber != null) {
          await send(api.SetAuthenticationPhoneNumber(
              phone_number: phoneNumber, settings: settings));
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
        if (password == null) {
          throw Exception(
              "the 2-step verification password is required, use [password] to set");
        }
        await send(api.CheckAuthenticationPassword(password: password));
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
        _log.info('The user has been successfully authorized.');
        break;

      case api.AuthorizationStateClosed:
      case api.AuthorizationStateLoggingOut:
        _log.info('logged out successfully');
        await destroy();
        break;
      default:
        _log.warning(state);
    }
  }

  @override
  Future<void> destroy() async {
    await super.destroy();
    await _connSubscription?.cancel();
    await _authSubscription?.cancel();
    _connSubscription = null;
    _authSubscription = null;
    _isAuthorized = false;
  }

  /// Closes the TDLib instance after a proper logout.
  /// Requires an available network connection.
  /// All local data will be destroyed.
  Future<void> logout() async {
    sendAsync(api.LogOut());
  }
}

class TelegramClient extends Auth {
  /// TelegramClient based on Tdlib
  ///
  /// [tdlibParameters] - Required parameters for TDLib initialization,
  /// use [DefaultTdlibParameters] for default
  ///
  /// [dynamicLibPath] - Dynamic Library Path,
  /// use [defaultDynamicLibFile] to get dynamic library filename
  ///
  /// [clientId] - An opaque identifier of a new TDLib instance.
  TelegramClient(
      {required super.tdlibParameters, super.dynamicLibPath, super.clientId});
}

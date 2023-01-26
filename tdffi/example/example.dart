// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart' as ffi;
import 'package:tdffi/src/utils.dart';
import 'package:tdffi/tdffi.dart' as api;
import 'package:rxdart/rxdart.dart';

class Client {
  late DynamicLibrary dynamicLibrary;
  Client(this.dynamicLibrary);
  api.SetTdlibParameters? tdlibParameters;
  String? bot_token;
  String? phone_number;

  late api.td_json_client td = api.td_json_client(dynamicLibrary);
  late var client = td.td_json_client_create();

  bool isauthorized = false;
  bool clear = false;
  int request_id = 0;
  final _subject = BehaviorSubject<api.TlObject>();
  late var updates = _subject.whereType<api.Update>();

  Future<T> send<T extends api.TlObject>(api.Func func) async {
    func.extra = ++request_id;
    var charPtr = func.toCharPtr();
    td.td_json_client_send(client, charPtr);
    // ffi.malloc.free(charPtr);
    var event =
        await _subject.where((event) => event.extra == request_id).first;
    if (event is api.Error) {
      throw Exception("Error: [${event.code}] -  ${event.message}");
    }
    return event as T;
  }

  Future<api.TlObject?> _recive() async {
    var result = td.td_json_client_receive(client, 1);
    if (result.address == nullptr.address) return null;
    var object = getObject(json.decode(result.toDartString()));
    return object;
  }

  Stream<api.TlObject> recive() async* {
    while (true) {
      if (clear) return;
      var object = await _recive();

      if (object != null) {
        yield object;
      }
    }
  }

  Future<api.TlObject?> execute(api.Func func) async {
    var response = td.td_json_client_execute(client, func.toCharPtr());
    return getObject(jsonDecode(response.toDartString()));
  }

  Future<Client> start(
      {required String api_hash,
      required int api_id,
      required String bot_token,
      String? phone_number}) async {
    this.bot_token = bot_token;

    setTdlibParameter(api_hash: api_hash, api_id: api_id);
    recive().listen((event) {
      // print(event);
      _subject.add(event);
    });
    return this;
  }

  void destroy() {
    clear = true;
    td.td_json_client_destroy(client);
  }

  Future<void> login() async {
    if (tdlibParameters == null) return;
    while (!isauthorized) {
      var state =
          await send<api.AuthorizationState>(api.GetAuthorizationState());
      // print(state);
      await handleAuthorizationState(state);
    }

    updates
        .whereType<api.UpdateAuthorizationState>()
        .map((event) => event.authorization_state)
        .listen(handleAuthorizationState);

    var conn_state = updates
        .whereType<api.UpdateConnectionState>()
        .map((event) => event.state);

    conn_state
        .whereType<api.ConnectionStateReady>()
        .listen((event) => print("connected"));
  }

  void setTdlibParameter({
    required String api_hash,
    required int api_id,
    String application_version = '1.0',
    String database_encryption_key = '',
    String device_model = 'TDFFI',
    String system_language_code = 'en',
    bool enable_storage_optimizer = true,
    bool ignore_file_names = true,
    bool use_chat_info_database = true,
    bool use_file_database = true,
    bool use_message_database = false,
    bool use_secret_chats = true,
    bool use_test_dc = false,
    String? database_directory,
    String? files_directory,
    String? system_version,
  }) {
    tdlibParameters = api.SetTdlibParameters(
        api_hash: api_hash,
        api_id: api_id,
        application_version: application_version,
        database_encryption_key: database_encryption_key,
        device_model: device_model,
        enable_storage_optimizer: enable_storage_optimizer,
        ignore_file_names: ignore_file_names,
        system_language_code: system_language_code,
        use_chat_info_database: use_chat_info_database,
        use_file_database: use_file_database,
        use_message_database: use_message_database,
        use_secret_chats: use_secret_chats,
        use_test_dc: use_test_dc,
        database_directory: database_directory,
        files_directory: files_directory,
        system_version: system_version);
  }

  Future<void> handleAuthorizationState(api.AuthorizationState state) async {
    switch (state.runtimeType) {
      case api.AuthorizationStateWaitTdlibParameters:
        await send(tdlibParameters!);
        break;
      case api.AuthorizationStateWaitPhoneNumber:
        if (bot_token != null) {
          await send(api.CheckAuthenticationBotToken(token: bot_token!));
          break;
        }
        // if (phone_number != null) {
        //   await send(
        //       api.SetAuthenticationPhoneNumber(phone_number: phone_number!));
        //   break;
        // }

        break;
      case api.AuthorizationStateReady:
        isauthorized = true;
        print('connected');
        break;
      case api.AuthorizationStateClosed:
      case api.AuthorizationStateLoggingOut:
        print("exiting...");
        destroy();
        break;
      default:
        print(state);
    }
  }
}

void main() async {
  var client = Client(DynamicLibrary.open('../td/build/libtdjson.so.1.8.10'));
  await client.start(
      api_hash: 'a3406de8d171bb422bb6ddf3bbd800e2',
      api_id: 94575,
      bot_token: '');
  client.tdlibParameters?.database_directory = '/tmp/tdlib';

  client.updates.whereType<api.Error>().listen((event) {
    throw Exception("Error: [${event.code}] -  ${event.message}");
  });

  var result =
      await client.execute(api.SetLogVerbosityLevel(new_verbosity_level: 1));
  print(result);

  result =
      await client.send<api.OptionValueString>(api.GetOption(name: 'version'));
  print(result);

  await client.login();
  var updates = client.updates;
  updates.whereType<api.UpdateNewMessage>().listen((event) {
    print("New Message ${(event).message.content}");
  });
}

import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:isolate';

import 'package:ffi/ffi.dart';
import 'package:tdffi/td.dart';

import '../../client.dart';

class IsolateTdlibWrapper implements AbstractNativeTdlibWrapper {
  Isolate? _isolate;
  SendPort? _sendPort;

  bool _isinitilized = false;
  Future<SendPort> get sendPort async =>
      _sendPort ??= await streamController!.stream.whereType<SendPort>().first;
  ReceivePort? mainReceivePort;
  StreamController? streamController;
  StreamSubscription? mainReceivePortSubscription, streamSubscription;
  int _requestId = 0;
  final String dynamicLibPath;
  int? _clientId;

  void _sendToIsolate(String json) async => (await sendPort).send(json);

  /// Use [synchronizeAndgetClientId] function
  @override
  int get clientId => _clientId!;

  @override
  set clientId(int id) => _clientId = id;

  /// 
  Future<int> get synchronizeAndgetClientId async {
    _sendToIsolate('{"@xtype": "getClientId"}');
    _clientId ??= await streamController!.stream.whereType<int>().first;
    return clientId;
  }

  IsolateTdlibWrapper(this.dynamicLibPath, [this._clientId]);

  @override
  Future<T> execute<T extends TlObject>(SyncFunc request) async {
    var request0 = request.toJson();
    request0['@sync'] = ++_requestId;
    request0['@xtype'] = 'execute';
    _sendToIsolate(json.encode(request0));
    var response = await streamController!.stream
        .whereType<Map>()
        // .transform(json.decoder)
        .map((event) => event as Map<String, dynamic>)
        .where((event) => (event)['@sync'] == request0['@sync'])
        .map((event) => TlObject.fromMap(event)!)
        .first;
    if (response is Error) throw TelegramError.fromError(response);

    return response as T;
  }

  @override
  Future<TlObject?> receive([double timeout = 1]) async {
    //TODO:
    throw UnimplementedError();
  }

  @override
  void sendAsync(Func request) async {
    var request0 = request.toJson();
    request0['@sync'] = ++_requestId;
    request0['@xtype'] = 'sendAsync';
    _sendToIsolate(json.encode(request0));
  }

  @override
  Future<void> destroy() async {
    _isolate?.kill(priority: Isolate.immediate);
    await mainReceivePortSubscription?.cancel();
    await streamSubscription?.cancel();
    await streamController!.close();
    streamController = null;
    mainReceivePort = null;
    _isolate = null;
    mainReceivePortSubscription = null;
    streamSubscription = null;
    _sendPort = null;
    _isinitilized = false;
  }

  @override
  Future<void> init() async {
    if (!_isinitilized) {
      streamController ??= StreamController.broadcast();
      mainReceivePort ??= ReceivePort('IsolateTdlibWrapper');
      _isolate ??= await Isolate.spawn(
        isolateFunction,
        {
          'port': mainReceivePort!.sendPort,
          'path': dynamicLibPath,
          'clientId': _clientId
        },
        paused: true,
        debugName: 'ControlIsolate',
      );
      streamSubscription ??= streamController!.stream
          .whereType<SendPort>()
          .listen((event) => _sendPort = event);
      mainReceivePortSubscription ??=
          mainReceivePort?.listen(streamController!.sink.add);
      _isolate!.resume(_isolate!.pauseCapability!);
      _isinitilized = true;
    }
  }

  static isolateFunction(Map<String, dynamic> message) {
    SendPort sendPorttoMain = message['port'] as SendPort;
    String dynamicLibPath = message['path'] as String;
    int? clientId = message['clientId'] as int?;

    ReceivePort receivePortFromMain = ReceivePort();
    sendPorttoMain.send(receivePortFromMain.sendPort);

    final client =
        NativeTdlibWrapper(DynamicLibrary.open(dynamicLibPath), clientId);

    void send(int? sync, Pointer<Utf8> resp) {
      var map = json.decode(resp.toDartString()) as Map;
      map['@sync'] = sync;
      sendPorttoMain.send(map);
    }

    receivePortFromMain.listen((message) {
      var map = json.decode(message);
      String xtype = map.remove('@xtype');
      int? sync = map.remove('@sync');
      var request = json.encode(map).toNativeUtf8();
      switch (xtype) {
        case 'execute':
          var result = client.td_execute(request);
          send(sync!, result);
          malloc.free(request);
          break;
        case 'sendAsync':
          client.td_send(client.clientId, request);
          break;
        case 'receive':
          break;
        case 'getClientId':
          sendPorttoMain.send(client.clientId);
          break;
        default:
      }
    });
  }
}

class TdlibEventController2 implements AbstractNativeTdlibWrapper {
  int _requestId = 0;

  bool isRunning = false;
  bool _initialized = false;
  final String dynamicLibPath;
  final AbstractNativeTdlibWrapper wrapper;

  final _subject = StreamController<TlObject>.broadcast();

  TdlibEventController2(this.dynamicLibPath, this.wrapper);

  Stream<TlObject> get _event => _subject.stream;

  /// Contains notifications about data changes
  Stream<Update> get updates => _event.whereType<Update>();

  final ReceivePort _receivePort = ReceivePort("Tdlib");
  StreamSubscription? _subscription;
  Isolate? _isolate;
  // Map<String, api.UpdateOption> updateOptions = {};

  @override
  Future<void> init() async {
    await wrapper.init();

    if (!_initialized) {
      var args = {
        'port': _receivePort.sendPort,
        'path': dynamicLibPath,
        'clientId': wrapper.clientId // Only prevents from creating new tdlib client 
      };
      _isolate = await Isolate.spawn(
        TdlibEventController.eventEmmiter,
        args,
        paused: true,
        debugName: 'eventEmmiter',
      );
      _subscription ??=
          _receivePort.listen((message) => _subject.sink.add(message));
      _initialized = true;
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
    await wrapper.destroy();
    await _subscription?.cancel();
    _subscription = null;
    _isolate?.kill(priority: Isolate.immediate);
    isRunning = false;
    _initialized = false;
  }

  @override
  Future<T> execute<T extends TlObject>(SyncFunc request) async =>
      await wrapper.execute<T>(request);

  @override
  Future<TlObject?> receive([double timeout = 1]) async =>
      await wrapper.receive(timeout);

  @override
  void sendAsync(Func request) async => wrapper.sendAsync(request);

  @override
  int get clientId => wrapper.clientId;

  @override
  set clientId(int i) => wrapper.clientId = i;
}

extension TdlibEventExt2 on TdlibEventController2 {
  ///Sends request to the TDLib client.
  ///
  /// Throws [TelegramError] on [api.Error]
  /// and Throws [TelegramClientNotStarted] if client is not started
  Future<T> send<T extends TlObject>(Func request) async {
    if (!isRunning) throw TelegramClientNotStarted();
    request.extra = ++_requestId;
    sendAsync(request);
    var event =
        await _event.where((event) => event.extra == request.extra).first;

    if (event is Error) {
      throw TelegramError.fromError(event);
    }
    return event as T;
  }
}

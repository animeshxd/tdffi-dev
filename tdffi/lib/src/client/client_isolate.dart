import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:isolate';

import 'package:ffi/ffi.dart';
import 'package:tdffi/td.dart';

import '../../client.dart';

class IsolateTdlibWrapper implements AbstractNativeTdlibWrapper, LifeCycle {
  Isolate? _isolate;
  SendPort? _sendPort;
  Future<SendPort> get sendPort async =>
      _sendPort ??= await streamController.stream.whereType<SendPort>().first;
  final ReceivePort mainReceivePort = ReceivePort('IsolateTdlibWrapper');
  StreamController streamController = StreamController.broadcast();
  StreamSubscription? mainReceivePortSubscription, streamSubscription;
  int _requestId = 0;
  final String dynamicLibPath;

  IsolateTdlibWrapper(this.dynamicLibPath);

  @override
  Future<T> execute<T extends TlObject>(SyncFunc request) async {
    var request0 = request.toJson();
    request0['@sync'] = ++_requestId;
    request0['@xtype'] = 'execute';
    (await sendPort).send(json.encode(request0));
    var response = await streamController.stream
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
    _sendPort!.send(json.encode(request0));
  }

  @override
  Future<void> destroy() async {
    _isolate?.kill(priority: Isolate.immediate);
    await mainReceivePortSubscription?.cancel();
    await streamSubscription?.cancel();
    _isolate = null;
    mainReceivePortSubscription = null;
    streamSubscription = null;
  }

  @override
  Future<void> init() async {
    _isolate ??= await Isolate.spawn(
      isolateFunction,
      {
        'port': mainReceivePort.sendPort,
        'path': dynamicLibPath,
      },
      paused: true,
    );
    streamSubscription ??= streamController.stream
        .whereType<SendPort>()
        .listen((event) => _sendPort = event);
    mainReceivePortSubscription ??=
        mainReceivePort.listen(streamController.sink.add);
    _isolate!.resume(_isolate!.pauseCapability!);
  }

  static isolateFunction(Map<String, dynamic> message) {
    SendPort sendPort = message['port'] as SendPort;
    String dynamicLibPath = message['path'] as String;

    ReceivePort receivePort = ReceivePort();
    sendPort.send(receivePort.sendPort);
    final client = NativeTdlibWrapper(DynamicLibrary.open(dynamicLibPath));
    final clientId = client.clientId;

    void send(int? sync, Pointer<Utf8> resp) {
      var map = json.decode(resp.toDartString()) as Map;
      map['@sync'] = sync;
      sendPort.send(map);
    }

    receivePort.listen((message) {
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
          client.td_send(clientId, request);
          break;
        case 'receive':
          break;
        default:
      }
    });
  }
}

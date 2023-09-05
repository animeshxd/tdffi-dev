import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:tdffi/client.dart';
import 'package:tdffi/td.dart';

void main(List<String> args) async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
    print(event);
  });
  // print(json.decode('{"@xtype": "getClientId"}'));
  var isolateTdlibWrapper =
      IsolateTdlibWrapper('../td/build/$defaultDynamicLibFile');
  await isolateTdlibWrapper.init();
  print(
    await isolateTdlibWrapper.execute(
      ParseTextEntities(
        text: '<i>Hello World</i>',
        parse_mode: TextParseModeHTML(),
      ),
    ),
  );
  print(await isolateTdlibWrapper.clientId_);
  await isolateTdlibWrapper.destroy();

  var isolateTdlibeventwrapper = TdlibEventController2(
    '../td/build/$defaultDynamicLibFile',
    isolateTdlibWrapper,
  );
  await isolateTdlibeventwrapper.start();
  print(isolateTdlibWrapper.streamController);
  // print(await isolateTdlibeventwrapper.clientId_);
  print(await isolateTdlibeventwrapper
      .send<AuthorizationState>(GetAuthorizationState()));
  await isolateTdlibeventwrapper.destroy();
}

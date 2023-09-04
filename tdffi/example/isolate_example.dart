import 'package:tdffi/client.dart';
import 'package:tdffi/td.dart';

void main(List<String> args) async {
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
  await isolateTdlibWrapper.destroy();
}

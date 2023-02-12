import 'package:tdffi/src/client/client.dart';
import 'package:tdffi/src/defaults/defaults.dart';
import 'package:logging/logging.dart';
import 'package:tdffi/src/generated/functions.dart';

void main() async {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((event) {
    print(event);
  });
  var client = Auth(
    tdlibParameters: DefaultTdlibParameters(
        use_test_dc: false,
        api_hash: 'a3406de8d171bb422bb6ddf3bbd800e2',
        api_id: 94575,
        database_directory: '/tmp/tdlib/'),
    dynamicLibPath: '../td/build/libtdjson.so.1.8.10',
  );
  await client.start();
  await client.execute(SetLogVerbosityLevel(new_verbosity_level: 0));
  var user = await client.login(
    botToken: '',
  );
  print(user.first_name);
  // await Future.delayed(Duration(seconds: 10));
  // client.updateOptions.forEach((key, value) {
  //   print("$key : ${(value.value as dynamic).value}");
  // });
  // print(client.updateOptions.length);
  await client.destroy();
}

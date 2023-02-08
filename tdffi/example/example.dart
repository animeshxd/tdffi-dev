import 'dart:ffi';

import 'package:rxdart/rxdart.dart';
import 'package:tdffi/src/client/client.dart';
import 'package:tdffi/src/defaults/defaults.dart';
import 'package:tdffi/tdffi.dart' as api;
import 'package:logging/logging.dart';

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
    dynamicLibrary: DynamicLibrary.open('../td/build/libtdjson.so.1.8.10'),
  );
  await client.execute(api.SetLogVerbosityLevel(new_verbosity_level: 1));
  var user = await client.login(
    botToken: '',
  );
  print(user.first_name);
  await client.destroy();
}

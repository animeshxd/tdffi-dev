import 'generated/abc.dart';
import 'generated/objects.dart';

TlObject? getObject(Map<String, dynamic> map) {
  var type = map['@type'];
  if (type == null) return null;

  return tlobjects[type]!.call(map);
}

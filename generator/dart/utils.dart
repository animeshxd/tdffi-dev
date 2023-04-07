import 'dart:convert';
import 'dart:io';

import 'const.dart';

String format(String string, [Map<String, dynamic>? args]) {
  args ??= {};
  for (var kv in args.entries) {
    var key = kv.key;
    var value = kv.value;
    string = string.replaceAll('{${key}}', value);
  }
  return string;
}

class _Type {
  static _Type TL = _Type(2),
      DART = _Type(3),
      _VECTOR_TL = _Type(4),
      VECTOR_DART = _Type(6);

  final int value;

  _Type(this.value) : assert(value > 6);

  int toJson() {
    return value;
  }

  bool operator ==(Object other) {
    if (other is _Type) {
      return other.value == value;
    }
    if (other is int) {
      return other == value;
    }
    return false;
  }

}

const dartTypes = {
  'double': 'double',
  'string': 'String',
  'int32': 'int',
  'int53': 'int',
  'int64': 'String',
  'bytes': 'String',
  'Bool': 'bool',
  "emojis": 'List<String>',
  'dynamic': 'dynamic',
};

extension StrExt on String {
  String get toCamelCase => "${this[0].toUpperCase() + this.substring(1)}";

  String get toLowerCamelCase => "${this[0].toLowerCase() + this.substring(1)}";
}

class AllType {
  final String dart;
  final String tl;
  final _Type type;

  AllType(this.dart, this.tl, this.type);
}

AllType _vectorToList(String vector) {
  var type = RegExp(r"vector<(\w+)>").firstMatch(vector)!.group(1)!;
  var t = processTlType(type);
  return AllType('List<${t.dart}>', t.tl, _Type(t.type.value * 2));
}

AllType processTlType(String type) {
  if (type.startsWith('vector')) {
    return _vectorToList(type);
  }
  String? dartType = dartTypes[type];
  if (dartType != null) {
    return AllType(dartType, type, _Type.DART);
  } else {
    return AllType(type.toCamelCase, type, _Type.TL);
  }
}

Map<String, Map<String, Object?>> processTlParameters(
    String source, Map<String, Map<String, Object?>> parameterLookup) {
  var t = source.split(':');
  var parameter = t[0];
  var type = t[1];

  var at = processTlType(type);
  Map<String, Object?> data = {"type": at.dart, "tl": at.tl, "enum": at.type};
  var result = parameterLookup[parameter]!;
  result.addAll(data);
  return {parameter: result};
}

bool needReload() {
  try {
    assert(File(ABC_CLASS_JSON_FILE).existsSync());
    assert(File(CLASS_JSON_FILE).existsSync());
    assert(File(FUNC_JSON_FILE).existsSync());
  } catch (_) {
    return true;
  }
  return false;
}

class Jsons {
  final Map<String, Map<String, Object>> abc;
  final Map<String, Map<String, Object>> clss;
  final Map<String, Map<String, Object>> fns;

  Jsons(this.abc, this.clss, this.fns);
}

Jsons readAllJson() {
  Map<String, Map<String, Object>> abc =
      json.decode(File(ABC_CLASS_JSON_FILE).readAsStringSync());
  Map<String, Map<String, Object>> clss =
      json.decode(File(CLASS_JSON_FILE).readAsStringSync());
  Map<String, Map<String, Object>> fns =
      json.decode(File(FUNC_JSON_FILE).readAsStringSync());
  return Jsons(abc, clss, fns);
}

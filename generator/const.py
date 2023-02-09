BASE_DIR_JSON = "./json/"
TL_API_FILE = "td/td/generate/scheme/td_api.tl"
ABC_CLASS_JSON_FILE = BASE_DIR_JSON + "abstract-classes.json"
CLASS_JSON_FILE = BASE_DIR_JSON + "classes.json"
FUNC_JSON_FILE = BASE_DIR_JSON + "functions.json"

BASE_DIR_DART = "./tdffi/lib/src/generated/"
EXPORT_ABC_CLASS_FILE = BASE_DIR_DART + "abc.dart"
EXPORT_CLASS_FILE = BASE_DIR_DART + "classes.dart"
EXPORT_FUNC_FILE = BASE_DIR_DART + "functions.dart"
EXPORT_MAP_CLASS_STR = BASE_DIR_DART + "objects.dart"
EXPORT_EXTENSION = BASE_DIR_DART + 'extensions.dart'

TlObject = """
abstract class TlObject {
  Map<String, dynamic> toJson();
  int? extra;
}
""".strip()

Func = """
abstract class Func extends TlObject {
}
""".strip()


preamble = "// ignore_for_file: overridden_fields, annotate_overrides, camel_case_types, non_constant_identifier_names, unnecessary_question_mark, no_leading_underscores_for_local_identifiers"
IMPORT_ = """
import 'dart:ffi' show Pointer;
import 'package:ffi/ffi.dart' show StringUtf8Pointer, Utf8;
import 'dart:convert' show jsonEncode;
"""
IMPORT_FROM = './'
IMPORT_CLASS_DART = f"import '{IMPORT_FROM}classes.dart';"
IMPORT_ABC_DART = f"import '{IMPORT_FROM}abc.dart';"
IMPORT_FUNC_DART = f"import '{IMPORT_FROM}func.dart';"
IMPORT_EXT_DART = f"import '{IMPORT_FROM}extensions.dart';"

SPACES = '  '
METHODS = """
  
  @override
  Map<String, dynamic> toJson() {{
    return {{{json}}};
  }}
  @override
  String toString(){{
    return toJson().toString();
  }}
"""

STATIC_METHOD = """
/// Construct from [Map]
static {name}? fromMap(Map<String, dynamic>? _map){{
    if (_map == null) return null;
    var _ = _map["@type"];
    var extra = _map['@extra'];
    {body}
    return {name}({args});
  }}
"""

EXPORT_MAP_BODY = """
Map<String,TlObject? Function(Map<String, dynamic>)> tlobjects = {

"""

EXTENSION_ON_ABC_BODY = """
extension TlObjectExt on TlObject {
  //String toJsonEncoded();
  //Pointer<Utf8> toCharPtr();

  Pointer<Utf8> toCharPtr() {
    return toJsonEncoded().toNativeUtf8();
  }
  String toJsonEncoded() {
    return jsonEncode(toJson());
  }
}
"""

EXTENSION_BODY = """
extension {name}Ext on {name} {{
    {body}
}}
"""

EXTENSION_METHOD_BODY = """
{type}? get {name} {{
  if(this is {type}){{
      return this as {type};
  }}
  return null;
}}
"""

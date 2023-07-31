import os
BASE_DIR_JSON = "./json/"
TL_API_FILE = "td/td/generate/scheme/td_api.tl"
ABC_CLASS_JSON_FILE = BASE_DIR_JSON + "abstract-classes.json"
CLASS_JSON_FILE = BASE_DIR_JSON + "classes.json"
FUNC_JSON_FILE = BASE_DIR_JSON + "functions.json"

DART_PACKAGE_DIR = os.getenv('DART_PACKAGE_DIR', './tdffi')
BASE_DIR_DART = os.path.join(DART_PACKAGE_DIR, "lib/src/generated/")
EXPORT_ABC_CLASS_FILE = BASE_DIR_DART + "abc.dart"
EXPORT_CLASS_FILE = BASE_DIR_DART + "classes.dart"
EXPORT_FUNC_FILE = BASE_DIR_DART + "functions.dart"
EXPORT_MAP_CLASS_STR_FILE = BASE_DIR_DART + "objects.dart"
EXPORT_EXTENSION_FILE = BASE_DIR_DART + 'extensions.dart'
BASE_EXPORT_DIR = os.path.join(DART_PACKAGE_DIR, "lib/td.dart")

TlObject = """
abstract class TlObject {
  /// Object to Map serializer
  Map<String, dynamic> toJson();
  /// [extra] - Request identifier. Must be non-zero. 
  int? extra;
  /// TDLib client instance identifier, for which the response was received. 
  int? clientId;
  String CONSTRUCTOR = "TlObject";
  static TlObject? fromMap(Map<String, dynamic> map) => getObject(map);

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
IMPORT_FUNC_DART = f"import '{IMPORT_FROM}functions.dart';"
IMPORT_EXT_DART = f"import '{IMPORT_FROM}extensions.dart';"
IMPORT_OBJECTS_DART = f"import '{IMPORT_FROM}objects.dart';"


BYTES_TYPEDEF = """
/// the bytes (`List<int>`) are base64-encoded
typedef bytes = String;
"""

CLASS_BODY = """
///{description}
///
class {name} extends {parent} {{
      /// [extra] - Request identifier. Must be non-zero. 
      int? extra;
      /// [CONSTRUCTOR] - type
      String CONSTRUCTOR = "{ID}";
      /// [clientId] - tdlib client id
      int? clientId;
    {body}
}}
"""
ABC_BODY = """
///{description}
///
///Inherited by {child}
abstract class {name} extends {parent} {{
    /// [CONSTRUCTOR] - type
    String CONSTRUCTOR = "{ID}";
    {body}
}}
"""
FUNC_BODY = """
///{description}
///
///Returns [{return_}]
class {name} extends Func {{
      ///[extra] - Request identifier. Must be non-zero. 
      int? extra;
    /// [clientId] - tdlib client id
    int? clientId;
    /// [CONSTRUCTOR] - type
    String CONSTRUCTOR = "{ID}";
    {body}
}}
"""

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
    var clientId = _map['@clientId'];
    {body}
    return {name}({args});
  }}
"""

ABC_STATIC_METHOD = """
/// Construct from [Map]
static {name}? fromMap(Map<String, dynamic>? _map){{
    if (_map == null) return null;
    var _ = _map["@type"];
    switch(_) {{
      {cases}
      case null:
      default:
        return null;
    }}
  }}
"""

EXPORT_MAP_BODY_START = """
Map<String,TlObject? Function(Map<String, dynamic>)> tlobjects = {

"""
EXPORT_MAP_BODY_END = "};"

EXPORT_getObject = """
TlObject? getObject(Map<String, dynamic> map) {
  var type = map['@type'];
  if (type == null) return null;

  return tlobjects[type]!.call(map);
}
"""

EXTENSION_ON_ABC_BODY = """
extension TlObjectExt on TlObject {
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

EXPORT_GENERATED_LIB_PATHS = '\n'.join(
    f"export 'src/generated/{i.replace(BASE_DIR_DART, '')}';" for i in [
        EXPORT_FUNC_FILE,
        EXPORT_CLASS_FILE,
        EXPORT_ABC_CLASS_FILE,
        EXPORT_EXTENSION_FILE,
        EXPORT_MAP_CLASS_STR_FILE,
        "ffi/td_json_client.dart"
    ]
)


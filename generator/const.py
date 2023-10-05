import os
from os import path

BASE_DIR_JSON = "./json/"
TL_API_FILE = "td/td/generate/scheme/td_api.tl"

ABC_CLASS_JSON_FILE = path.join(BASE_DIR_JSON, "abstract-classes.json")
CLASS_JSON_FILE = path.join(BASE_DIR_JSON, "classes.json")
FUNC_JSON_FILE = path.join(BASE_DIR_JSON, "functions.json")

DART_PACKAGE_DIR = os.getenv('DART_PACKAGE_DIR', './tdffi')
DART_PACKAGE_LIB_DIR = path.join(DART_PACKAGE_DIR, 'lib/')
DART_SRC_GENERATED_DIR = "src/generated/"
BASE_DIR_DART = path.join(DART_PACKAGE_LIB_DIR, DART_SRC_GENERATED_DIR)

ABC_CLASS_DART_FILE = "abc.dart"
CLASS_DART_FILE = "classes.dart"
FUNC_DART_FILE = "functions.dart"
MAP_CLASS_STR_DART_FILE = "objects.dart"
EXTENSION_DART_FILE = 'extensions.dart'
FFI_TD_JSON_CLIENT_DART_FILE = 'ffi/td_json_client.dart'
TD_DART_FILE = 'td.dart'

EXPORT_ABC_CLASS_FILE = path.join(BASE_DIR_DART, ABC_CLASS_DART_FILE)
EXPORT_CLASS_FILE = path.join(BASE_DIR_DART, CLASS_DART_FILE)
EXPORT_FUNC_FILE = path.join(BASE_DIR_DART, FUNC_DART_FILE)
EXPORT_MAP_CLASS_STR_FILE = path.join(BASE_DIR_DART, MAP_CLASS_STR_DART_FILE)
EXPORT_EXTENSION_FILE = path.join(BASE_DIR_DART, EXTENSION_DART_FILE)
EXPORT_FFI_JSON_CLIENT_FILE = path.join(BASE_DIR_DART, FFI_TD_JSON_CLIENT_DART_FILE)

TD_LIBARY_DART_FILE_FOR_EXPORTS = path.join(DART_PACKAGE_LIB_DIR, TD_DART_FILE)

DART_TYPES = {
    'double': 'double',
    'string': 'String',
    'int32': 'int',
    'int53': 'int',
    'int64': 'int64',
    'bytes': 'bytes',  # 'Uint8List',
    'Bool': 'bool',
    "emojis": 'List<String>',
    'dynamic': 'dynamic',

    # vector {t:Type} # [ t ] = Vector t
}


TlObject = """
abstract class TlObject {
  /// Object to Map serializer.
  Map<String, dynamic> toJson();
  /// Request identifier. Must be non-zero. 
  int? extra;
  /// TDLib client instance identifier.
  int? clientId;

  static const String CONSTRUCTOR = "TlObject";
  // Construct from [Map].
  static TlObject? fromMap(Map<String, dynamic> map) => getObject(map);

}
""".strip()

Func = """
abstract class Func extends TlObject {}
abstract class SyncFunc extends Func {}
""".strip()


preamble = "// ignore_for_file: overridden_fields, annotate_overrides, camel_case_types, non_constant_identifier_names, unnecessary_question_mark, no_leading_underscores_for_local_identifiers, constant_identifier_names"
IMPORT_DEAFULT_PREAMBLE = """
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


TYPEDEFS = """
/// The bytes (`List<int>`) are base64-encoded.
/// 
/// ```dart
/// import 'dart:convert';
/// 
/// // Encode String to base64-encoded bytes 
/// base64.encode(utf8.encode(string));
/// 
/// // Decode base64-encoded bytes to String
/// utf8.decode(base64.decode(bytes));
/// ```
typedef bytes = String;

/// String representation of int.
typedef int64 = String;
"""

TYPEDEFS_DESCRIPTION = {
    'bytes': '; base64-encoded bytes `List<int>`.',
    'int64': '; string representation of int, use `int.parse`.'
}

CLASS_BODY = """
/// {description}.
///
class {name} extends {parent} {{
      /// Request identifier. Must be non-zero. 
      int? extra;
      /// TDLib client instance identifier.
      int? clientId;

      /// @type
      static const String CONSTRUCTOR = "{ID}";
    {body}
}}
"""
ABC_BODY = """
/// {description}.
///
/// Inherited by {child}.
abstract class {name} extends {parent} {{
    /// @type
    static const String CONSTRUCTOR = "{ID}";
    {body}
}}
"""
FUNC_BODY = """
/// {description}.
///
/// Returns [{return_}].
class {name} extends {parent} {{
    /// Request identifier. Must be non-zero. 
    int? extra;
    /// TDLib client instance identifier.
    int? clientId;

    /// @type
    static const String CONSTRUCTOR = "{ID}";
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
/// Construct from [Map].
static {name}? fromMap(Map<String, dynamic>? _map){{
    if (_map == null) return null;
    var _ = _map["@type"];
    if (_ != CONSTRUCTOR) return null;
    var extra = _map['@extra'];
    var clientId = _map['@clientId'];
    {body}
    return {name}({args});
  }}
"""

ABC_STATIC_METHOD = """
/// Construct from [Map].
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
  Pointer<Utf8> toCharPtr() => toJsonEncoded().toNativeUtf8();
  String toJsonEncoded() => jsonEncode(toJson());
}
"""

EXTENSION_BODY = """
extension {name}Ext on {name} {{
    {body}
}}
"""

EXTENSION_METHOD_BODY = """
{comment}
{type}? get {name} {{
  if(this is {type}){{
      return this as {type};
  }}
  return null;
}}
"""

EXPORT_GENERATED_LIB_PATHS = [
    path.join(DART_SRC_GENERATED_DIR, i) for i in [
        FUNC_DART_FILE,
        CLASS_DART_FILE,
        ABC_CLASS_DART_FILE,
        EXTENSION_DART_FILE,
        MAP_CLASS_STR_DART_FILE,
    ]
]

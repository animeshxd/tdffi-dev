const BASE_DIR_JSON = "./json/";
const TL_API_FILE = "td/td/generate/scheme/td_api.tl";
const ABC_CLASS_JSON_FILE = BASE_DIR_JSON + "abstract-classes.json";
const FUNC_JSON_FILE = BASE_DIR_JSON + "functions.json";
const CLASS_JSON_FILE = BASE_DIR_JSON + "classes.json";
const BASE_DIR_DART = "./tdffi/lib/src/generated/";
const EXPORT_ABC_CLASS_FILE = BASE_DIR_DART + "abc.dart";
const EXPORT_CLASS_FILE = BASE_DIR_DART + "classes.dart";
const EXPORT_FUNC_FILE = BASE_DIR_DART + "functions.dart";
const EXPORT_MAP_CLASS_STR_FILE = BASE_DIR_DART + "objects.dart";
const EXPORT_EXTENSION_FILE = BASE_DIR_DART + 'extensions.dart';

const TlObject = """
abstract class TlObject {
  /// Object to Map serializer
  Map<String, dynamic> toJson();
  /// [extra] - Request identifier. Must be non-zero. 
  int? extra;
  /// TDLib client instance identifier, for which the response was received. 
  int? clientId;
  String CONSTRUCTOR = "TlObject";
}
""";

const Func = """
abstract class Func extends TlObject {
}
""";


const preamble = "// ignore_for_file: overridden_fields, annotate_overrides, camel_case_types, non_constant_identifier_names, unnecessary_question_mark, no_leading_underscores_for_local_identifiers";
const IMPORT_ = """
import 'dart:ffi' show Pointer;
import 'package:ffi/ffi.dart' show StringUtf8Pointer, Utf8;
import 'dart:convert' show jsonEncode;
""";
const IMPORT_FROM = './';
const IMPORT_CLASS_DART = "import '${IMPORT_FROM}classes.dart';";
const IMPORT_ABC_DART = "import '${IMPORT_FROM}abc.dart';";
const IMPORT_FUNC_DART = "import '${IMPORT_FROM}func.dart';";
const IMPORT_EXT_DART = "import '${IMPORT_FROM}extensions.dart';";

const METHODS = """
  
  @override
  Map<String, dynamic> toJson() {{
    return {json};
  }}
  @override
  String toString(){{
    return toJson().toString();
  }}
""";

const STATIC_METHOD = """
/// Construct from [Map]
static {name}? fromMap(Map<String, dynamic>? _map){
    if (_map == null) return null;
    var _ = _map["@type"];
    var extra = _map['@extra'];
    var clientId = _map['@clientId'];
    {body}
    return {name}({args});
  }
""";

const EXPORT_MAP_BODY_START = """
Map<String,TlObject? Function(Map<String, dynamic>)> tlobjects = {

""";
const EXPORT_MAP_BODY_END = "};";

const EXPORT_getObject = """
TlObject? getObject(Map<String, dynamic> map) {
  var type = map['@type'];
  if (type == null) return null;

  return tlobjects[type]!.call(map);
}
""";

const EXTENSION_ON_ABC_BODY = """
extension TlObjectExt on TlObject {
  Pointer<Utf8> toCharPtr() {
    return toJsonEncoded().toNativeUtf8();
  }
  String toJsonEncoded() {
    return jsonEncode(toJson());
  }
}
""";

const EXTENSION_BODY = """
extension {name}Ext on {name} {
    {body}
}
""";

const EXTENSION_METHOD_BODY = """
{type}? get {name} {
  if(this is {type}){
      return this as {type};
  }
  return null;
}
""";

const BASE_EXPORT_DIR = './tdffi/lib/td.dart';

String EXPORT_GENERATED_LIB_PATHS = [
  EXPORT_FUNC_FILE,
  EXPORT_CLASS_FILE,
  EXPORT_ABC_CLASS_FILE,
  EXPORT_EXTENSION_FILE,
  EXPORT_MAP_CLASS_STR_FILE,
  "ffi/td_json_client.dart"
].map((i) => "export 'src/generated/${i.replaceAll(BASE_DIR_DART, '')}';").join('\n');



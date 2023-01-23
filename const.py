BASE_DIR_JSON = "./"
TL_API_FILE = BASE_DIR_JSON + "td_api.tl"
ABC_CLASS_JSON_FILE = BASE_DIR_JSON + "abstract-classes.json"
CLASS_JSON_FILE = BASE_DIR_JSON + "classes.json"
FUNC_JSON_FILE = BASE_DIR_JSON + "functions.json"

BASE_DIR_DART = "./"
EXPORT_ABC_CLASS_FILE = BASE_DIR_DART + "abc.dart"
EXPORT_CLASS_FILE = BASE_DIR_DART + "classes.dart"
EXPORT_FUNC_FILE = BASE_DIR_DART + "functions.dart"


TlObject = """
abstract class TlObject {
  Map<String, dynamic> toJson();
  String toJsonEncoded();
  Pointer<Utf8> toCharPtr();
}
""".strip()

Func = """
abstract class Func extends TlObject {
}
""".strip()

preamble = """
// ignore_for_file: camel_case_types, non_constant_identifier_names, unnecessary_question_mark, no_leading_underscores_for_local_identifiers
import 'dart:ffi' show Pointer;
import 'dart:convert' show jsonEncode;
import 'package:ffi/ffi.dart' show StringUtf8Pointer, Utf8;
""".strip()
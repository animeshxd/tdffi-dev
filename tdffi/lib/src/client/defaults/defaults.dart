// ignore_for_file: non_constant_identifier_names

import 'dart:io';
import 'package:tdffi/td.dart';

class DefaultTdlibParameters extends SetTdlibParameters {
  DefaultTdlibParameters({
    required super.api_hash,
    required super.api_id,
    super.application_version = '1.0',
    super.database_encryption_key = '',
    super.device_model = 'dart',
    super.system_language_code = 'en',
    super.enable_storage_optimizer = true,
    super.ignore_file_names = true,
    super.use_chat_info_database = true,
    super.use_file_database = true,
    super.use_message_database = false,
    super.use_secret_chats = true,
    super.use_test_dc = false,
    super.database_directory,
    super.files_directory,
    super.system_version,
  });
}

String get defaultDynamicLibFile => Platform.isWindows
    ? 'tdjson.dll'
    : Platform.isMacOS || Platform.isIOS
        ? 'libtdjson.dylib'
        : 'libtdjson.so';

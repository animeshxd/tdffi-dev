// ignore_for_file: non_constant_identifier_names

import 'package:tdffi/tdffi.dart';

class DefaultTdlibParameters extends SetTdlibParameters {
  DefaultTdlibParameters({
    required String api_hash,
    required int api_id,
    String application_version = '1.0',
    String database_encryption_key = '',
    String device_model = 'dart',
    String system_language_code = 'en',
    bool enable_storage_optimizer = true,
    bool ignore_file_names = true,
    bool use_chat_info_database = true,
    bool use_file_database = true,
    bool use_message_database = false,
    bool use_secret_chats = true,
    bool use_test_dc = false,
    String? database_directory,
    String? files_directory,
    String? system_version,
  }) : super(
            use_test_dc: use_test_dc,
            database_directory: database_directory,
            files_directory: files_directory,
            database_encryption_key: database_encryption_key,
            use_file_database: use_file_database,
            use_chat_info_database: use_chat_info_database,
            use_message_database: use_message_database,
            use_secret_chats: use_secret_chats,
            api_id: api_id,
            api_hash: api_hash,
            system_language_code: system_language_code,
            device_model: device_model,
            system_version: system_version,
            application_version: application_version,
            enable_storage_optimizer: enable_storage_optimizer,
            ignore_file_names: ignore_file_names);
}

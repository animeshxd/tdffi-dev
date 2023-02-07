import 'package:tdffi/tdffi.dart' show Error;

class TelegramError extends Error implements Exception  {

  TelegramError({
    required super.message,
    required super.code,
  });
  factory TelegramError.fromError(Error e) =>
      TelegramError(message: e.message, code: e.code);
  @override
  String toString() {
    return "TelegramError: [$code] - $message";
  }
}

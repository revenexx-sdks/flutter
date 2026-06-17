/// Exception thrown by the revenexx package.
class RevenexxAPIRevenexxException implements Exception {
  /// Error message.
  final String? message;

  /// Error type.
  ///
  /// See [Error Types](https://revenexx.com/docs/response-codes#errorTypes)
  /// for more information.
  final String? type;
  final int? code;
  final String? response;

  /// Initializes an RevenexxAPIRevenexx Exception.
  RevenexxAPIRevenexxException([this.message = "", this.code, this.type, this.response]);
  
  /// Returns the error type, message, and code.
  @override
  String toString() {
    if (message == null || message == "") return "RevenexxAPIRevenexxException";
    return "RevenexxAPIRevenexxException: ${type ?? ''}, $message (${code ?? 0})";
  }
}

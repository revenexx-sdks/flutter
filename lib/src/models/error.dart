part of '../../models.dart';

/// Uniform error response. The same shape is emitted by the gateway and by the apps behind it, so one parser covers the whole API.
class Error implements Model {
  /// Machine-readable discriminator, e.g. not_found, invalid_value, unique_violation.
  final String? code;

  /// Human-readable message. Was a boolean on gateway-emitted errors before; it is a string everywhere now.
  final String error;

  /// Deprecated duplicate of `error`, kept so existing readers keep working. Read `error`.
  final String? message;

  Error({
    this.code,
    required this.error,
    this.message,
  });

  factory Error.fromMap(Map<String, dynamic> map) {
    return Error(
      code: map['code']?.toString(),
      error: map['error'].toString(),
      message: map['message']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "error": error,
      "message": message,
    };
  }
}

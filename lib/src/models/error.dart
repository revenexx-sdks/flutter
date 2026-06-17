part of '../../models.dart';

/// Uniform gateway error response.
class Error implements Model {
    /// 
    final bool error;

    /// 
    final String message;

    Error({
        required this.error,
        required this.message,
    });

    factory Error.fromMap(Map<String, dynamic> map) {
        return Error(
            error: map['error'],
            message: map['message'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "error": error,
            "message": message,
        };
    }
}

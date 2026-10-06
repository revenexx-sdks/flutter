part of '../../models.dart';

///
class UnauthenticatedResponse implements Model {
  ///
  final String? message;

  UnauthenticatedResponse({
    this.message,
  });

  factory UnauthenticatedResponse.fromMap(Map<String, dynamic> map) {
    return UnauthenticatedResponse(
      message: map['message']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "message": message,
    };
  }
}

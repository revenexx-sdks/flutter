part of '../../models.dart';

/// The identity service's answer, forwarded verbatim.
class AuthMfaChallengeConfirmResponse implements Model {
  /// The challenge that was answered.
  final String? $id;

  final Map<String, dynamic> data;

  AuthMfaChallengeConfirmResponse({
    this.$id,
    required this.data,
  });

  factory AuthMfaChallengeConfirmResponse.fromMap(Map<String, dynamic> map) {
    return AuthMfaChallengeConfirmResponse(
      $id: map['\$id']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

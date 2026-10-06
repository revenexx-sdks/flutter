part of '../../models.dart';

/// The identity service's answer, forwarded verbatim: the spent recovery token. The new password is already in effect when this arrives.
class AuthRecoveryConfirmResponse implements Model {
  /// The recovery that was confirmed.
  final String? $id;

  /// The platform user whose password was set.
  final String? userId;

  final Map<String, dynamic> data;

  AuthRecoveryConfirmResponse({
    this.$id,
    this.userId,
    required this.data,
  });

  factory AuthRecoveryConfirmResponse.fromMap(Map<String, dynamic> map) {
    return AuthRecoveryConfirmResponse(
      $id: map['\$id']?.toString(),
      userId: map['userId']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "userId": userId,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

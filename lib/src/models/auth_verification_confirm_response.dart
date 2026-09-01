part of '../../models.dart';

/// The identity service's answer, forwarded verbatim: the spent verification token.
class AuthVerificationConfirmResponse implements Model {
    /// The verification that was confirmed.
    final String? $id;

    /// The platform user whose address is now confirmed.
    final String? userId;

    final Map<String, dynamic> data;

    AuthVerificationConfirmResponse({
        this.$id,
        this.userId,
        required this.data,
    });

    factory AuthVerificationConfirmResponse.fromMap(Map<String, dynamic> map) {
        return AuthVerificationConfirmResponse(
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

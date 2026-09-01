part of '../../models.dart';

/// The challenge, minus the code. The code is in the mail; a storefront that also received it would not be asking for a second factor.
class AuthMfaChallengeResponse implements Model {
    /// The challenge — send it back as `challenge_id` with the code the buyer types.
    final String? $id;

    /// When the code stops working.
    final String? expire;

    /// Which template the buyer received: 'tenant' is this shop's own, 'platform' the identity service's built-in one — the fallback when messaging could not be reached. The value is the same either way, so the flow works in both cases.
    final enums.AuthMailSource? mail;

    /// The platform user it belongs to.
    final String? userId;

    final Map<String, dynamic> data;

    AuthMfaChallengeResponse({
        this.$id,
        this.expire,
        this.mail,
        this.userId,
        required this.data,
    });

    factory AuthMfaChallengeResponse.fromMap(Map<String, dynamic> map) {
        return AuthMfaChallengeResponse(
            $id: map['\$id']?.toString(),
            expire: map['expire']?.toString(),
            mail: map['mail'] != null ? enums.AuthMailSource.values.firstWhere((e) => e.value == map['mail']) : null,
            userId: map['userId']?.toString(),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "expire": expire,
            "mail": mail?.value,
            "userId": userId,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

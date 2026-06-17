part of '../../models.dart';

/// MFA Challenge
class MfaChallenge implements Model {
    /// Token creation date in ISO 8601 format.
    final String $createdAt;

    /// Token ID.
    final String $id;

    /// Token expiration date in ISO 8601 format.
    final String expire;

    /// User ID.
    final String userId;

    MfaChallenge({
        required this.$createdAt,
        required this.$id,
        required this.expire,
        required this.userId,
    });

    factory MfaChallenge.fromMap(Map<String, dynamic> map) {
        return MfaChallenge(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            expire: map['expire'].toString(),
            userId: map['userId'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "expire": expire,
            "userId": userId,
        };
    }
}

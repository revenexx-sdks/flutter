part of '../../models.dart';

/// Token
class Token implements Model {
    /// Token creation date in ISO 8601 format.
    final String $createdAt;

    /// Token ID.
    final String $id;

    /// Token expiration date in ISO 8601 format.
    final String expire;

    /// Security phrase of a token. Empty if security phrase was not requested when creating a token. It includes randomly generated phrase which is also sent in the external resource such as email.
    final String phrase;

    /// Token secret key. This will return an empty string unless the response is returned using an API key or as part of a webhook payload.
    final String secret;

    /// User ID.
    final String userId;

    Token({
        required this.$createdAt,
        required this.$id,
        required this.expire,
        required this.phrase,
        required this.secret,
        required this.userId,
    });

    factory Token.fromMap(Map<String, dynamic> map) {
        return Token(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            expire: map['expire'].toString(),
            phrase: map['phrase'].toString(),
            secret: map['secret'].toString(),
            userId: map['userId'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "expire": expire,
            "phrase": phrase,
            "secret": secret,
            "userId": userId,
        };
    }
}

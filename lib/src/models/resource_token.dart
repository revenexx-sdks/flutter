part of '../../models.dart';

/// ResourceToken
class ResourceToken implements Model {
    /// Token creation date in ISO 8601 format.
    final String $createdAt;

    /// Token ID.
    final String $id;

    /// Most recent access date in ISO 8601 format. This attribute is only updated again after 24 hours.
    final String accessedAt;

    /// Token expiration date in ISO 8601 format.
    final String expire;

    /// Resource ID.
    final String resourceId;

    /// Resource type.
    final String resourceType;

    /// JWT encoded string.
    final String secret;

    ResourceToken({
        required this.$createdAt,
        required this.$id,
        required this.accessedAt,
        required this.expire,
        required this.resourceId,
        required this.resourceType,
        required this.secret,
    });

    factory ResourceToken.fromMap(Map<String, dynamic> map) {
        return ResourceToken(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            accessedAt: map['accessedAt'].toString(),
            expire: map['expire'].toString(),
            resourceId: map['resourceId'].toString(),
            resourceType: map['resourceType'].toString(),
            secret: map['secret'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "accessedAt": accessedAt,
            "expire": expire,
            "resourceId": resourceId,
            "resourceType": resourceType,
            "secret": secret,
        };
    }
}

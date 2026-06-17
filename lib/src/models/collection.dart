part of '../../models.dart';

/// Collection
class Collection implements Model {
    /// Collection creation date in ISO 8601 format.
    final String $createdAt;

    /// Collection ID.
    final String $id;

    /// Collection permissions. [Learn more about permissions](https://appwrite.io/docs/permissions).
    final List<String> $permissions;

    /// Collection update date in ISO 8601 format.
    final String $updatedAt;

    /// Collection attributes.
    final List attributes;

    /// Maximum document size in bytes. Returns 0 when no limit applies.
    final int bytesMax;

    /// Currently used document size in bytes based on defined attributes.
    final int bytesUsed;

    /// Database ID.
    final String databaseId;

    /// Whether document-level permissions are enabled. [Learn more about permissions](https://appwrite.io/docs/permissions).
    final bool documentSecurity;

    /// Collection enabled. Can be &#039;enabled&#039; or &#039;disabled&#039;. When disabled, the collection is inaccessible to users, but remains accessible to Server SDKs using API keys.
    final bool enabled;

    /// Collection indexes.
    final List<Index> indexes;

    /// Collection name.
    final String name;

    Collection({
        required this.$createdAt,
        required this.$id,
        required this.$permissions,
        required this.$updatedAt,
        required this.attributes,
        required this.bytesMax,
        required this.bytesUsed,
        required this.databaseId,
        required this.documentSecurity,
        required this.enabled,
        required this.indexes,
        required this.name,
    });

    factory Collection.fromMap(Map<String, dynamic> map) {
        return Collection(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $permissions: List.from(map['\$permissions'] ?? []),
            $updatedAt: map['\$updatedAt'].toString(),
            attributes: List.from(map['attributes'] ?? []),
            bytesMax: map['bytesMax'],
            bytesUsed: map['bytesUsed'],
            databaseId: map['databaseId'].toString(),
            documentSecurity: map['documentSecurity'],
            enabled: map['enabled'],
            indexes: List<Index>.from(map['indexes'].map((p) => Index.fromMap(p))),
            name: map['name'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$permissions": $permissions,
            "\$updatedAt": $updatedAt,
            "attributes": attributes,
            "bytesMax": bytesMax,
            "bytesUsed": bytesUsed,
            "databaseId": databaseId,
            "documentSecurity": documentSecurity,
            "enabled": enabled,
            "indexes": indexes.map((p) => p.toMap()).toList(),
            "name": name,
        };
    }
}

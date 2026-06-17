part of '../../models.dart';

/// Document
class Document implements Model {
    /// Collection ID.
    final String $collectionId;

    /// Document creation date in ISO 8601 format.
    final String $createdAt;

    /// Database ID.
    final String $databaseId;

    /// Document ID.
    final String $id;

    /// Document permissions. [Learn more about permissions](https://appwrite.io/docs/permissions).
    final List<String> $permissions;

    /// Document automatically incrementing ID.
    final int $sequence;

    /// Document update date in ISO 8601 format.
    final String $updatedAt;

    final Map<String, dynamic> data;

    Document({
        required this.$collectionId,
        required this.$createdAt,
        required this.$databaseId,
        required this.$id,
        required this.$permissions,
        required this.$sequence,
        required this.$updatedAt,
        required this.data,
    });

    factory Document.fromMap(Map<String, dynamic> map) {
        return Document(
            $collectionId: map['\$collectionId'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $databaseId: map['\$databaseId'].toString(),
            $id: map['\$id'].toString(),
            $permissions: List.from(map['\$permissions'] ?? []),
            $sequence: map['\$sequence'],
            $updatedAt: map['\$updatedAt'].toString(),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$collectionId": $collectionId,
            "\$createdAt": $createdAt,
            "\$databaseId": $databaseId,
            "\$id": $id,
            "\$permissions": $permissions,
            "\$sequence": $sequence,
            "\$updatedAt": $updatedAt,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

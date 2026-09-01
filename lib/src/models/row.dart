part of '../../models.dart';

/// Row
class Row implements Model {
    /// Row creation date in ISO 8601 format.
    final String $createdAt;

    /// Database ID.
    final String $databaseId;

    /// Row ID.
    final String $id;

    /// Row permissions. Each entry is a permission string: an action wrapping a role, e.g. `read("any")`, `update("user:abc")`, `delete("team:abc/owner")`. Actions are `read`, `create`, `update`, `delete` and the aggregate `write` (= create + update + delete); the role inside the quotes takes the form described under “Role strings” in this document's introduction.
    final List<String> $permissions;

    /// Row automatically incrementing ID.
    final int $sequence;

    /// Table ID.
    final String $tableId;

    /// Row update date in ISO 8601 format.
    final String $updatedAt;

    final Map<String, dynamic> data;

    Row({
        required this.$createdAt,
        required this.$databaseId,
        required this.$id,
        required this.$permissions,
        required this.$sequence,
        required this.$tableId,
        required this.$updatedAt,
        required this.data,
    });

    factory Row.fromMap(Map<String, dynamic> map) {
        return Row(
            $createdAt: map['\$createdAt'].toString(),
            $databaseId: map['\$databaseId'].toString(),
            $id: map['\$id'].toString(),
            $permissions: List.from(map['\$permissions'] ?? []),
            $sequence: map['\$sequence'],
            $tableId: map['\$tableId'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$databaseId": $databaseId,
            "\$id": $id,
            "\$permissions": $permissions,
            "\$sequence": $sequence,
            "\$tableId": $tableId,
            "\$updatedAt": $updatedAt,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

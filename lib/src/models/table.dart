part of '../../models.dart';

/// Table
class Table implements Model {
    /// Table creation date in ISO 8601 format.
    final String $createdAt;

    /// Table ID.
    final String $id;

    /// Table permissions. [Learn more about permissions](https://appwrite.io/docs/permissions).
    final List<String> $permissions;

    /// Table update date in ISO 8601 format.
    final String $updatedAt;

    /// Maximum row size in bytes. Returns 0 when no limit applies.
    final int bytesMax;

    /// Currently used row size in bytes based on defined columns.
    final int bytesUsed;

    /// Table columns.
    final List columns;

    /// Database ID.
    final String databaseId;

    /// Table enabled. Can be &#039;enabled&#039; or &#039;disabled&#039;. When disabled, the table is inaccessible to users, but remains accessible to Server SDKs using API keys.
    final bool enabled;

    /// Table indexes.
    final List<ColumnIndex> indexes;

    /// Table name.
    final String name;

    /// Whether row-level permissions are enabled. [Learn more about permissions](https://appwrite.io/docs/permissions).
    final bool rowSecurity;

    Table({
        required this.$createdAt,
        required this.$id,
        required this.$permissions,
        required this.$updatedAt,
        required this.bytesMax,
        required this.bytesUsed,
        required this.columns,
        required this.databaseId,
        required this.enabled,
        required this.indexes,
        required this.name,
        required this.rowSecurity,
    });

    factory Table.fromMap(Map<String, dynamic> map) {
        return Table(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $permissions: List.from(map['\$permissions'] ?? []),
            $updatedAt: map['\$updatedAt'].toString(),
            bytesMax: map['bytesMax'],
            bytesUsed: map['bytesUsed'],
            columns: List.from(map['columns'] ?? []),
            databaseId: map['databaseId'].toString(),
            enabled: map['enabled'],
            indexes: List<ColumnIndex>.from(map['indexes'].map((p) => ColumnIndex.fromMap(p))),
            name: map['name'].toString(),
            rowSecurity: map['rowSecurity'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$permissions": $permissions,
            "\$updatedAt": $updatedAt,
            "bytesMax": bytesMax,
            "bytesUsed": bytesUsed,
            "columns": columns,
            "databaseId": databaseId,
            "enabled": enabled,
            "indexes": indexes.map((p) => p.toMap()).toList(),
            "name": name,
            "rowSecurity": rowSecurity,
        };
    }
}

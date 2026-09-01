part of '../../models.dart';

/// Table
class Table implements Model {
  /// Table creation date in ISO 8601 format.
  final String $createdAt;

  /// Table ID.
  final String $id;

  /// Table permissions. Each entry is a permission string: an action wrapping a role, e.g. `read("any")`, `update("user:abc")`, `delete("team:abc/owner")`. Actions are `read`, `create`, `update`, `delete` and the aggregate `write` (= create + update + delete); the role inside the quotes takes the form described under “Role strings” in this document's introduction.
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

  /// Table enabled. Can be 'enabled' or 'disabled'. When disabled, the table is inaccessible to users, but remains accessible to Server SDKs using API keys.
  final bool enabled;

  /// Table indexes.
  final List<ColumnIndex> indexes;

  /// Table name.
  final String name;

  /// Whether row-level permissions are enabled. When it is, each record's own `$permissions` are enforced on top of the container's.
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
      indexes: List<ColumnIndex>.from(
          map['indexes'].map((p) => ColumnIndex.fromMap(p))),
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

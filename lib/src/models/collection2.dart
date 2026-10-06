part of '../../models.dart';

/// Collection
class Collection2 implements Model {
  /// Collection creation date in ISO 8601 format.
  final String $createdAt;

  /// Collection ID.
  final String $id;

  /// Collection permissions. Each entry is a permission string: an action wrapping a role, e.g. `read("any")`, `update("user:abc")`, `delete("team:abc/owner")`. Actions are `read`, `create`, `update`, `delete` and the aggregate `write` (= create + update + delete); the role inside the quotes takes the form described under “Role strings” in this document's introduction.
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

  /// Whether document-level permissions are enabled. When it is, each record's own `$permissions` are enforced on top of the container's.
  final bool documentSecurity;

  /// Collection enabled. Can be 'enabled' or 'disabled'. When disabled, the collection is inaccessible to users, but remains accessible to Server SDKs using API keys.
  final bool enabled;

  /// Collection indexes.
  final List<Index> indexes;

  /// Collection name.
  final String name;

  Collection2({
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

  factory Collection2.fromMap(Map<String, dynamic> map) {
    return Collection2(
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

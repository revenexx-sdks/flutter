part of '../../models.dart';

/// Database
class Database implements Model {
  /// Database creation date in ISO 8601 format.
  final String $createdAt;

  /// Database ID.
  final String $id;

  /// Database update date in ISO 8601 format.
  final String $updatedAt;

  /// If database is enabled. Can be 'enabled' or 'disabled'. When disabled, the database is inaccessible to users, but remains accessible to Server SDKs using API keys.
  final bool enabled;

  /// Database name.
  final String name;

  /// Database type.
  final enums.DatabaseType type;

  Database({
    required this.$createdAt,
    required this.$id,
    required this.$updatedAt,
    required this.enabled,
    required this.name,
    required this.type,
  });

  factory Database.fromMap(Map<String, dynamic> map) {
    return Database(
      $createdAt: map['\$createdAt'].toString(),
      $id: map['\$id'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      enabled: map['enabled'],
      name: map['name'].toString(),
      type: enums.DatabaseType.values.firstWhere((e) => e.value == map['type']),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$createdAt": $createdAt,
      "\$id": $id,
      "\$updatedAt": $updatedAt,
      "enabled": enabled,
      "name": name,
      "type": type.value,
    };
  }
}

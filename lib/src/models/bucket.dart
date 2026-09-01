part of '../../models.dart';

/// Bucket
class Bucket implements Model {
  /// Bucket creation time in ISO 8601 format.
  final String $createdAt;

  /// Bucket ID.
  final String $id;

  /// Bucket permissions. Each entry is a permission string: an action wrapping a role, e.g. `read("any")`, `update("user:abc")`, `delete("team:abc/owner")`. Actions are `read`, `create`, `update`, `delete` and the aggregate `write` (= create + update + delete); the role inside the quotes takes the form described under “Role strings” in this document's introduction.
  final List<String> $permissions;

  /// Bucket update date in ISO 8601 format.
  final String $updatedAt;

  /// Allowed file extensions.
  final List<String> allowedFileExtensions;

  /// Virus scanning is enabled.
  final bool antivirus;

  /// Compression algorithm chosen for compression. Will be one of none, [gzip](https://en.wikipedia.org/wiki/Gzip), or [zstd](https://en.wikipedia.org/wiki/Zstd).
  final String compression;

  /// Bucket enabled.
  final bool enabled;

  /// Bucket is encrypted.
  final bool encryption;

  /// Whether file-level security is enabled. When it is, each record's own `$permissions` are enforced on top of the container's.
  final bool fileSecurity;

  /// Maximum file size supported.
  final int maximumFileSize;

  /// Bucket name.
  final String name;

  /// Total size of this bucket in bytes.
  final int totalSize;

  /// Image transformations are enabled.
  final bool transformations;

  Bucket({
    required this.$createdAt,
    required this.$id,
    required this.$permissions,
    required this.$updatedAt,
    required this.allowedFileExtensions,
    required this.antivirus,
    required this.compression,
    required this.enabled,
    required this.encryption,
    required this.fileSecurity,
    required this.maximumFileSize,
    required this.name,
    required this.totalSize,
    required this.transformations,
  });

  factory Bucket.fromMap(Map<String, dynamic> map) {
    return Bucket(
      $createdAt: map['\$createdAt'].toString(),
      $id: map['\$id'].toString(),
      $permissions: List.from(map['\$permissions'] ?? []),
      $updatedAt: map['\$updatedAt'].toString(),
      allowedFileExtensions: List.from(map['allowedFileExtensions'] ?? []),
      antivirus: map['antivirus'],
      compression: map['compression'].toString(),
      enabled: map['enabled'],
      encryption: map['encryption'],
      fileSecurity: map['fileSecurity'],
      maximumFileSize: map['maximumFileSize'],
      name: map['name'].toString(),
      totalSize: map['totalSize'],
      transformations: map['transformations'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$createdAt": $createdAt,
      "\$id": $id,
      "\$permissions": $permissions,
      "\$updatedAt": $updatedAt,
      "allowedFileExtensions": allowedFileExtensions,
      "antivirus": antivirus,
      "compression": compression,
      "enabled": enabled,
      "encryption": encryption,
      "fileSecurity": fileSecurity,
      "maximumFileSize": maximumFileSize,
      "name": name,
      "totalSize": totalSize,
      "transformations": transformations,
    };
  }
}

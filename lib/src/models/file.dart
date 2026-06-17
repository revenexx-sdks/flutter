part of '../../models.dart';

/// File
class File implements Model {
    /// File creation date in ISO 8601 format.
    final String $createdAt;

    /// File ID.
    final String $id;

    /// File permissions. [Learn more about permissions](https://appwrite.io/docs/permissions).
    final List<String> $permissions;

    /// File update date in ISO 8601 format.
    final String $updatedAt;

    /// Bucket ID.
    final String bucketId;

    /// Total number of chunks available
    final int chunksTotal;

    /// Total number of chunks uploaded
    final int chunksUploaded;

    /// Compression algorithm used for the file. Will be one of none, [gzip](https://en.wikipedia.org/wiki/Gzip), or [zstd](https://en.wikipedia.org/wiki/Zstd).
    final String compression;

    /// Whether file contents are encrypted at rest.
    final bool encryption;

    /// File mime type.
    final String mimeType;

    /// File name.
    final String name;

    /// File MD5 signature.
    final String signature;

    /// File original size in bytes.
    final int sizeOriginal;

    File({
        required this.$createdAt,
        required this.$id,
        required this.$permissions,
        required this.$updatedAt,
        required this.bucketId,
        required this.chunksTotal,
        required this.chunksUploaded,
        required this.compression,
        required this.encryption,
        required this.mimeType,
        required this.name,
        required this.signature,
        required this.sizeOriginal,
    });

    factory File.fromMap(Map<String, dynamic> map) {
        return File(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $permissions: List.from(map['\$permissions'] ?? []),
            $updatedAt: map['\$updatedAt'].toString(),
            bucketId: map['bucketId'].toString(),
            chunksTotal: map['chunksTotal'],
            chunksUploaded: map['chunksUploaded'],
            compression: map['compression'].toString(),
            encryption: map['encryption'],
            mimeType: map['mimeType'].toString(),
            name: map['name'].toString(),
            signature: map['signature'].toString(),
            sizeOriginal: map['sizeOriginal'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$permissions": $permissions,
            "\$updatedAt": $updatedAt,
            "bucketId": bucketId,
            "chunksTotal": chunksTotal,
            "chunksUploaded": chunksUploaded,
            "compression": compression,
            "encryption": encryption,
            "mimeType": mimeType,
            "name": name,
            "signature": signature,
            "sizeOriginal": sizeOriginal,
        };
    }
}

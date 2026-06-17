part of '../../models.dart';

/// Index
class Index implements Model {
    /// Index creation date in ISO 8601 format.
    final String $createdAt;

    /// Index ID.
    final String $id;

    /// Index update date in ISO 8601 format.
    final String $updatedAt;

    /// Index attributes.
    final List<String> attributes;

    /// Error message. Displays error generated on failure of creating or deleting an index.
    final String error;

    /// Index key.
    final String key;

    /// Index attributes length.
    final List<int> lengths;

    /// Index orders.
    final List<String>? orders;

    /// Index status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
    final enums.IndexStatus status;

    /// Index type.
    final String type;

    Index({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.attributes,
        required this.error,
        required this.key,
        required this.lengths,
        this.orders,
        required this.status,
        required this.type,
    });

    factory Index.fromMap(Map<String, dynamic> map) {
        return Index(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            attributes: List.from(map['attributes'] ?? []),
            error: map['error'].toString(),
            key: map['key'].toString(),
            lengths: List.from(map['lengths'] ?? []),
            orders: List.from(map['orders'] ?? []),
            status: enums.IndexStatus.values.firstWhere((e) => e.value == map['status']),
            type: map['type'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "attributes": attributes,
            "error": error,
            "key": key,
            "lengths": lengths,
            "orders": orders,
            "status": status.value,
            "type": type,
        };
    }
}

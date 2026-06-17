part of '../../models.dart';

/// Index
class ColumnIndex implements Model {
    /// Index creation date in ISO 8601 format.
    final String $createdAt;

    /// Index ID.
    final String $id;

    /// Index update date in ISO 8601 format.
    final String $updatedAt;

    /// Index columns.
    final List<String> columns;

    /// Error message. Displays error generated on failure of creating or deleting an index.
    final String error;

    /// Index Key.
    final String key;

    /// Index columns length.
    final List<int> lengths;

    /// Index orders.
    final List<String>? orders;

    /// Index status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
    final String status;

    /// Index type.
    final String type;

    ColumnIndex({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.columns,
        required this.error,
        required this.key,
        required this.lengths,
        this.orders,
        required this.status,
        required this.type,
    });

    factory ColumnIndex.fromMap(Map<String, dynamic> map) {
        return ColumnIndex(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            columns: List.from(map['columns'] ?? []),
            error: map['error'].toString(),
            key: map['key'].toString(),
            lengths: List.from(map['lengths'] ?? []),
            orders: List.from(map['orders'] ?? []),
            status: map['status'].toString(),
            type: map['type'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "columns": columns,
            "error": error,
            "key": key,
            "lengths": lengths,
            "orders": orders,
            "status": status,
            "type": type,
        };
    }
}

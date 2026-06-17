part of '../../models.dart';

/// ColumnString
class ColumnString implements Model {
    /// Column creation date in ISO 8601 format.
    final String $createdAt;

    /// Column update date in ISO 8601 format.
    final String $updatedAt;

    /// Is column an array?
    final bool? array;

    /// Defines whether this column is encrypted or not.
    final bool? encrypt;

    /// Error message. Displays error generated on failure of creating or deleting an column.
    final String error;

    /// Column Key.
    final String key;

    /// Is column required?
    final bool xrequired;

    /// Column size.
    final int size;

    /// Column status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
    final enums.ColumnStringStatus status;

    /// Column type.
    final String type;

    ColumnString({
        required this.$createdAt,
        required this.$updatedAt,
        this.array,
        this.encrypt,
        required this.error,
        required this.key,
        required this.xrequired,
        required this.size,
        required this.status,
        required this.type,
    });

    factory ColumnString.fromMap(Map<String, dynamic> map) {
        return ColumnString(
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            array: map['array'],
            encrypt: map['encrypt'],
            error: map['error'].toString(),
            key: map['key'].toString(),
            xrequired: map['required'],
            size: map['size'],
            status: enums.ColumnStringStatus.values.firstWhere((e) => e.value == map['status']),
            type: map['type'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "array": array,
            "encrypt": encrypt,
            "error": error,
            "key": key,
            "required": xrequired,
            "size": size,
            "status": status.value,
            "type": type,
        };
    }
}

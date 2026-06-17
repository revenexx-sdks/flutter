part of '../../models.dart';

/// ColumnFloat
class ColumnFloat implements Model {
    /// Column creation date in ISO 8601 format.
    final String $createdAt;

    /// Column update date in ISO 8601 format.
    final String $updatedAt;

    /// Is column an array?
    final bool? array;

    /// Error message. Displays error generated on failure of creating or deleting an column.
    final String error;

    /// Column Key.
    final String key;

    /// Maximum value to enforce for new documents.
    final double? max;

    /// Minimum value to enforce for new documents.
    final double? min;

    /// Is column required?
    final bool xrequired;

    /// Column status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
    final enums.ColumnFloatStatus status;

    /// Column type.
    final String type;

    ColumnFloat({
        required this.$createdAt,
        required this.$updatedAt,
        this.array,
        required this.error,
        required this.key,
        this.max,
        this.min,
        required this.xrequired,
        required this.status,
        required this.type,
    });

    factory ColumnFloat.fromMap(Map<String, dynamic> map) {
        return ColumnFloat(
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            array: map['array'],
            error: map['error'].toString(),
            key: map['key'].toString(),
            max: map['max']?.toDouble(),
            min: map['min']?.toDouble(),
            xrequired: map['required'],
            status: enums.ColumnFloatStatus.values.firstWhere((e) => e.value == map['status']),
            type: map['type'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "array": array,
            "error": error,
            "key": key,
            "max": max,
            "min": min,
            "required": xrequired,
            "status": status.value,
            "type": type,
        };
    }
}

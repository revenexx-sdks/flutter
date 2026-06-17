part of '../../models.dart';

/// AttributeEmail
class AttributeEmail implements Model {
    /// Attribute creation date in ISO 8601 format.
    final String $createdAt;

    /// Attribute update date in ISO 8601 format.
    final String $updatedAt;

    /// Is attribute an array?
    final bool? array;

    /// Error message. Displays error generated on failure of creating or deleting an attribute.
    final String error;

    /// String format.
    final String format;

    /// Attribute Key.
    final String key;

    /// Is attribute required?
    final bool xrequired;

    /// Attribute status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
    final enums.AttributeEmailStatus status;

    /// Attribute type.
    final String type;

    AttributeEmail({
        required this.$createdAt,
        required this.$updatedAt,
        this.array,
        required this.error,
        required this.format,
        required this.key,
        required this.xrequired,
        required this.status,
        required this.type,
    });

    factory AttributeEmail.fromMap(Map<String, dynamic> map) {
        return AttributeEmail(
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            array: map['array'],
            error: map['error'].toString(),
            format: map['format'].toString(),
            key: map['key'].toString(),
            xrequired: map['required'],
            status: enums.AttributeEmailStatus.values.firstWhere((e) => e.value == map['status']),
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
            "format": format,
            "key": key,
            "required": xrequired,
            "status": status.value,
            "type": type,
        };
    }
}

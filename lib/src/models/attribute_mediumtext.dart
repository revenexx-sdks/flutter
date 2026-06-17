part of '../../models.dart';

/// AttributeMediumtext
class AttributeMediumtext implements Model {
    /// Attribute creation date in ISO 8601 format.
    final String $createdAt;

    /// Attribute update date in ISO 8601 format.
    final String $updatedAt;

    /// Is attribute an array?
    final bool? array;

    /// Error message. Displays error generated on failure of creating or deleting an attribute.
    final String error;

    /// Attribute Key.
    final String key;

    /// Is attribute required?
    final bool xrequired;

    /// Attribute status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
    final enums.AttributeMediumtextStatus status;

    /// Attribute type.
    final String type;

    AttributeMediumtext({
        required this.$createdAt,
        required this.$updatedAt,
        this.array,
        required this.error,
        required this.key,
        required this.xrequired,
        required this.status,
        required this.type,
    });

    factory AttributeMediumtext.fromMap(Map<String, dynamic> map) {
        return AttributeMediumtext(
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            array: map['array'],
            error: map['error'].toString(),
            key: map['key'].toString(),
            xrequired: map['required'],
            status: enums.AttributeMediumtextStatus.values.firstWhere((e) => e.value == map['status']),
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
            "required": xrequired,
            "status": status.value,
            "type": type,
        };
    }
}

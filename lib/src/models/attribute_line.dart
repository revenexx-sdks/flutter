part of '../../models.dart';

/// AttributeLine
class AttributeLine implements Model {
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
  final enums.AttributeLineStatus status;

  /// Attribute type.
  final String type;

  AttributeLine({
    required this.$createdAt,
    required this.$updatedAt,
    this.array,
    required this.error,
    required this.key,
    required this.xrequired,
    required this.status,
    required this.type,
  });

  factory AttributeLine.fromMap(Map<String, dynamic> map) {
    return AttributeLine(
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      array: map['array'],
      error: map['error'].toString(),
      key: map['key'].toString(),
      xrequired: map['required'],
      status: enums.AttributeLineStatus.values
          .firstWhere((e) => e.value == map['status']),
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

part of '../../models.dart';

/// AttributeEnum
class AttributeEnum implements Model {
  /// Attribute creation date in ISO 8601 format.
  final String $createdAt;

  /// Attribute update date in ISO 8601 format.
  final String $updatedAt;

  /// Is attribute an array?
  final bool? array;

  /// Array of elements in enumerated type.
  final List<String> elements;

  /// Error message. Displays error generated on failure of creating or deleting an attribute.
  final String error;

  /// String format.
  final String format;

  /// Attribute Key.
  final String key;

  /// Is attribute required?
  final bool xrequired;

  /// Attribute status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final enums.AttributeEnumStatus status;

  /// Attribute type.
  final String type;

  AttributeEnum({
    required this.$createdAt,
    required this.$updatedAt,
    this.array,
    required this.elements,
    required this.error,
    required this.format,
    required this.key,
    required this.xrequired,
    required this.status,
    required this.type,
  });

  factory AttributeEnum.fromMap(Map<String, dynamic> map) {
    return AttributeEnum(
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      array: map['array'],
      elements: List.from(map['elements'] ?? []),
      error: map['error'].toString(),
      format: map['format'].toString(),
      key: map['key'].toString(),
      xrequired: map['required'],
      status: enums.AttributeEnumStatus.values
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
      "elements": elements,
      "error": error,
      "format": format,
      "key": key,
      "required": xrequired,
      "status": status.value,
      "type": type,
    };
  }
}

part of '../../models.dart';

/// AttributeInteger
class AttributeInteger implements Model {
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

  /// Maximum value to enforce for new documents.
  final int? max;

  /// Minimum value to enforce for new documents.
  final int? min;

  /// Is attribute required?
  final bool xrequired;

  /// Attribute status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final enums.AttributeIntegerStatus status;

  /// Attribute type.
  final String type;

  AttributeInteger({
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

  factory AttributeInteger.fromMap(Map<String, dynamic> map) {
    return AttributeInteger(
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      array: map['array'],
      error: map['error'].toString(),
      key: map['key'].toString(),
      max: map['max'],
      min: map['min'],
      xrequired: map['required'],
      status: enums.AttributeIntegerStatus.values
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
      "max": max,
      "min": min,
      "required": xrequired,
      "status": status.value,
      "type": type,
    };
  }
}

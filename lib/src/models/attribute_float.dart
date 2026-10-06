part of '../../models.dart';

/// AttributeFloat
class AttributeFloat implements Model {
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
  final double? max;

  /// Minimum value to enforce for new documents.
  final double? min;

  /// Is attribute required?
  final bool xrequired;

  /// Attribute status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final enums.AttributeFloatStatus status;

  /// Attribute type.
  final String type;

  AttributeFloat({
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

  factory AttributeFloat.fromMap(Map<String, dynamic> map) {
    return AttributeFloat(
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      array: map['array'],
      error: map['error'].toString(),
      key: map['key'].toString(),
      max: map['max']?.toDouble(),
      min: map['min']?.toDouble(),
      xrequired: map['required'],
      status: enums.AttributeFloatStatus.values
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

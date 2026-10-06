part of '../../models.dart';

/// AttributeString
class AttributeString implements Model {
  /// Attribute creation date in ISO 8601 format.
  final String $createdAt;

  /// Attribute update date in ISO 8601 format.
  final String $updatedAt;

  /// Is attribute an array?
  final bool? array;

  /// Defines whether this attribute is encrypted or not.
  final bool? encrypt;

  /// Error message. Displays error generated on failure of creating or deleting an attribute.
  final String error;

  /// Attribute Key.
  final String key;

  /// Is attribute required?
  final bool xrequired;

  /// Attribute size.
  final int size;

  /// Attribute status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final enums.AttributeStringStatus status;

  /// Attribute type.
  final String type;

  AttributeString({
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

  factory AttributeString.fromMap(Map<String, dynamic> map) {
    return AttributeString(
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      array: map['array'],
      encrypt: map['encrypt'],
      error: map['error'].toString(),
      key: map['key'].toString(),
      xrequired: map['required'],
      size: map['size'],
      status: enums.AttributeStringStatus.values
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

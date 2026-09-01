part of '../../models.dart';

/// ColumnEmail
class ColumnEmail implements Model {
  /// Column creation date in ISO 8601 format.
  final String $createdAt;

  /// Column update date in ISO 8601 format.
  final String $updatedAt;

  /// Is column an array?
  final bool? array;

  /// Error message. Displays error generated on failure of creating or deleting an column.
  final String error;

  /// String format.
  final String format;

  /// Column Key.
  final String key;

  /// Is column required?
  final bool xrequired;

  /// Column status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final enums.ColumnEmailStatus status;

  /// Column type.
  final String type;

  ColumnEmail({
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

  factory ColumnEmail.fromMap(Map<String, dynamic> map) {
    return ColumnEmail(
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      array: map['array'],
      error: map['error'].toString(),
      format: map['format'].toString(),
      key: map['key'].toString(),
      xrequired: map['required'],
      status: enums.ColumnEmailStatus.values
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
      "format": format,
      "key": key,
      "required": xrequired,
      "status": status.value,
      "type": type,
    };
  }
}

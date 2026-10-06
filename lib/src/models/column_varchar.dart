part of '../../models.dart';

/// ColumnVarchar
class ColumnVarchar implements Model {
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

  /// Is column required?
  final bool xrequired;

  /// Column size.
  final int size;

  /// Column status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final enums.ColumnVarcharStatus status;

  /// Column type.
  final String type;

  ColumnVarchar({
    required this.$createdAt,
    required this.$updatedAt,
    this.array,
    required this.error,
    required this.key,
    required this.xrequired,
    required this.size,
    required this.status,
    required this.type,
  });

  factory ColumnVarchar.fromMap(Map<String, dynamic> map) {
    return ColumnVarchar(
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      array: map['array'],
      error: map['error'].toString(),
      key: map['key'].toString(),
      xrequired: map['required'],
      size: map['size'],
      status: enums.ColumnVarcharStatus.values
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
      "size": size,
      "status": status.value,
      "type": type,
    };
  }
}

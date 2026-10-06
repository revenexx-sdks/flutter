part of '../../models.dart';

/// ColumnRelationship
class ColumnRelationship implements Model {
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

  /// How deleting the parent document will propagate to child documents.
  final String onDelete;

  /// The ID of the related table.
  final String relatedTable;

  /// The type of the relationship.
  final String relationType;

  /// Is column required?
  final bool xrequired;

  /// Whether this is the parent or child side of the relationship
  final String side;

  /// Column status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final enums.ColumnRelationshipStatus status;

  /// Is the relationship two-way?
  final bool twoWay;

  /// The key of the two-way relationship.
  final String twoWayKey;

  /// Column type.
  final String type;

  ColumnRelationship({
    required this.$createdAt,
    required this.$updatedAt,
    this.array,
    required this.error,
    required this.key,
    required this.onDelete,
    required this.relatedTable,
    required this.relationType,
    required this.xrequired,
    required this.side,
    required this.status,
    required this.twoWay,
    required this.twoWayKey,
    required this.type,
  });

  factory ColumnRelationship.fromMap(Map<String, dynamic> map) {
    return ColumnRelationship(
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      array: map['array'],
      error: map['error'].toString(),
      key: map['key'].toString(),
      onDelete: map['onDelete'].toString(),
      relatedTable: map['relatedTable'].toString(),
      relationType: map['relationType'].toString(),
      xrequired: map['required'],
      side: map['side'].toString(),
      status: enums.ColumnRelationshipStatus.values
          .firstWhere((e) => e.value == map['status']),
      twoWay: map['twoWay'],
      twoWayKey: map['twoWayKey'].toString(),
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
      "onDelete": onDelete,
      "relatedTable": relatedTable,
      "relationType": relationType,
      "required": xrequired,
      "side": side,
      "status": status.value,
      "twoWay": twoWay,
      "twoWayKey": twoWayKey,
      "type": type,
    };
  }
}

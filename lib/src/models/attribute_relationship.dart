part of '../../models.dart';

/// AttributeRelationship
class AttributeRelationship implements Model {
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

  /// How deleting the parent document will propagate to child documents.
  final String onDelete;

  /// The ID of the related collection.
  final String relatedCollection;

  /// The type of the relationship.
  final String relationType;

  /// Is attribute required?
  final bool xrequired;

  /// Whether this is the parent or child side of the relationship
  final String side;

  /// Attribute status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final enums.AttributeRelationshipStatus status;

  /// Is the relationship two-way?
  final bool twoWay;

  /// The key of the two-way relationship.
  final String twoWayKey;

  /// Attribute type.
  final String type;

  AttributeRelationship({
    required this.$createdAt,
    required this.$updatedAt,
    this.array,
    required this.error,
    required this.key,
    required this.onDelete,
    required this.relatedCollection,
    required this.relationType,
    required this.xrequired,
    required this.side,
    required this.status,
    required this.twoWay,
    required this.twoWayKey,
    required this.type,
  });

  factory AttributeRelationship.fromMap(Map<String, dynamic> map) {
    return AttributeRelationship(
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      array: map['array'],
      error: map['error'].toString(),
      key: map['key'].toString(),
      onDelete: map['onDelete'].toString(),
      relatedCollection: map['relatedCollection'].toString(),
      relationType: map['relationType'].toString(),
      xrequired: map['required'],
      side: map['side'].toString(),
      status: enums.AttributeRelationshipStatus.values
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
      "relatedCollection": relatedCollection,
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

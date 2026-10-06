part of '../../models.dart';

/// Attributes List
class AttributeList implements Model {
  /// List of attributes.
  final List attributes;

  /// Total number of attributes in the given collection.
  final int total;

  AttributeList({
    required this.attributes,
    required this.total,
  });

  factory AttributeList.fromMap(Map<String, dynamic> map) {
    return AttributeList(
      attributes: List.from(map['attributes'] ?? []),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "attributes": attributes,
      "total": total,
    };
  }
}

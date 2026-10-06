part of '../../models.dart';

///
class AttributeSchemaGroup implements Model {
  /// The group code, which is what every field in the section carries as its `group`.
  final String? code;

  /// The section heading, resolved for the requested locale.
  final String? label;

  /// Where the section sits, ascending. The array is already in this order.
  final int? position;

  AttributeSchemaGroup({
    this.code,
    this.label,
    this.position,
  });

  factory AttributeSchemaGroup.fromMap(Map<String, dynamic> map) {
    return AttributeSchemaGroup(
      code: map['code']?.toString(),
      label: map['label']?.toString(),
      position: map['position'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "label": label,
      "position": position,
    };
  }
}

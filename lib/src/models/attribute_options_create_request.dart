part of '../../models.dart';

///
class AttributeOptionsCreateRequest implements Model {
  /// The select / multi-select attribute these are the permitted values of. Deleting the attribute deletes its options with it.
  final String attribute_id;

  /// The value actually STORED in a record's `attribute_values` when this option is picked — never the label. Unique within the attribute.
  final String code;

  /// What the option is called, per language tag. Two tenants may label the same code differently; only the code is ever written into a record.
  final Map? labels;

  /// Order in the dropdown, ascending. Options that tie keep the order the database returns them in, so give every option a position if the order matters.
  final int? position;

  /// A colour or texture chip for the picker. Null for an option that is not visual.
  final Map? swatch;

  AttributeOptionsCreateRequest({
    required this.attribute_id,
    required this.code,
    this.labels,
    this.position,
    this.swatch,
  });

  factory AttributeOptionsCreateRequest.fromMap(Map<String, dynamic> map) {
    return AttributeOptionsCreateRequest(
      attribute_id: map['attribute_id'].toString(),
      code: map['code'].toString(),
      labels: map['labels'],
      position: map['position'],
      swatch: map['swatch'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "attribute_id": attribute_id,
      "code": code,
      "labels": labels,
      "position": position,
      "swatch": swatch,
    };
  }
}

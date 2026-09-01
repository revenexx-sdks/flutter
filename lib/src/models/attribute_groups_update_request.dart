part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class AttributeGroupsUpdateRequest implements Model {
  /// The group's stable identifier, and the value an `AttributeField` carries as its `group` — a SECTION of the product form, not a label. Unique per tenant and the key an import joins on.
  final String? code;

  /// The section heading a person sees, keyed by language tag. The code is never shown to an operator; a tag nobody translated falls back to the next filled one, then to English.
  final Map? labels;

  /// Where this section sits in a form, ascending. Sections that tie keep the order the database returns them in.
  final int? position;

  AttributeGroupsUpdateRequest({
    this.code,
    this.labels,
    this.position,
  });

  factory AttributeGroupsUpdateRequest.fromMap(Map<String, dynamic> map) {
    return AttributeGroupsUpdateRequest(
      code: map['code']?.toString(),
      labels: map['labels'],
      position: map['position'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "labels": labels,
      "position": position,
    };
  }
}

part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class AssociationTypesUpdateRequest implements Model {
  /// The kind of relation between two products. Unique per tenant.
  final String? code;

  /// Declares that a relation of this kind carries a quantity — a bundle, a bill of materials. `product_associations.quantity` is where that number goes, and it is meaningless without this flag.
  final bool? is_quantified;

  /// Declares the relation symmetric — an accessory of A is an accessory of B. It is a declaration a client reads: this app stores one row per direction and does not create the mirror for you.
  final bool? is_two_way;

  /// What the relation is called in a product form, per language tag.
  final Map? labels;

  AssociationTypesUpdateRequest({
    this.code,
    this.is_quantified,
    this.is_two_way,
    this.labels,
  });

  factory AssociationTypesUpdateRequest.fromMap(Map<String, dynamic> map) {
    return AssociationTypesUpdateRequest(
      code: map['code']?.toString(),
      is_quantified: map['is_quantified'],
      is_two_way: map['is_two_way'],
      labels: map['labels'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "is_quantified": is_quantified,
      "is_two_way": is_two_way,
      "labels": labels,
    };
  }
}

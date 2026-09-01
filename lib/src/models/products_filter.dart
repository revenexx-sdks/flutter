part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `products` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class ProductsFilter implements Model {
  /// The literal `?attribute_values=` value this call was understood to carry.
  final String? attribute_values;

  /// The literal `?completeness=` value this call was understood to carry.
  final String? completeness;

  /// The literal `?created_at=` value this call was understood to carry.
  final String? created_at;

  /// The literal `?deleted_at=` value this call was understood to carry.
  final String? deleted_at;

  /// The literal `?enabled=` value this call was understood to carry.
  final String? enabled;

  /// The literal `?family_id=` value this call was understood to carry.
  final String? family_id;

  /// The literal `?family_variant_id=` value this call was understood to carry.
  final String? family_variant_id;

  /// The literal `?id=` value this call was understood to carry.
  final String? id;

  /// The literal `?kind=` value this call was understood to carry.
  final String? kind;

  /// The literal `?label=` value this call was understood to carry.
  final String? label;

  /// The literal `?parent_id=` value this call was understood to carry.
  final String? parent_id;

  /// The literal `?quantified_associations=` value this call was understood to carry.
  final String? quantified_associations;

  /// The literal `?sku=` value this call was understood to carry.
  final String? sku;

  /// The literal `?tax_class=` value this call was understood to carry.
  final String? tax_class;

  /// The literal `?updated_at=` value this call was understood to carry.
  final String? updated_at;

  final Map<String, dynamic> data;

  ProductsFilter({
    this.attribute_values,
    this.completeness,
    this.created_at,
    this.deleted_at,
    this.enabled,
    this.family_id,
    this.family_variant_id,
    this.id,
    this.kind,
    this.label,
    this.parent_id,
    this.quantified_associations,
    this.sku,
    this.tax_class,
    this.updated_at,
    required this.data,
  });

  factory ProductsFilter.fromMap(Map<String, dynamic> map) {
    return ProductsFilter(
      attribute_values: map['attribute_values']?.toString(),
      completeness: map['completeness']?.toString(),
      created_at: map['created_at']?.toString(),
      deleted_at: map['deleted_at']?.toString(),
      enabled: map['enabled']?.toString(),
      family_id: map['family_id']?.toString(),
      family_variant_id: map['family_variant_id']?.toString(),
      id: map['id']?.toString(),
      kind: map['kind']?.toString(),
      label: map['label']?.toString(),
      parent_id: map['parent_id']?.toString(),
      quantified_associations: map['quantified_associations']?.toString(),
      sku: map['sku']?.toString(),
      tax_class: map['tax_class']?.toString(),
      updated_at: map['updated_at']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "attribute_values": attribute_values,
      "completeness": completeness,
      "created_at": created_at,
      "deleted_at": deleted_at,
      "enabled": enabled,
      "family_id": family_id,
      "family_variant_id": family_variant_id,
      "id": id,
      "kind": kind,
      "label": label,
      "parent_id": parent_id,
      "quantified_associations": quantified_associations,
      "sku": sku,
      "tax_class": tax_class,
      "updated_at": updated_at,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

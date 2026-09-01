part of '../../models.dart';

///
class ProductTaxRef implements Model {
  /// The product's id.
  final String? id;

  /// The product's resolved display name, or its SKU when the catalog holds no name for it.
  final String? label;

  /// The SKU, so a caller that asked by id can key its own answer by SKU and the other way round.
  final String? sku;

  /// The tax class key the prices app resolves a rate from. Null means the product names none and the caller has to fall back to its own default.
  final String? tax_class;

  ProductTaxRef({
    this.id,
    this.label,
    this.sku,
    this.tax_class,
  });

  factory ProductTaxRef.fromMap(Map<String, dynamic> map) {
    return ProductTaxRef(
      id: map['id']?.toString(),
      label: map['label']?.toString(),
      sku: map['sku']?.toString(),
      tax_class: map['tax_class']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "label": label,
      "sku": sku,
      "tax_class": tax_class,
    };
  }
}

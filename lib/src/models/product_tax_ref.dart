part of '../../models.dart';

/// 
class ProductTaxRef implements Model {
    /// 
    final String? id;

    /// 
    final String? sku;

    /// 
    final String? tax_class;

    ProductTaxRef({
        this.id,
        this.sku,
        this.tax_class,
    });

    factory ProductTaxRef.fromMap(Map<String, dynamic> map) {
        return ProductTaxRef(
            id: map['id']?.toString(),
            sku: map['sku']?.toString(),
            tax_class: map['tax_class']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "id": id,
            "sku": sku,
            "tax_class": tax_class,
        };
    }
}

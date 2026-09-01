part of '../../models.dart';

/// 
class CategoryRuleSample implements Model {
    /// A matching product.
    final String? id;

    /// Its SKU, so the sample is readable. Null only for a row whose SKU is unset, which the database does not allow.
    final String? sku;

    CategoryRuleSample({
        this.id,
        this.sku,
    });

    factory CategoryRuleSample.fromMap(Map<String, dynamic> map) {
        return CategoryRuleSample(
            id: map['id']?.toString(),
            sku: map['sku']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "id": id,
            "sku": sku,
        };
    }
}

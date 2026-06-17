part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class ProductCategoriesUpdateRequest implements Model {
    /// 
    final String? category_id;

    /// 
    final int? position;

    /// 
    final String? product_id;

    ProductCategoriesUpdateRequest({
        this.category_id,
        this.position,
        this.product_id,
    });

    factory ProductCategoriesUpdateRequest.fromMap(Map<String, dynamic> map) {
        return ProductCategoriesUpdateRequest(
            category_id: map['category_id']?.toString(),
            position: map['position'],
            product_id: map['product_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "category_id": category_id,
            "position": position,
            "product_id": product_id,
        };
    }
}

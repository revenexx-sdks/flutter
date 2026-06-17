part of '../../models.dart';

/// 
class ProductCategoriesCreateRequest implements Model {
    /// 
    final String category_id;

    /// 
    final int? position;

    /// 
    final String product_id;

    ProductCategoriesCreateRequest({
        required this.category_id,
        this.position,
        required this.product_id,
    });

    factory ProductCategoriesCreateRequest.fromMap(Map<String, dynamic> map) {
        return ProductCategoriesCreateRequest(
            category_id: map['category_id'].toString(),
            position: map['position'],
            product_id: map['product_id'].toString(),
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

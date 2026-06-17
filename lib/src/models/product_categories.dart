part of '../../models.dart';

/// 
class ProductCategories implements Model {
    /// 
    final String? category_id;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final int? position;

    /// 
    final String? product_id;

    ProductCategories({
        this.category_id,
        this.created_at,
        this.id,
        this.position,
        this.product_id,
    });

    factory ProductCategories.fromMap(Map<String, dynamic> map) {
        return ProductCategories(
            category_id: map['category_id']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            position: map['position'],
            product_id: map['product_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "category_id": category_id,
            "created_at": created_at,
            "id": id,
            "position": position,
            "product_id": product_id,
        };
    }
}

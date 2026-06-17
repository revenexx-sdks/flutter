part of '../../models.dart';

/// 
class ProductAssociations implements Model {
    /// 
    final String? association_type_id;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final int? position;

    /// 
    final String? product_id;

    /// 
    final double? quantity;

    /// 
    final String? target_product_id;

    ProductAssociations({
        this.association_type_id,
        this.created_at,
        this.id,
        this.position,
        this.product_id,
        this.quantity,
        this.target_product_id,
    });

    factory ProductAssociations.fromMap(Map<String, dynamic> map) {
        return ProductAssociations(
            association_type_id: map['association_type_id']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            position: map['position'],
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            target_product_id: map['target_product_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "association_type_id": association_type_id,
            "created_at": created_at,
            "id": id,
            "position": position,
            "product_id": product_id,
            "quantity": quantity,
            "target_product_id": target_product_id,
        };
    }
}

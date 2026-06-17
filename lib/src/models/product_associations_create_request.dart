part of '../../models.dart';

/// 
class ProductAssociationsCreateRequest implements Model {
    /// 
    final String association_type_id;

    /// 
    final int? position;

    /// 
    final String product_id;

    /// 
    final double? quantity;

    /// 
    final String target_product_id;

    ProductAssociationsCreateRequest({
        required this.association_type_id,
        this.position,
        required this.product_id,
        this.quantity,
        required this.target_product_id,
    });

    factory ProductAssociationsCreateRequest.fromMap(Map<String, dynamic> map) {
        return ProductAssociationsCreateRequest(
            association_type_id: map['association_type_id'].toString(),
            position: map['position'],
            product_id: map['product_id'].toString(),
            quantity: map['quantity']?.toDouble(),
            target_product_id: map['target_product_id'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "association_type_id": association_type_id,
            "position": position,
            "product_id": product_id,
            "quantity": quantity,
            "target_product_id": target_product_id,
        };
    }
}

part of '../../models.dart';

/// 
class StockMovement implements Model {
    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final String? location_id;

    /// 
    final Map? metadata;

    /// 
    final String? order_ref;

    /// 
    final String? product_id;

    /// 
    final double? quantity;

    /// 
    final String? reason;

    /// 
    final String? sku;

    /// 
    final String? type;

    StockMovement({
        this.created_at,
        this.id,
        this.location_id,
        this.metadata,
        this.order_ref,
        this.product_id,
        this.quantity,
        this.reason,
        this.sku,
        this.type,
    });

    factory StockMovement.fromMap(Map<String, dynamic> map) {
        return StockMovement(
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            location_id: map['location_id']?.toString(),
            metadata: map['metadata'],
            order_ref: map['order_ref']?.toString(),
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            reason: map['reason']?.toString(),
            sku: map['sku']?.toString(),
            type: map['type']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "id": id,
            "location_id": location_id,
            "metadata": metadata,
            "order_ref": order_ref,
            "product_id": product_id,
            "quantity": quantity,
            "reason": reason,
            "sku": sku,
            "type": type,
        };
    }
}

part of '../../models.dart';

/// 
class Reservation implements Model {
    /// 
    final String? created_at;

    /// 
    final String? expires_at;

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
    final String? sku;

    /// 
    final String? status;

    /// 
    final String? updated_at;

    Reservation({
        this.created_at,
        this.expires_at,
        this.id,
        this.location_id,
        this.metadata,
        this.order_ref,
        this.product_id,
        this.quantity,
        this.sku,
        this.status,
        this.updated_at,
    });

    factory Reservation.fromMap(Map<String, dynamic> map) {
        return Reservation(
            created_at: map['created_at']?.toString(),
            expires_at: map['expires_at']?.toString(),
            id: map['id']?.toString(),
            location_id: map['location_id']?.toString(),
            metadata: map['metadata'],
            order_ref: map['order_ref']?.toString(),
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            sku: map['sku']?.toString(),
            status: map['status']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "expires_at": expires_at,
            "id": id,
            "location_id": location_id,
            "metadata": metadata,
            "order_ref": order_ref,
            "product_id": product_id,
            "quantity": quantity,
            "sku": sku,
            "status": status,
            "updated_at": updated_at,
        };
    }
}

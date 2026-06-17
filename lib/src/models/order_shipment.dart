part of '../../models.dart';

/// 
class OrderShipment implements Model {
    /// 
    final String? carrier;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final Map? metadata;

    /// 
    final String? number;

    /// 
    final String? order_id;

    /// 
    final String? shipped_at;

    /// 
    final String? tracking_code;

    /// 
    final String? tracking_url;

    OrderShipment({
        this.carrier,
        this.created_at,
        this.id,
        this.metadata,
        this.number,
        this.order_id,
        this.shipped_at,
        this.tracking_code,
        this.tracking_url,
    });

    factory OrderShipment.fromMap(Map<String, dynamic> map) {
        return OrderShipment(
            carrier: map['carrier']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            metadata: map['metadata'],
            number: map['number']?.toString(),
            order_id: map['order_id']?.toString(),
            shipped_at: map['shipped_at']?.toString(),
            tracking_code: map['tracking_code']?.toString(),
            tracking_url: map['tracking_url']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "carrier": carrier,
            "created_at": created_at,
            "id": id,
            "metadata": metadata,
            "number": number,
            "order_id": order_id,
            "shipped_at": shipped_at,
            "tracking_code": tracking_code,
            "tracking_url": tracking_url,
        };
    }
}

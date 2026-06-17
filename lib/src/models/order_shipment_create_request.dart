part of '../../models.dart';

/// Create a shipment. Omitted positions = ship everything still open.
class OrderShipmentCreateRequest implements Model {
    /// 
    final String? carrier;

    /// Free-form metadata.
    final Map? metadata;

    /// Delivery note number — drawn from the &#039;delivery&#039; range when omitted.
    final String? number;

    /// Omitted = every position with open quantity, in full.
    final List<OrderShipmentPosition>? positions;

    /// Defaults to now.
    final String? shipped_at;

    /// 
    final String? tracking_code;

    /// 
    final String? tracking_url;

    OrderShipmentCreateRequest({
        this.carrier,
        this.metadata,
        this.number,
        this.positions,
        this.shipped_at,
        this.tracking_code,
        this.tracking_url,
    });

    factory OrderShipmentCreateRequest.fromMap(Map<String, dynamic> map) {
        return OrderShipmentCreateRequest(
            carrier: map['carrier']?.toString(),
            metadata: map['metadata'],
            number: map['number']?.toString(),
            positions: List<OrderShipmentPosition>.from(map['positions'].map((p) => OrderShipmentPosition.fromMap(p))),
            shipped_at: map['shipped_at']?.toString(),
            tracking_code: map['tracking_code']?.toString(),
            tracking_url: map['tracking_url']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "carrier": carrier,
            "metadata": metadata,
            "number": number,
            "positions": positions.map((p) => p.toMap()).toList(),
            "shipped_at": shipped_at,
            "tracking_code": tracking_code,
            "tracking_url": tracking_url,
        };
    }
}

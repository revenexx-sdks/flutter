part of '../../models.dart';

/// One handover to a carrier — a delivery note. An order has as many of these as it took to get the goods out; each carries the position quantities it booked.
class OrderShipment implements Model {
    /// Who is carrying it, in the merchant's own words. Free text — this app neither validates it nor knows the carrier's API.
    final String? carrier;

    /// When the shipment was booked here, which is not necessarily when it left — that is shipped_at.
    final String? created_at;

    /// Primary key of the shipment.
    final String? id;

    /// The booked position quantities of this shipment.
    final List<OrderShipmentItem>? items;

    /// Free-form data for the caller — the warehouse system's own reference for this handover. Stored and returned untouched.
    final Map<String, dynamic>? metadata;

    /// The DELIVERY NOTE number — drawn from the tenant's delivery range, unique per tenant, and a different series from the order number. A caller may supply its own when the number is issued by the warehouse system instead.
    final String? number;

    /// The order this shipment belongs to. Deleting the order deletes its shipments.
    final String? order_id;

    /// When the goods actually left. Defaults to now, and a caller may backdate it — a shipment booked on Monday for a Friday handover says Friday.
    final String? shipped_at;

    /// The consignment number the carrier issued. Free text: every carrier formats it differently and this app stores whatever it is given.
    final String? tracking_code;

    /// Where a human can follow the parcel. Supplied by the caller — this app does not build it, because only the caller knows the carrier's tracking address.
    final String? tracking_url;

    OrderShipment({
        this.carrier,
        this.created_at,
        this.id,
        this.items,
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
            items: map['items'] != null ? List<OrderShipmentItem>.from(map['items'].map((p) => OrderShipmentItem.fromMap(p))) : null,
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
            "items": items?.map((p) => p.toMap()).toList(),
            "metadata": metadata,
            "number": number,
            "order_id": order_id,
            "shipped_at": shipped_at,
            "tracking_code": tracking_code,
            "tracking_url": tracking_url,
        };
    }
}

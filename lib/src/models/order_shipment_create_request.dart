part of '../../models.dart';

/// Book what went out. Every field is optional: an empty body ships every position that still has an open quantity, in full, on a delivery note number drawn from the tenant's delivery range — which is the whole payload for the common case.
class OrderShipmentCreateRequest implements Model {
    /// Who is carrying it, in the merchant's own words. Free text — this app neither validates it nor knows the carrier's API.
    final String? carrier;

    /// Free-form data for the caller — the warehouse system's own reference for this handover. Stored and returned untouched.
    final Map<String, dynamic>? metadata;

    /// The DELIVERY NOTE number — drawn from the tenant's delivery range, unique per tenant, and a different series from the order number. A caller may supply its own when the number is issued by the warehouse system instead. Drawn from the 'delivery' range when omitted; supply one only when the number is issued elsewhere.
    final String? number;

    /// What this shipment carries. Omitted = every position with an open quantity, in full. GET /orders/{id}/shippable answers exactly the budget each one is guarded against.
    final List<OrderShipmentPosition>? positions;

    /// When the goods actually left. Defaults to now, and a caller may backdate it — a shipment booked on Monday for a Friday handover says Friday.
    final String? shipped_at;

    /// The consignment number the carrier issued. Free text: every carrier formats it differently and this app stores whatever it is given.
    final String? tracking_code;

    /// Where a human can follow the parcel. Supplied by the caller — this app does not build it, because only the caller knows the carrier's tracking address.
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
            positions: map['positions'] != null ? List<OrderShipmentPosition>.from(map['positions'].map((p) => OrderShipmentPosition.fromMap(p))) : null,
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
            "positions": positions?.map((p) => p.toMap()).toList(),
            "shipped_at": shipped_at,
            "tracking_code": tracking_code,
            "tracking_url": tracking_url,
        };
    }
}

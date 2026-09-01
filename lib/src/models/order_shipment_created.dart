part of '../../models.dart';

/// What the booking produced: the new shipment with the quantities it took, and the order as it now stands.
class OrderShipmentCreated implements Model {
    /// The order after the booking: fulfillment_status is re-derived from the positions, and status may have moved to in_fulfillment or (depending on the tenant's auto_complete_on) completed.
    final Order? order;

    /// The shipment that was created, WITH the position quantities it booked — the only place a caller learns which quantities actually went out when the positions were defaulted.
    final OrderShipment? shipment;

    OrderShipmentCreated({
        this.order,
        this.shipment,
    });

    factory OrderShipmentCreated.fromMap(Map<String, dynamic> map) {
        return OrderShipmentCreated(
            order: map['order'] != null ? Order.fromMap(map['order']) : null,
            shipment: map['shipment'] != null ? OrderShipment.fromMap(map['shipment']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "order": order?.toMap(),
            "shipment": shipment?.toMap(),
        };
    }
}

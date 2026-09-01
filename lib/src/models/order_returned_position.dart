part of '../../models.dart';

/// One position quantity registered for return.
class OrderReturnedPosition implements Model {
    /// The order item this quantity was booked against — an id out of the same order, never another one.
    final String? order_item_id;

    /// The quantity booked on that position, in the position's own unit. Three decimal places, so 0.5 m of cable is a real booking.
    final double? quantity;

    /// Whether this quantity is reported for restocking when the return completes. Restocking itself stays an explicit inventories.restock call by the orchestrator — this app never writes another app's stock.
    final bool? restock;

    OrderReturnedPosition({
        this.order_item_id,
        this.quantity,
        this.restock,
    });

    factory OrderReturnedPosition.fromMap(Map<String, dynamic> map) {
        return OrderReturnedPosition(
            order_item_id: map['order_item_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            restock: map['restock'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "order_item_id": order_item_id,
            "quantity": quantity,
            "restock": restock,
        };
    }
}

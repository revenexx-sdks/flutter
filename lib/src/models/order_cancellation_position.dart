part of '../../models.dart';

/// One position quantity this cancellation removed.
class OrderCancellationPosition implements Model {
    /// The order item this quantity was booked against — an id out of the same order, never another one.
    final String? order_item_id;

    /// The quantity booked on that position, in the position's own unit. Three decimal places, so 0.5 m of cable is a real booking.
    final double? quantity;

    OrderCancellationPosition({
        this.order_item_id,
        this.quantity,
    });

    factory OrderCancellationPosition.fromMap(Map<String, dynamic> map) {
        return OrderCancellationPosition(
            order_item_id: map['order_item_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "order_item_id": order_item_id,
            "quantity": quantity,
        };
    }
}

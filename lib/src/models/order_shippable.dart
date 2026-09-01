part of '../../models.dart';

/// What a shipment of this order may still contain, and whether one would be accepted at all — answered by the same code POST /orders/{id}/ship runs, so the two cannot drift.
class OrderShippable implements Model {
    /// Why not, in the very words POST /orders/{id}/ship would refuse with — including the hold reason where there is one. Null when `shippable` is true.
    final String? blocked_reason;

    /// How many positions still have an open quantity — the number of lines a shipment dialog would offer.
    final int? open_positions;

    /// The summed open quantity over those positions. Mixes units where the order does, so it is a headline figure, not a total to act on.
    final double? open_quantity;

    /// Just enough of the order to render the answer — the full row is GET /orders/{id}.
    final OrderShippableOrder? order;

    /// Every position of the order, in position order, each with its open quantity.
    final List<OrderShippablePosition>? positions;

    /// Whether a shipment would be accepted RIGHT NOW — the one question a "create shipment" button should be enabled on. False when the order is held, cancelled, completed, or has nothing open.
    final bool? shippable;

    OrderShippable({
        this.blocked_reason,
        this.open_positions,
        this.open_quantity,
        this.order,
        this.positions,
        this.shippable,
    });

    factory OrderShippable.fromMap(Map<String, dynamic> map) {
        return OrderShippable(
            blocked_reason: map['blocked_reason']?.toString(),
            open_positions: map['open_positions'],
            open_quantity: map['open_quantity']?.toDouble(),
            order: map['order'] != null ? OrderShippableOrder.fromMap(map['order']) : null,
            positions: map['positions'] != null ? List<OrderShippablePosition>.from(map['positions'].map((p) => OrderShippablePosition.fromMap(p))) : null,
            shippable: map['shippable'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "blocked_reason": blocked_reason,
            "open_positions": open_positions,
            "open_quantity": open_quantity,
            "order": order?.toMap(),
            "positions": positions?.map((p) => p.toMap()).toList(),
            "shippable": shippable,
        };
    }
}

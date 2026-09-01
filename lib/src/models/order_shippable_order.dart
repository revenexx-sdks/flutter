part of '../../models.dart';

/// Just enough of the order to render the answer — the full row is GET /orders/{id}.
class OrderShippableOrder implements Model {
  /// Whether the order has SHIPPED, and the one dimension nobody writes: it is DERIVED after every quantity change from the positions' own bookkeeping. 'fulfilled' means shipped >= ordered − cancelled across all positions, 'partial' means something went out. Sending it has no effect; ship, cancel or return something and it moves.
  final enums.OrderFulfillmentStatus? fulfillment_status;

  /// Why the order is held, in the words the shipping guard quotes back. Null when it is not held — releasing a hold clears it.
  final String? hold_reason;

  /// The order this answer is about.
  final String? id;

  /// The order number a human quotes — drawn from the tenant's order range at place-time, unique per tenant and never reused. It is NOT the id: every route addresses an order by uuid, and GET /orders?number=… is how a number becomes one.
  final String? number;

  /// A business stop, ORTHOGONAL to status: a held order keeps its lifecycle state and is refused at the guards. How far the hold reaches is the tenant's call (on_hold_blocks: shipping only, shipping and cancellation, or nothing at all).
  final bool? on_hold;

  /// Where the order stands in its LIFECYCLE, and one of three independent status dimensions. 'pending' = created but not placed, an order waiting for approval; 'placed' = accepted, nothing shipped; 'in_fulfillment' = part of it has gone out, or all of it has and the tenant does not close on shipment; 'completed' and 'cancelled' end it. Moved by the action routes only — it is not writable through PUT /orders/{id}.
  final enums.OrderStatus? status;

  OrderShippableOrder({
    this.fulfillment_status,
    this.hold_reason,
    this.id,
    this.number,
    this.on_hold,
    this.status,
  });

  factory OrderShippableOrder.fromMap(Map<String, dynamic> map) {
    return OrderShippableOrder(
      fulfillment_status: map['fulfillment_status'] != null
          ? enums.OrderFulfillmentStatus.values
              .firstWhere((e) => e.value == map['fulfillment_status'])
          : null,
      hold_reason: map['hold_reason']?.toString(),
      id: map['id']?.toString(),
      number: map['number']?.toString(),
      on_hold: map['on_hold'],
      status: map['status'] != null
          ? enums.OrderStatus.values.firstWhere((e) => e.value == map['status'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "fulfillment_status": fulfillment_status?.value,
      "hold_reason": hold_reason,
      "id": id,
      "number": number,
      "on_hold": on_hold,
      "status": status?.value,
    };
  }
}

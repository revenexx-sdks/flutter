part of '../../models.dart';

/// A position quantity to return — guarded against the shipped (not yet returned) quantity.
class OrderReturnPosition implements Model {
  /// The order item (position) to act on. Read the ids from GET /orders/{id} (items[].id) or GET /orders/{id}/shippable (positions[].order_item_id) — an id this order does not carry is a 400.
  final String order_item_id;

  /// Defaults to the full remaining quantity of the position.
  final double? quantity;

  /// Report this position for restocking when the return completes (the explicit inventories.restock call stays with the orchestrator).
  final bool? restock;

  OrderReturnPosition({
    required this.order_item_id,
    this.quantity,
    this.restock,
  });

  factory OrderReturnPosition.fromMap(Map<String, dynamic> map) {
    return OrderReturnPosition(
      order_item_id: map['order_item_id'].toString(),
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

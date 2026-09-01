part of '../../models.dart';

/// A position quantity to ship — guarded against the open quantity.
class OrderShipmentPosition implements Model {
  /// The order item (position) to act on. Read the ids from GET /orders/{id} (items[].id) or GET /orders/{id}/shippable (positions[].order_item_id) — an id this order does not carry is a 400.
  final String order_item_id;

  /// Defaults to the full remaining quantity of the position.
  final double? quantity;

  OrderShipmentPosition({
    required this.order_item_id,
    this.quantity,
  });

  factory OrderShipmentPosition.fromMap(Map<String, dynamic> map) {
    return OrderShipmentPosition(
      order_item_id: map['order_item_id'].toString(),
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

part of '../../models.dart';

/// One line of a delivery note: how much of one order position went out in one shipment.
class OrderShipmentItem implements Model {
  /// When the booking was written.
  final String? created_at;

  /// Primary key of the booked position line.
  final String? id;

  /// Which order position went out. Always a position of the same order as the shipment.
  final String? order_item_id;

  /// How much of that position this shipment carried. The sum of these over all shipments is the position's quantity_shipped.
  final double? quantity;

  /// The shipment this booking belongs to. Deleting the shipment deletes it.
  final String? shipment_id;

  OrderShipmentItem({
    this.created_at,
    this.id,
    this.order_item_id,
    this.quantity,
    this.shipment_id,
  });

  factory OrderShipmentItem.fromMap(Map<String, dynamic> map) {
    return OrderShipmentItem(
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      order_item_id: map['order_item_id']?.toString(),
      quantity: map['quantity']?.toDouble(),
      shipment_id: map['shipment_id']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "created_at": created_at,
      "id": id,
      "order_item_id": order_item_id,
      "quantity": quantity,
      "shipment_id": shipment_id,
    };
  }
}

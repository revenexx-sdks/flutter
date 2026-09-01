part of '../../models.dart';

/// One item and its SIGNED correction: 'product_id' or 'sku', plus a non-zero delta.
class InventoryAdjustItem implements Model {
  /// The product to move, as the products app knows it. Give this OR `sku` — an item that names neither is answered 400. Matching is exact: a stock row keyed by SKU is not found by product id.
  final String? product_id;

  /// The SIGNED correction to `on_hand`: −3 writes off three, +3 finds three. It is a delta, not the new balance. Zero is refused (400) because a correction of nothing is a mistake, not a booking — the rule is the handler's, not a database CHECK, which is why it is stated here rather than declared as a bound.
  final double quantity;

  /// The article number to move, when the item has no product id. Give this OR `product_id`.
  final String? sku;

  InventoryAdjustItem({
    this.product_id,
    required this.quantity,
    this.sku,
  });

  factory InventoryAdjustItem.fromMap(Map<String, dynamic> map) {
    return InventoryAdjustItem(
      product_id: map['product_id']?.toString(),
      quantity: map['quantity'].toDouble(),
      sku: map['sku']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "product_id": product_id,
      "quantity": quantity,
      "sku": sku,
    };
  }
}

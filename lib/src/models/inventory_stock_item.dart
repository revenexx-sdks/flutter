part of '../../models.dart';

/// One item and how much of it: 'product_id' or 'sku', plus a positive quantity.
class InventoryStockItem implements Model {
  /// The product to move, as the products app knows it. Give this OR `sku` — an item that names neither is answered 400. Matching is exact: a stock row keyed by SKU is not found by product id.
  final String? product_id;

  /// How many units this booking moves. Always POSITIVE here — the direction is the route (receive adds, reserve holds, restock returns), not the sign. Zero or a negative number is answered 400; a signed correction is what POST /inventories/adjust is for.
  final double quantity;

  /// The article number to move, when the item has no product id. Give this OR `product_id`.
  final String? sku;

  InventoryStockItem({
    this.product_id,
    required this.quantity,
    this.sku,
  });

  factory InventoryStockItem.fromMap(Map<String, dynamic> map) {
    return InventoryStockItem(
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

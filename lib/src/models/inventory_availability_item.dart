part of '../../models.dart';

/// One item to check: 'product_id' or 'sku'. Checking is free of consequence — it books nothing and holds nothing.
class InventoryAvailabilityItem implements Model {
  /// The product to move, as the products app knows it. Give this OR `sku` — an item that names neither is answered 400. Matching is exact: a stock row keyed by SKU is not found by product id.
  final String? product_id;

  /// How many are wanted. It only decides `orderable`; the on_hand / reserved / available figures come back whatever it is. Omit it (or send null) to ask "is this sellable at all?", which is a check against 1.
  final double? quantity;

  /// The article number to move, when the item has no product id. Give this OR `product_id`.
  final String? sku;

  InventoryAvailabilityItem({
    this.product_id,
    this.quantity,
    this.sku,
  });

  factory InventoryAvailabilityItem.fromMap(Map<String, dynamic> map) {
    return InventoryAvailabilityItem(
      product_id: map['product_id']?.toString(),
      quantity: map['quantity']?.toDouble(),
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

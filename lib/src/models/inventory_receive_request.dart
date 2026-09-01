part of '../../models.dart';

///
class InventoryReceiveRequest implements Model {
  /// The goods that arrived, at most 200 in one call — a delivery, a production batch, an opening balance.
  final List<InventoryStockItem>? items;

  /// Which location took the delivery. Omitted, the `default_location_code` setting decides; a code no location carries is answered 400 rather than booked somewhere else.
  final String? location_code;

  /// Inline single-item form: the product to move, instead of a one-entry `items` array. The two forms are equivalent — nothing downstream knows which arrived.
  final String? product_id;

  /// Inline single-item form: how many arrived. Positive.
  final double? quantity;

  /// What the ledger should record about this receipt — a delivery note number, a production order. Owed only when `movement_reason_required` is 'all'; the contract does not require it, because whether it is owed is the tenant's setting and not this route's rule.
  final String? reason;

  /// Inline single-item form: the article number to move (instead of `product_id`).
  final String? sku;

  InventoryReceiveRequest({
    this.items,
    this.location_code,
    this.product_id,
    this.quantity,
    this.reason,
    this.sku,
  });

  factory InventoryReceiveRequest.fromMap(Map<String, dynamic> map) {
    return InventoryReceiveRequest(
      items: map['items'] != null
          ? List<InventoryStockItem>.from(
              map['items'].map((p) => InventoryStockItem.fromMap(p)))
          : null,
      location_code: map['location_code']?.toString(),
      product_id: map['product_id']?.toString(),
      quantity: map['quantity']?.toDouble(),
      reason: map['reason']?.toString(),
      sku: map['sku']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "items": items?.map((p) => p.toMap()).toList(),
      "location_code": location_code,
      "product_id": product_id,
      "quantity": quantity,
      "reason": reason,
      "sku": sku,
    };
  }
}

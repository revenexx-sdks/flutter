part of '../../models.dart';

///
class InventoryAdjustRequest implements Model {
  /// The corrections, at most 200 in one call — a stocktake, breakage, shrinkage. Quantities are SIGNED deltas, not new balances.
  final List<InventoryAdjustItem>? items;

  /// Which location is being corrected. Omitted, the `default_location_code` setting decides. A correction is per location: the same SKU in two warehouses is two corrections.
  final String? location_code;

  /// Inline single-item form: the product to move, instead of a one-entry `items` array. The two forms are equivalent — nothing downstream knows which arrived.
  final String? product_id;

  /// Inline single-item form: the SIGNED correction (negative writes stock off, positive finds it). Non-zero.
  final double? quantity;

  /// Why the stock is being corrected — this is the audit trail a stocktake leaves behind. Owed unless `movement_reason_required` is 'none' (its default, 'adjustments', asks for one exactly here); missing where it is owed, the call is 400.
  final String? reason;

  /// Inline single-item form: the article number to move (instead of `product_id`).
  final String? sku;

  InventoryAdjustRequest({
    this.items,
    this.location_code,
    this.product_id,
    this.quantity,
    this.reason,
    this.sku,
  });

  factory InventoryAdjustRequest.fromMap(Map<String, dynamic> map) {
    return InventoryAdjustRequest(
      items: map['items'] != null
          ? List<InventoryAdjustItem>.from(
              map['items'].map((p) => InventoryAdjustItem.fromMap(p)))
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

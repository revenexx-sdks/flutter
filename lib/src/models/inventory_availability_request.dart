part of '../../models.dart';

/// 
class InventoryAvailabilityRequest implements Model {
    /// The items to check, at most 200 in one call. A cart, a category page, a feed row — one call answers them all, which is why this route is the batch one.
    final List<InventoryAvailabilityItem>? items;

    /// Restrict the check to ONE location, by its code — the stock a click-and-collect store can promise today. Omitted, every ENABLED location is summed; a disabled one is never counted either way.
    final String? location_code;

    /// Inline single-item form: the product to move, instead of a one-entry `items` array. The two forms are equivalent — nothing downstream knows which arrived.
    final String? product_id;

    /// Inline single-item form: how many are wanted (default 1). It decides `orderable` and nothing else.
    final double? quantity;

    /// Inline single-item form: the article number to move (instead of `product_id`).
    final String? sku;

    InventoryAvailabilityRequest({
        this.items,
        this.location_code,
        this.product_id,
        this.quantity,
        this.sku,
    });

    factory InventoryAvailabilityRequest.fromMap(Map<String, dynamic> map) {
        return InventoryAvailabilityRequest(
            items: map['items'] != null ? List<InventoryAvailabilityItem>.from(map['items'].map((p) => InventoryAvailabilityItem.fromMap(p))) : null,
            location_code: map['location_code']?.toString(),
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
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
            "sku": sku,
        };
    }
}

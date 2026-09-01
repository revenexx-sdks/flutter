part of '../../models.dart';

/// 
class InventoryRestockRequest implements Model {
    /// The goods that came back, at most 200 in one call. Whether they rejoin sellable stock is `restock`, not this list.
    final List<InventoryStockItem>? items;

    /// Where the goods came back to — a returns warehouse is a location like any other. Omitted, the `default_location_code` setting decides.
    final String? location_code;

    /// The order the goods came back from. It is written onto the ledger booking, so the return shows up in that order's stock history next to its reserve and shipment — no reservation is touched by it.
    final String? order_ref;

    /// Inline single-item form: the product to move, instead of a one-entry `items` array. The two forms are equivalent — nothing downstream knows which arrived.
    final String? product_id;

    /// Inline single-item form: how many came back. Positive.
    final double? quantity;

    /// Why the goods came back — 'wrong size', 'damaged on arrival'. Owed only when `movement_reason_required` is 'all'.
    final String? reason;

    /// Do these goods rejoin SELLABLE stock? A merchant decision, not a fact: apparel usually restocks, hygiene articles never do, many merchants inspect first. Omit it to follow the `restock_on_return_default` setting. `false` answers `restocked: false`, moves nothing and books NOTHING — there is no movement to write, because no stock moved, and that is the branch that makes this route a 200 while its sibling `receive` is a 201.
    final bool? restock;

    /// Inline single-item form: the article number to move (instead of `product_id`).
    final String? sku;

    InventoryRestockRequest({
        this.items,
        this.location_code,
        this.order_ref,
        this.product_id,
        this.quantity,
        this.reason,
        this.restock,
        this.sku,
    });

    factory InventoryRestockRequest.fromMap(Map<String, dynamic> map) {
        return InventoryRestockRequest(
            items: map['items'] != null ? List<InventoryStockItem>.from(map['items'].map((p) => InventoryStockItem.fromMap(p))) : null,
            location_code: map['location_code']?.toString(),
            order_ref: map['order_ref']?.toString(),
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            reason: map['reason']?.toString(),
            restock: map['restock'],
            sku: map['sku']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "items": items?.map((p) => p.toMap()).toList(),
            "location_code": location_code,
            "order_ref": order_ref,
            "product_id": product_id,
            "quantity": quantity,
            "reason": reason,
            "restock": restock,
            "sku": sku,
        };
    }
}

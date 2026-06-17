part of '../../models.dart';

/// 
class InventoryRestockRequest implements Model {
    /// The returned items (at most 200).
    final List<InventoryStockItem> items;

    /// Restocking location (default &#039;main&#039;).
    final String? location_code;

    /// Originating order (ledger reference).
    final String? order_ref;

    /// Ledger note (e.g. return reason).
    final String? reason;

    InventoryRestockRequest({
        required this.items,
        this.location_code,
        this.order_ref,
        this.reason,
    });

    factory InventoryRestockRequest.fromMap(Map<String, dynamic> map) {
        return InventoryRestockRequest(
            items: List<InventoryStockItem>.from(map['items'].map((p) => InventoryStockItem.fromMap(p))),
            location_code: map['location_code']?.toString(),
            order_ref: map['order_ref']?.toString(),
            reason: map['reason']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "items": items.map((p) => p.toMap()).toList(),
            "location_code": location_code,
            "order_ref": order_ref,
            "reason": reason,
        };
    }
}

part of '../../models.dart';

/// 
class InventoryReserveRequest implements Model {
    /// Optional reservation expiry.
    final String? expires_at;

    /// The items to reserve — all-or-nothing (at most 200).
    final List<InventoryStockItem> items;

    /// The order this reservation belongs to.
    final String order_ref;

    InventoryReserveRequest({
        this.expires_at,
        required this.items,
        required this.order_ref,
    });

    factory InventoryReserveRequest.fromMap(Map<String, dynamic> map) {
        return InventoryReserveRequest(
            expires_at: map['expires_at']?.toString(),
            items: List<InventoryStockItem>.from(map['items'].map((p) => InventoryStockItem.fromMap(p))),
            order_ref: map['order_ref'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "expires_at": expires_at,
            "items": items.map((p) => p.toMap()).toList(),
            "order_ref": order_ref,
        };
    }
}

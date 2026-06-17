part of '../../models.dart';

/// 
class InventoryReceiveRequest implements Model {
    /// The inbound items (at most 200).
    final List<InventoryStockItem> items;

    /// Receiving location (default &#039;main&#039;).
    final String? location_code;

    /// Ledger note (e.g. delivery note number).
    final String? reason;

    InventoryReceiveRequest({
        required this.items,
        this.location_code,
        this.reason,
    });

    factory InventoryReceiveRequest.fromMap(Map<String, dynamic> map) {
        return InventoryReceiveRequest(
            items: List<InventoryStockItem>.from(map['items'].map((p) => InventoryStockItem.fromMap(p))),
            location_code: map['location_code']?.toString(),
            reason: map['reason']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "items": items.map((p) => p.toMap()).toList(),
            "location_code": location_code,
            "reason": reason,
        };
    }
}

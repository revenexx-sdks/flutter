part of '../../models.dart';

/// 
class InventoryAdjustRequest implements Model {
    /// The corrections — quantities are SIGNED deltas (at most 200).
    final List<InventoryAdjustItem> items;

    /// Adjusted location (default &#039;main&#039;).
    final String? location_code;

    /// Mandatory audit reason — every adjustment is a ledger row.
    final String reason;

    InventoryAdjustRequest({
        required this.items,
        this.location_code,
        required this.reason,
    });

    factory InventoryAdjustRequest.fromMap(Map<String, dynamic> map) {
        return InventoryAdjustRequest(
            items: List<InventoryAdjustItem>.from(map['items'].map((p) => InventoryAdjustItem.fromMap(p))),
            location_code: map['location_code']?.toString(),
            reason: map['reason'].toString(),
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

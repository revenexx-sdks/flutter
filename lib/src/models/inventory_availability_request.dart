part of '../../models.dart';

/// 
class InventoryAvailabilityRequest implements Model {
    /// The items to check (batch, at most 200).
    final List<InventoryAvailabilityItem> items;

    /// Restrict the check to one location (default: all enabled locations).
    final String? location_code;

    InventoryAvailabilityRequest({
        required this.items,
        this.location_code,
    });

    factory InventoryAvailabilityRequest.fromMap(Map<String, dynamic> map) {
        return InventoryAvailabilityRequest(
            items: List<InventoryAvailabilityItem>.from(map['items'].map((p) => InventoryAvailabilityItem.fromMap(p))),
            location_code: map['location_code']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "items": items.map((p) => p.toMap()).toList(),
            "location_code": location_code,
        };
    }
}

part of '../../models.dart';

/// Where the order is going. Read ONLY when the tenant's `allocation_strategy` is 'nearest' — under 'priority' or 'single_location' it is accepted and ignored, so sending it is never wrong, it is just not always heard.
class InventoryShipTo implements Model {
    /// ISO country code of the delivery address. Locations whose `address.country` matches are tried before the rest, which is what stops a German order pulling from an overseas warehouse that merely sorts first.
    final String? country;

    /// Prefer this location above everything else — a click-and-collect store the customer picked. It is a preference, not a demand: if it cannot cover the item the allocator moves on to the next location.
    final String? location_code;

    InventoryShipTo({
        this.country,
        this.location_code,
    });

    factory InventoryShipTo.fromMap(Map<String, dynamic> map) {
        return InventoryShipTo(
            country: map['country']?.toString(),
            location_code: map['location_code']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "country": country,
            "location_code": location_code,
        };
    }
}

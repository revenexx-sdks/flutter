part of '../../models.dart';

/// 
class ItemAvailability implements Model {
    /// 
    final double? available;

    /// 
    final List<Map>? locations;

    /// 
    final double? on_hand;

    /// 
    final bool? orderable;

    /// 
    final String? product_id;

    /// 
    final double? requested;

    /// 
    final double? reserved;

    /// 
    final String? sku;

    /// false = unknown to inventory; the storefront decides whether untracked items sell freely.
    final bool? tracked;

    ItemAvailability({
        this.available,
        this.locations,
        this.on_hand,
        this.orderable,
        this.product_id,
        this.requested,
        this.reserved,
        this.sku,
        this.tracked,
    });

    factory ItemAvailability.fromMap(Map<String, dynamic> map) {
        return ItemAvailability(
            available: map['available']?.toDouble(),
            locations: List.from(map['locations'] ?? []),
            on_hand: map['on_hand']?.toDouble(),
            orderable: map['orderable'],
            product_id: map['product_id']?.toString(),
            requested: map['requested']?.toDouble(),
            reserved: map['reserved']?.toDouble(),
            sku: map['sku']?.toString(),
            tracked: map['tracked'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "available": available,
            "locations": locations,
            "on_hand": on_hand,
            "orderable": orderable,
            "product_id": product_id,
            "requested": requested,
            "reserved": reserved,
            "sku": sku,
            "tracked": tracked,
        };
    }
}

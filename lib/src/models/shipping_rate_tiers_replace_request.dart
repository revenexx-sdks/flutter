part of '../../models.dart';

/// 
class ShippingRateTiersReplaceRequest implements Model {
    /// The complete new tier set (set semantics) — positions are derived from the array order.
    final List<ShippingRateTierReplaceItem> tiers;

    ShippingRateTiersReplaceRequest({
        required this.tiers,
    });

    factory ShippingRateTiersReplaceRequest.fromMap(Map<String, dynamic> map) {
        return ShippingRateTiersReplaceRequest(
            tiers: List<ShippingRateTierReplaceItem>.from(map['tiers'].map((p) => ShippingRateTierReplaceItem.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "tiers": tiers.map((p) => p.toMap()).toList(),
        };
    }
}

part of '../../models.dart';

/// A matrix tier of the new set (from_value → price) — null falls back to 0, position derives from the array order.
class ShippingRateTierReplaceItem implements Model {
    /// Tier threshold (default 0) — the tier with the highest from_value at or below the measured value wins.
    final double? from_value;

    /// Ignored — derived from the array index.
    final int? position;

    /// Price of this tier (default 0).
    final double? price;

    ShippingRateTierReplaceItem({
        this.from_value,
        this.position,
        this.price,
    });

    factory ShippingRateTierReplaceItem.fromMap(Map<String, dynamic> map) {
        return ShippingRateTierReplaceItem(
            from_value: map['from_value']?.toDouble(),
            position: map['position'],
            price: map['price']?.toDouble(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "from_value": from_value,
            "position": position,
            "price": price,
        };
    }
}

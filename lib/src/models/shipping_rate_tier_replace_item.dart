part of '../../models.dart';

/// A matrix tier of the new set (from_value → price) — null falls back to 0, position derives from the array order.
class ShippingRateTierReplaceItem implements Model {
    /// Lower bound of this tier, in the method's matrix measure — kilograms (or whatever the market's `weight_unit` names, converted through its factor) for a weight matrix, items for quantity, money in the method's currency for order_value, and the raw attribute value for 'attribute'. INCLUSIVE: the tier applies from this value upward, and the tier that wins is the one with the highest from_value at or below the measured value, so a measure of exactly 10 is priced by the tier at 10 rather than the one below it. The last tier has no upper bound. Unique per method — a second tier at the same threshold is a 409, because which of the two won would be whatever the database returned first. Null falls back to 0.
    final double? from_value;

    /// Ignored — derived from the array index.
    final int? position;

    /// What this tier costs, in the method's currency. Charged in full for the whole consignment — a matrix is a lookup table, not a rate per unit. Null falls back to 0.
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

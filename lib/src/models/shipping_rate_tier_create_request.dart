part of '../../models.dart';

/// A new matrix tier (from_value → price) of the method in the path.
class ShippingRateTierCreateRequest implements Model {
    /// Tier threshold (default 0) — the tier with the highest from_value at or below the measured value wins.
    final double? from_value;

    /// Sort order (default 0; bulk replace derives it from the array index).
    final int? position;

    /// Price of this tier (default 0).
    final double? price;

    ShippingRateTierCreateRequest({
        this.from_value,
        this.position,
        this.price,
    });

    factory ShippingRateTierCreateRequest.fromMap(Map<String, dynamic> map) {
        return ShippingRateTierCreateRequest(
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

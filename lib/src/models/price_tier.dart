part of '../../models.dart';

/// One rung of the winning list’s quantity ladder for this item.
class PriceTier implements Model {
  /// The quantity this rung applies from. The rung with the highest `quantity_min` at or below the requested quantity is the one `unit_price` on the item was taken from.
  final double? quantity_min;

  /// Unit of measure the rung’s price is per. Absent when the entry names none.
  final String? unit;

  /// The rung’s price for ONE unit, in the answer’s `currency` and on the item’s `tax_basis` — decimal major units, exactly as stored. Tiers are NOT tax-adjusted: only the chosen price gets `unit_price_net`/`unit_price_gross`.
  final double? unit_price;

  PriceTier({
    this.quantity_min,
    this.unit,
    this.unit_price,
  });

  factory PriceTier.fromMap(Map<String, dynamic> map) {
    return PriceTier(
      quantity_min: map['quantity_min']?.toDouble(),
      unit: map['unit']?.toString(),
      unit_price: map['unit_price']?.toDouble(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "quantity_min": quantity_min,
      "unit": unit,
      "unit_price": unit_price,
    };
  }
}

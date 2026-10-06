part of '../../models.dart';

/// An evenly-stepped tier table. Tiers are generated at from_value, from_value+step, … up to to_value; each costs step_price more than the one before.
class ShippingRateTiersLadderRequest implements Model {
  /// Price of the first tier.
  final double base_price;

  /// First tier threshold (default 0), in the method's matrix measure.
  final double? from_value;

  /// Replace the whole table (default true) or append to it.
  final bool? replace;

  /// Distance between two tiers. Must be > 0.
  final double step;

  /// Added to each subsequent tier (default 0). A negative value is allowed as long as no tier ends up below 0.
  final double? step_price;

  /// Last tier threshold. The final tier keeps applying above it — a matrix has no upper bound. Must be >= from_value.
  final double to_value;

  ShippingRateTiersLadderRequest({
    required this.base_price,
    this.from_value,
    this.replace,
    required this.step,
    this.step_price,
    required this.to_value,
  });

  factory ShippingRateTiersLadderRequest.fromMap(Map<String, dynamic> map) {
    return ShippingRateTiersLadderRequest(
      base_price: map['base_price'].toDouble(),
      from_value: map['from_value']?.toDouble(),
      replace: map['replace'],
      step: map['step'].toDouble(),
      step_price: map['step_price']?.toDouble(),
      to_value: map['to_value'].toDouble(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "base_price": base_price,
      "from_value": from_value,
      "replace": replace,
      "step": step,
      "step_price": step_price,
      "to_value": to_value,
    };
  }
}

part of '../../models.dart';

/// How price_snapshot_mode settled the two prices every line carries.
class CartConversionPricing implements Model {
  /// Lines in the cart when it converted.
  final int? lines;

  /// Lines the mode had to rewrite because snapshot and unit_price disagreed — repriced in 'snapshot' mode, re-snapshotted in 'live' mode. A line whose snapshot carries no readable price is never touched in either mode.
  final int? lines_changed;

  /// The tenant's price_snapshot_mode, as it ran. 'snapshot' books the order on the price the buyer was shown; 'live' books it on the line's current unit_price and rewrites the snapshot to agree, so the frozen line never claims a price nobody was charged.
  final enums.CartPriceSnapshotMode? mode;

  /// The cart's frozen subtotal, and what the order is booked on.
  final double? subtotal_after;

  /// The cart's subtotal as it stood before the mode was applied. Compare it with subtotal_after and 'why is the order €4 off the cart' is answered by the response instead of by an argument.
  final double? subtotal_before;

  CartConversionPricing({
    this.lines,
    this.lines_changed,
    this.mode,
    this.subtotal_after,
    this.subtotal_before,
  });

  factory CartConversionPricing.fromMap(Map<String, dynamic> map) {
    return CartConversionPricing(
      lines: map['lines'],
      lines_changed: map['lines_changed'],
      mode: map['mode'] != null
          ? enums.CartPriceSnapshotMode.values
              .firstWhere((e) => e.value == map['mode'])
          : null,
      subtotal_after: map['subtotal_after']?.toDouble(),
      subtotal_before: map['subtotal_before']?.toDouble(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "lines": lines,
      "lines_changed": lines_changed,
      "mode": mode?.value,
      "subtotal_after": subtotal_after,
      "subtotal_before": subtotal_before,
    };
  }
}

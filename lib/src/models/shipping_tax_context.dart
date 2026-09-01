part of '../../models.dart';

/// Tax resolution status of this answer. resolved=false ⇒ tax_class/tax_rate are unknown, NOT zero.
class ShippingTaxContext implements Model {
  /// The market whose tax classes were applied.
  final String? market_id;

  /// Human-readable form of `reason`, safe to log or show an operator. One sentence per reason; the example is the `no_markets` wording.
  final String? message;

  /// Only when resolved=false — why no rate could be applied.
  final enums.ShippingTaxUnresolvedReason? reason;

  /// Whether a tax rate could be applied at all. FALSE means every rate's tax_class and tax_rate are UNKNOWN — not zero, and not tax-free. A checkout that adds 0 % on this is wrong; read `reason` and either ask for a market or refuse to quote.
  final bool? resolved;

  /// Where the market came from: 'request' (market_id), 'header' (x-revenexx-market), 'country' (the market matching the destination) or 'sole_market' (the tenant has exactly one).
  final enums.ShippingTaxMarketSource? source;

  /// Present when the market is known but registers no tax classes and the tenant's default_shipping_tax_rate supplied the number instead.
  final enums.ShippingTaxContextVia? via;

  ShippingTaxContext({
    this.market_id,
    this.message,
    this.reason,
    this.resolved,
    this.source,
    this.via,
  });

  factory ShippingTaxContext.fromMap(Map<String, dynamic> map) {
    return ShippingTaxContext(
      market_id: map['market_id']?.toString(),
      message: map['message']?.toString(),
      reason: map['reason'] != null
          ? enums.ShippingTaxUnresolvedReason.values
              .firstWhere((e) => e.value == map['reason'])
          : null,
      resolved: map['resolved'],
      source: map['source'] != null
          ? enums.ShippingTaxMarketSource.values
              .firstWhere((e) => e.value == map['source'])
          : null,
      via: map['via'] != null
          ? enums.ShippingTaxContextVia.values
              .firstWhere((e) => e.value == map['via'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "market_id": market_id,
      "message": message,
      "reason": reason?.value,
      "resolved": resolved,
      "source": source?.value,
      "via": via?.value,
    };
  }
}

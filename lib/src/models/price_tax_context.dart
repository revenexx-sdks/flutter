part of '../../models.dart';

/// Tax resolution status of this answer. resolved=false ⇒ tax_class/tax_rate are unknown, NOT zero.
class PriceTaxContext implements Model {
  /// The market whose tax classes were applied.
  final String? market_id;

  /// Human-readable form of `reason`, in English. Safe to log; not phrased for a buyer.
  final String? message;

  /// Only when resolved=false — why no rate could be applied.
  final enums.PriceTaxUnresolvedReason? reason;

  /// true ⇒ every priced item carries `tax_class`, `tax_rate`, `unit_price_net` and `unit_price_gross`. false ⇒ those are null because the rate could not be established — read `reason`, and never as "no tax due".
  final bool? resolved;

  /// Where the market came from: 'request' (market_id), 'header' (x-revenexx-market) or 'sole_market' (the tenant has exactly one).
  final enums.PriceTaxMarketSource? source;

  PriceTaxContext({
    this.market_id,
    this.message,
    this.reason,
    this.resolved,
    this.source,
  });

  factory PriceTaxContext.fromMap(Map<String, dynamic> map) {
    return PriceTaxContext(
      market_id: map['market_id']?.toString(),
      message: map['message']?.toString(),
      reason: map['reason'] != null
          ? enums.PriceTaxUnresolvedReason.values
              .firstWhere((e) => e.value == map['reason'])
          : null,
      resolved: map['resolved'],
      source: map['source'] != null
          ? enums.PriceTaxMarketSource.values
              .firstWhere((e) => e.value == map['source'])
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
    };
  }
}

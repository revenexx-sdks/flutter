part of '../../models.dart';

/// One answer per requested item, in request order, plus the currency, the tax context and the policy the numbers were computed under.
class PriceResolveResponse implements Model {
  /// The policy this answer was computed under — the tenant settings in force plus where the currency came from.
  final PriceResolveBasis? basis;

  /// ISO 4217 currency the whole answer is quoted in, and the currency lists had to match to be candidates at all. `basis.currency_source` says where it came from: the request, the buyer market, the tenant setting, or the shipped fallback.
  final String? currency;

  /// One entry per requested item, in the order the items were sent. An item that could not be priced is present and `on_request`, never missing.
  final List<ResolvedPrice>? prices;

  /// Tax resolution status of this answer. resolved=false ⇒ tax_class/tax_rate are unknown, NOT zero.
  final PriceTaxContext? tax;

  PriceResolveResponse({
    this.basis,
    this.currency,
    this.prices,
    this.tax,
  });

  factory PriceResolveResponse.fromMap(Map<String, dynamic> map) {
    return PriceResolveResponse(
      basis:
          map['basis'] != null ? PriceResolveBasis.fromMap(map['basis']) : null,
      currency: map['currency']?.toString(),
      prices: map['prices'] != null
          ? List<ResolvedPrice>.from(
              map['prices'].map((p) => ResolvedPrice.fromMap(p)))
          : null,
      tax: map['tax'] != null ? PriceTaxContext.fromMap(map['tax']) : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "basis": basis?.toMap(),
      "currency": currency,
      "prices": prices?.map((p) => p.toMap()).toList(),
      "tax": tax?.toMap(),
    };
  }
}

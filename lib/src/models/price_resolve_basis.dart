part of '../../models.dart';

/// The policy this answer was computed under — the tenant settings in force plus where the currency came from.
class PriceResolveBasis implements Model {
  /// false ⇒ a buyer with no contact/organization is answered on_request for everything.
  final bool? anonymous_resolve_allowed;

  /// Where `currency` came from: the request, the buyer market's own currency, the tenant's default_currency setting, or the shipped fallback.
  final enums.PriceCurrencySource? currency_source;

  /// The instant validity windows were evaluated at.
  final String? evaluated_at;

  /// Which list won where specificity and priority tied.
  final enums.PriceListTiebreak? price_list_priority_tiebreak;

  /// Decimals every DERIVED amount (net, gross, line totals) was rounded to.
  final int? price_precision;

  /// How those amounts landed on the last decimal.
  final enums.PriceRoundingMode? rounding_mode;

  /// Tenant setting: the basis a price list that states none is read on.
  final enums.PriceTaxInclusiveDefault? tax_inclusive_default;

  PriceResolveBasis({
    this.anonymous_resolve_allowed,
    this.currency_source,
    this.evaluated_at,
    this.price_list_priority_tiebreak,
    this.price_precision,
    this.rounding_mode,
    this.tax_inclusive_default,
  });

  factory PriceResolveBasis.fromMap(Map<String, dynamic> map) {
    return PriceResolveBasis(
      anonymous_resolve_allowed: map['anonymous_resolve_allowed'],
      currency_source: map['currency_source'] != null
          ? enums.PriceCurrencySource.values
              .firstWhere((e) => e.value == map['currency_source'])
          : null,
      evaluated_at: map['evaluated_at']?.toString(),
      price_list_priority_tiebreak: map['price_list_priority_tiebreak'] != null
          ? enums.PriceListTiebreak.values
              .firstWhere((e) => e.value == map['price_list_priority_tiebreak'])
          : null,
      price_precision: map['price_precision'],
      rounding_mode: map['rounding_mode'] != null
          ? enums.PriceRoundingMode.values
              .firstWhere((e) => e.value == map['rounding_mode'])
          : null,
      tax_inclusive_default: map['tax_inclusive_default'] != null
          ? enums.PriceTaxInclusiveDefault.values
              .firstWhere((e) => e.value == map['tax_inclusive_default'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "anonymous_resolve_allowed": anonymous_resolve_allowed,
      "currency_source": currency_source?.value,
      "evaluated_at": evaluated_at,
      "price_list_priority_tiebreak": price_list_priority_tiebreak?.value,
      "price_precision": price_precision,
      "rounding_mode": rounding_mode?.value,
      "tax_inclusive_default": tax_inclusive_default?.value,
    };
  }
}

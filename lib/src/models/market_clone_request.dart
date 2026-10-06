part of '../../models.dart';

/// The path id is the SOURCE market (a uuid or a market code). Everything the new market does not inherit is here. The copy flags default to true; `is_default` is never copied, and the new market always gets its own base currency registered and marked default.
class MarketCloneRequest implements Model {
  /// Code of the NEW market (unique per tenant).
  final String code;

  /// Copy the source's traded currencies. Default true. The new market's own base currency is registered and marked default either way.
  final bool? copy_currencies;

  /// Copy the source's locales. Default true. False leaves the new market with no language of its own, so the tenant fallback_locale is seeded instead — it is never left with none.
  final bool? copy_locales;

  /// Copy the source's tax classes, rates and all. Default true. False leaves the market unable to tax anything, which readiness reports as blocking.
  final bool? copy_tax_classes;

  /// Base currency of the new market (ISO 4217). Defaults to the source market's, and is registered and marked default on the new one either way.
  final String? currency;

  /// Display name of the new market. Defaults to its code.
  final String? name;

  /// Status of the new market. Defaults to 'active'; clone it 'inactive' to build it out before it serves anyone.
  final enums.MarketStatus? status;

  MarketCloneRequest({
    required this.code,
    this.copy_currencies,
    this.copy_locales,
    this.copy_tax_classes,
    this.currency,
    this.name,
    this.status,
  });

  factory MarketCloneRequest.fromMap(Map<String, dynamic> map) {
    return MarketCloneRequest(
      code: map['code'].toString(),
      copy_currencies: map['copy_currencies'],
      copy_locales: map['copy_locales'],
      copy_tax_classes: map['copy_tax_classes'],
      currency: map['currency']?.toString(),
      name: map['name']?.toString(),
      status: map['status'] != null
          ? enums.MarketStatus.values
              .firstWhere((e) => e.value == map['status'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "copy_currencies": copy_currencies,
      "copy_locales": copy_locales,
      "copy_tax_classes": copy_tax_classes,
      "currency": currency,
      "name": name,
      "status": status?.value,
    };
  }
}

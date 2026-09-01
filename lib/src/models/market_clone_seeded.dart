part of '../../models.dart';

/// Rows this call added that were copied from nowhere, because the new market would otherwise have been left unable to trade: the tenant `fallback_locale` when neither market had a locale, and the base currency when it is not in the copied set. Zero on both is the normal, healthy answer — it means nothing had to be invented.
class MarketCloneSeeded implements Model {
    /// 1 when the market's own base currency was registered because the copied set did not contain it; 0 otherwise.
    final int? currencies;

    /// 1 when the tenant's fallback_locale was written as this market's only locale, marked default; 0 otherwise.
    final int? locales;

    MarketCloneSeeded({
        this.currencies,
        this.locales,
    });

    factory MarketCloneSeeded.fromMap(Map<String, dynamic> map) {
        return MarketCloneSeeded(
            currencies: map['currencies'],
            locales: map['locales'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "currencies": currencies,
            "locales": locales,
        };
    }
}

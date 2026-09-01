part of '../../models.dart';

/// How much of a market this market actually is. All three at zero is a market that is a row and nothing else — the state two of the three live markets on the platform were left in, and the reason /clone and /backfill exist.
class MarketReadinessCounts implements Model {
    /// Traded currencies registered on this market.
    final int? currencies;

    /// Locales registered on this market.
    final int? locales;

    /// Tax classes registered on this market.
    final int? tax_classes;

    MarketReadinessCounts({
        this.currencies,
        this.locales,
        this.tax_classes,
    });

    factory MarketReadinessCounts.fromMap(Map<String, dynamic> map) {
        return MarketReadinessCounts(
            currencies: map['currencies'],
            locales: map['locales'],
            tax_classes: map['tax_classes'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "currencies": currencies,
            "locales": locales,
            "tax_classes": tax_classes,
        };
    }
}

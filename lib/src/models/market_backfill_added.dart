part of '../../models.dart';

/// Child rows copied in from the source, per collection — only codes this market did not already carry. Zero everywhere on a second run: the call is idempotent.
class MarketBackfillAdded implements Model {
    /// Traded currencies added from the source market.
    final int? currencies;

    /// Locales added from the source market.
    final int? locales;

    /// Tax classes added from the source market.
    final int? tax_classes;

    MarketBackfillAdded({
        this.currencies,
        this.locales,
        this.tax_classes,
    });

    factory MarketBackfillAdded.fromMap(Map<String, dynamic> map) {
        return MarketBackfillAdded(
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

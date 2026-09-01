part of '../../models.dart';

/// What this market already held BEFORE the repair, per collection — the rows that were left exactly as the merchant left them.
class MarketBackfillKept implements Model {
    /// Traded currencies this market already held, untouched.
    final int? currencies;

    /// Locales this market already held, untouched.
    final int? locales;

    /// Tax classes this market already held, untouched.
    final int? tax_classes;

    MarketBackfillKept({
        this.currencies,
        this.locales,
        this.tax_classes,
    });

    factory MarketBackfillKept.fromMap(Map<String, dynamic> map) {
        return MarketBackfillKept(
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

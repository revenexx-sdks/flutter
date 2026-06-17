part of '../../models.dart';

/// 
class MarketContext implements Model {
    /// 
    final List<MarketCurrency>? currencies;

    /// 
    final List<MarketLocale>? locales;

    /// 
    final Market? market;

    /// 
    final List<MarketTaxClass>? tax_classes;

    MarketContext({
        this.currencies,
        this.locales,
        this.market,
        this.tax_classes,
    });

    factory MarketContext.fromMap(Map<String, dynamic> map) {
        return MarketContext(
            currencies: List<MarketCurrency>.from(map['currencies'].map((p) => MarketCurrency.fromMap(p))),
            locales: List<MarketLocale>.from(map['locales'].map((p) => MarketLocale.fromMap(p))),
            market: Market.fromMap(map['market']),
            tax_classes: List<MarketTaxClass>.from(map['tax_classes'].map((p) => MarketTaxClass.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "currencies": currencies.map((p) => p.toMap()).toList(),
            "locales": locales.map((p) => p.toMap()).toList(),
            "market": market.toMap(),
            "tax_classes": tax_classes.map((p) => p.toMap()).toList(),
        };
    }
}

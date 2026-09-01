part of '../../models.dart';

/// Whether a stored price in this market is NET or GROSS — the market layer of an answer the prices app also holds. A price list's own tax_basis wins over this; `tax_basis: null` with `source: 'unset'` means this market declares nothing and the reader must fall through to the tenant's own default.
class MarketPricing implements Model {
    /// The raw `prices_include_tax` setting resolved for this market. Null means the market declares nothing — it is NOT a false, and turning it into one is the bug this key exists to prevent.
    final bool? prices_include_tax;

    /// Where the value came from. 'market' — configured on this market. 'tenant' — the market holds no value of its own and the tenant baseline answered. 'unset' — nothing is configured anywhere in this app, and the reader must fall through to the prices app's tax_inclusive_default.
    final enums.MarketPricingSource? source;

    /// The same answer in the prices app's own vocabulary, so the two halves of the platform use one word: 'gross' means a stored price already contains tax, 'net' means tax is added on top. Null means fall through to the tenant's own default.
    final enums.MarketTaxBasis? tax_basis;

    MarketPricing({
        this.prices_include_tax,
        this.source,
        this.tax_basis,
    });

    factory MarketPricing.fromMap(Map<String, dynamic> map) {
        return MarketPricing(
            prices_include_tax: map['prices_include_tax'],
            source: map['source'] != null ? enums.MarketPricingSource.values.firstWhere((e) => e.value == map['source']) : null,
            tax_basis: map['tax_basis'] != null ? enums.MarketTaxBasis.values.firstWhere((e) => e.value == map['tax_basis']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "prices_include_tax": prices_include_tax,
            "source": source?.value,
            "tax_basis": tax_basis?.value,
        };
    }
}

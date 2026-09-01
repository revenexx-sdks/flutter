part of '../../models.dart';

/// The whole of one market: the row, its three collections, and the four resolved answers a client would otherwise have to work out for itself.
class MarketContext implements Model {
    /// Every currency this market trades in, in position order. Capped at 200. The market's own base currency should be among them; readiness reports it as blocking when it is not.
    final List<MarketCurrency>? currencies;

    /// The locale a storefront should render this market in. `source` names where it came from: 'market' (a locale flagged is_default), 'market_first' (no flag — first by position) or 'tenant_fallback' (the market registers none; the tenant's fallback_locale setting answered).
    final MarketDefaultLocale? default_locale;

    /// How this tenant keys its translations, resolved rather than named: the key a client WRITES and the order it READS, per locale. Emitting the resolved answer is the point — a client handed only the setting names re-implements the policy and gets it subtly different, which is how a label editor came to ask for de-DE while the row held de.
    final MarketLocalePolicy? locale_policy;

    /// Every locale this market registers, in position order. Capped at 200. Empty is a real answer — read `default_locale` before assuming a language.
    final List<MarketLocale>? locales;

    /// A distinct business context within a tenant — a country, a region, or a storefront segment such as B2C vs B2B — with its own base currency, locales, traded currencies and tax classes. A market is also the platform's `market` SCOPE dimension: every other commerce app slices its data by one, keyed on this row's `code`. A market is never just this row: it needs at least one locale, one currency and one tax class before it can serve, which is what /readiness measures and what /clone and /backfill build.
    final Market? market;

    /// Whether a stored price in this market is NET or GROSS — the market layer of an answer the prices app also holds. A price list's own tax_basis wins over this; `tax_basis: null` with `source: 'unset'` means this market declares nothing and the reader must fall through to the tenant's own default.
    final MarketPricing? pricing;

    /// Can this market actually trade? `ready` is false only when a BLOCKING check failed — no currency to quote in, no tax class to tax with. Warnings are degraded-but-serviceable.
    final MarketReadiness? readiness;

    /// Every tax class of this market with its rate, in position order. Capped at 200. This is the rate table other apps resolve a line against, by code.
    final List<MarketTaxClass>? tax_classes;

    MarketContext({
        this.currencies,
        this.default_locale,
        this.locale_policy,
        this.locales,
        this.market,
        this.pricing,
        this.readiness,
        this.tax_classes,
    });

    factory MarketContext.fromMap(Map<String, dynamic> map) {
        return MarketContext(
            currencies: map['currencies'] != null ? List<MarketCurrency>.from(map['currencies'].map((p) => MarketCurrency.fromMap(p))) : null,
            default_locale: map['default_locale'] != null ? MarketDefaultLocale.fromMap(map['default_locale']) : null,
            locale_policy: map['locale_policy'] != null ? MarketLocalePolicy.fromMap(map['locale_policy']) : null,
            locales: map['locales'] != null ? List<MarketLocale>.from(map['locales'].map((p) => MarketLocale.fromMap(p))) : null,
            market: map['market'] != null ? Market.fromMap(map['market']) : null,
            pricing: map['pricing'] != null ? MarketPricing.fromMap(map['pricing']) : null,
            readiness: map['readiness'] != null ? MarketReadiness.fromMap(map['readiness']) : null,
            tax_classes: map['tax_classes'] != null ? List<MarketTaxClass>.from(map['tax_classes'].map((p) => MarketTaxClass.fromMap(p))) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "currencies": currencies?.map((p) => p.toMap()).toList(),
            "default_locale": default_locale?.toMap(),
            "locale_policy": locale_policy?.toMap(),
            "locales": locales?.map((p) => p.toMap()).toList(),
            "market": market?.toMap(),
            "pricing": pricing?.toMap(),
            "readiness": readiness?.toMap(),
            "tax_classes": tax_classes?.map((p) => p.toMap()).toList(),
        };
    }
}

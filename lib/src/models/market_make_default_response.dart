part of '../../models.dart';

/// The market as it now stands, plus what had to move out of its way.
class MarketMakeDefaultResponse implements Model {
    /// Codes of the markets that lost the flag. Empty when this market already held it — the call is idempotent and writes nothing on a repeat, so an empty array is a success, not a no-op that failed.
    final List<String>? demoted;

    /// A distinct business context within a tenant — a country, a region, or a storefront segment such as B2C vs B2B — with its own base currency, locales, traded currencies and tax classes. A market is also the platform's `market` SCOPE dimension: every other commerce app slices its data by one, keyed on this row's `code`. A market is never just this row: it needs at least one locale, one currency and one tax class before it can serve, which is what /readiness measures and what /clone and /backfill build.
    final Market? market;

    MarketMakeDefaultResponse({
        this.demoted,
        this.market,
    });

    factory MarketMakeDefaultResponse.fromMap(Map<String, dynamic> map) {
        return MarketMakeDefaultResponse(
            demoted: List.from(map['demoted'] ?? []),
            market: map['market'] != null ? Market.fromMap(map['market']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "demoted": demoted,
            "market": market?.toMap(),
        };
    }
}

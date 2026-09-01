part of '../../models.dart';

/// What the repair changed. `kept` + `added` + `seeded` is what the market now holds, and separating them is the point: it shows that nothing the merchant had already decided was touched.
class MarketBackfillResult implements Model {
  /// Child rows copied in from the source, per collection — only codes this market did not already carry. Zero everywhere on a second run: the call is idempotent.
  final MarketBackfillAdded? added;

  /// What this market already held BEFORE the repair, per collection — the rows that were left exactly as the merchant left them.
  final MarketBackfillKept? kept;

  /// A distinct business context within a tenant — a country, a region, or a storefront segment such as B2C vs B2B — with its own base currency, locales, traded currencies and tax classes. A market is also the platform's `market` SCOPE dimension: every other commerce app slices its data by one, keyed on this row's `code`. A market is never just this row: it needs at least one locale, one currency and one tax class before it can serve, which is what /readiness measures and what /clone and /backfill build.
  final Market? market;

  /// Can this market actually trade? `ready` is false only when a BLOCKING check failed — no currency to quote in, no tax class to tax with. Warnings are degraded-but-serviceable.
  final MarketReadiness? readiness;

  /// Rows this call added that were copied from nowhere, because the new market would otherwise have been left unable to trade: the tenant `fallback_locale` when neither market had a locale, and the base currency when it is not in the copied set. Zero on both is the normal, healthy answer — it means nothing had to be invented.
  final MarketBackfillSeeded? seeded;

  /// The market that was read from, resolved — so a caller who passed a code back gets the uuid, and one who passed a uuid gets the code the rest of the platform stores.
  final MarketRef? source;

  MarketBackfillResult({
    this.added,
    this.kept,
    this.market,
    this.readiness,
    this.seeded,
    this.source,
  });

  factory MarketBackfillResult.fromMap(Map<String, dynamic> map) {
    return MarketBackfillResult(
      added: map['added'] != null
          ? MarketBackfillAdded.fromMap(map['added'])
          : null,
      kept:
          map['kept'] != null ? MarketBackfillKept.fromMap(map['kept']) : null,
      market: map['market'] != null ? Market.fromMap(map['market']) : null,
      readiness: map['readiness'] != null
          ? MarketReadiness.fromMap(map['readiness'])
          : null,
      seeded: map['seeded'] != null
          ? MarketBackfillSeeded.fromMap(map['seeded'])
          : null,
      source: map['source'] != null ? MarketRef.fromMap(map['source']) : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "added": added?.toMap(),
      "kept": kept?.toMap(),
      "market": market?.toMap(),
      "readiness": readiness?.toMap(),
      "seeded": seeded?.toMap(),
      "source": source?.toMap(),
    };
  }
}

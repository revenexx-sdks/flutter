part of '../../models.dart';

/// Can this market actually trade? `ready` is false only when a BLOCKING check failed — no currency to quote in, no tax class to tax with. Warnings are degraded-but-serviceable. The market it is about, what it is made of, and the verdict — the readiness block is inlined here rather than nested, so this is MarketReadiness plus two keys.
class MarketReadinessReport implements Model {
    /// Ids of the checks that failed BLOCKING — the market cannot do the job at all until each is fixed. Empty exactly when `ready` is true.
    final List<String>? blocking;

    /// Every check that ran, passed or failed, in a fixed order: locales, currencies, tax_classes, tax_basis. `blocking` and `warnings` are the failures from this list by id; this is where the reason lives.
    final List<MarketReadinessCheck>? checks;

    /// How much of a market this market actually is. All three at zero is a market that is a row and nothing else — the state two of the three live markets on the platform were left in, and the reason /clone and /backfill exist.
    final MarketReadinessCounts? counts;

    /// The market the verdict is about, identified rather than returned in full — the five columns a reader needs to know which market answered. Read GET /markets/{id} for the rest.
    final MarketReadinessSubject? market;

    /// `blocking` is empty. Deliberately not "every check passed": a market with one locale and no default flag on it is serviceable, and a verdict that cried wolf about that would be ignored on the day it mattered.
    final bool? ready;

    /// true when the market's status is 'active'. An active market that is not ready is live and broken — that combination is the one worth an alert.
    final bool? serving;

    /// Ids of the checks that failed as WARNINGS — degraded but serviceable, because something else covers for them. A missing locale is only a warning while the tenant declares a fallback_locale.
    final List<String>? warnings;

    MarketReadinessReport({
        this.blocking,
        this.checks,
        this.counts,
        this.market,
        this.ready,
        this.serving,
        this.warnings,
    });

    factory MarketReadinessReport.fromMap(Map<String, dynamic> map) {
        return MarketReadinessReport(
            blocking: List.from(map['blocking'] ?? []),
            checks: map['checks'] != null ? List<MarketReadinessCheck>.from(map['checks'].map((p) => MarketReadinessCheck.fromMap(p))) : null,
            counts: map['counts'] != null ? MarketReadinessCounts.fromMap(map['counts']) : null,
            market: map['market'] != null ? MarketReadinessSubject.fromMap(map['market']) : null,
            ready: map['ready'],
            serving: map['serving'],
            warnings: List.from(map['warnings'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "blocking": blocking,
            "checks": checks?.map((p) => p.toMap()).toList(),
            "counts": counts?.toMap(),
            "market": market?.toMap(),
            "ready": ready,
            "serving": serving,
            "warnings": warnings,
        };
    }
}

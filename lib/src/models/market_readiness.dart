part of '../../models.dart';

/// Can this market actually trade? `ready` is false only when a BLOCKING check failed — no currency to quote in, no tax class to tax with. Warnings are degraded-but-serviceable.
class MarketReadiness implements Model {
  /// Ids of the checks that failed BLOCKING — the market cannot do the job at all until each is fixed. Empty exactly when `ready` is true.
  final List<String>? blocking;

  /// Every check that ran, passed or failed, in a fixed order: locales, currencies, tax_classes, tax_basis. `blocking` and `warnings` are the failures from this list by id; this is where the reason lives.
  final List<MarketReadinessCheck>? checks;

  /// `blocking` is empty. Deliberately not "every check passed": a market with one locale and no default flag on it is serviceable, and a verdict that cried wolf about that would be ignored on the day it mattered.
  final bool? ready;

  /// true when the market's status is 'active'. An active market that is not ready is live and broken — that combination is the one worth an alert.
  final bool? serving;

  /// Ids of the checks that failed as WARNINGS — degraded but serviceable, because something else covers for them. A missing locale is only a warning while the tenant declares a fallback_locale.
  final List<String>? warnings;

  MarketReadiness({
    this.blocking,
    this.checks,
    this.ready,
    this.serving,
    this.warnings,
  });

  factory MarketReadiness.fromMap(Map<String, dynamic> map) {
    return MarketReadiness(
      blocking: List.from(map['blocking'] ?? []),
      checks: map['checks'] != null
          ? List<MarketReadinessCheck>.from(
              map['checks'].map((p) => MarketReadinessCheck.fromMap(p)))
          : null,
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
      "ready": ready,
      "serving": serving,
      "warnings": warnings,
    };
  }
}

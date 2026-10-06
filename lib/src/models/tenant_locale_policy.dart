part of '../../models.dart';

/// How this tenant keys its translations, resolved rather than named: the key a client WRITES and the order it READS, per locale. Emitting the resolved answer is the point — a client handed only the setting names re-implements the policy and gets it subtly different, which is how a label editor came to ask for de-DE while the row held de.
class TenantLocalePolicy implements Model {
  /// settings#locale_fallback — what a read tries after the exact key holds nothing.
  final enums.MarketLocaleFallback? fallback;

  /// settings#locale_granularity — whether a value is keyed by the full locale ('regional') or by its language alone.
  final enums.MarketLocaleGranularity? granularity;

  /// The UNION of every market's locales, each one appearing once — the full set of inputs a tenant-baseline editor has to offer. Empty when no market registers a locale at all.
  final List<TenantLocaleKeys>? locales;

  TenantLocalePolicy({
    this.fallback,
    this.granularity,
    this.locales,
  });

  factory TenantLocalePolicy.fromMap(Map<String, dynamic> map) {
    return TenantLocalePolicy(
      fallback: map['fallback'] != null
          ? enums.MarketLocaleFallback.values
              .firstWhere((e) => e.value == map['fallback'])
          : null,
      granularity: map['granularity'] != null
          ? enums.MarketLocaleGranularity.values
              .firstWhere((e) => e.value == map['granularity'])
          : null,
      locales: map['locales'] != null
          ? List<TenantLocaleKeys>.from(
              map['locales'].map((p) => TenantLocaleKeys.fromMap(p)))
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "fallback": fallback?.value,
      "granularity": granularity?.value,
      "locales": locales?.map((p) => p.toMap()).toList(),
    };
  }
}

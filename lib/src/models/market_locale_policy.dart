part of '../../models.dart';

/// How this tenant keys its translations, resolved rather than named: the key a client WRITES and the order it READS, per locale. Emitting the resolved answer is the point — a client handed only the setting names re-implements the policy and gets it subtly different, which is how a label editor came to ask for de-DE while the row held de.
class MarketLocalePolicy implements Model {
    /// settings#locale_fallback — what a read tries after the exact key holds nothing.
    final enums.MarketLocaleFallback? fallback;

    /// settings#locale_granularity — whether a value is keyed by the full locale ('regional') or by its language alone.
    final enums.MarketLocaleGranularity? granularity;

    /// One entry per locale this market registers, in position order — the keys to use for that locale. A market with no locale of its own has an empty array here, not the fallback: the fallback answers `default_locale`, and there is nothing to key against.
    final List<MarketLocaleKeys>? locales;

    MarketLocalePolicy({
        this.fallback,
        this.granularity,
        this.locales,
    });

    factory MarketLocalePolicy.fromMap(Map<String, dynamic> map) {
        return MarketLocalePolicy(
            fallback: map['fallback'] != null ? enums.MarketLocaleFallback.values.firstWhere((e) => e.value == map['fallback']) : null,
            granularity: map['granularity'] != null ? enums.MarketLocaleGranularity.values.firstWhere((e) => e.value == map['granularity']) : null,
            locales: map['locales'] != null ? List<MarketLocaleKeys>.from(map['locales'].map((p) => MarketLocaleKeys.fromMap(p))) : null,
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

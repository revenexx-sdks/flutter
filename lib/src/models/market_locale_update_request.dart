part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class MarketLocaleUpdateRequest implements Model {
    /// Locale code, language-COUNTRY — the language a storefront renders this market in, and the key a translation is stored under. Unique per market. The app's own seeded value is the tenant's `fallback_locale` setting, whose declared default is de-DE.
    final String? code;

    /// ISO 3166-1 alpha-2 country code — the region half of `code`. It is a spelling of the language, not a shipping destination: a market may register de-AT without trading in Austria.
    final String? country;

    /// The locale a storefront renders this market in when the request asks for none. At most one per market; where none carries the flag the first by position is used, and `default_locale.source` on the context says which of the two happened.
    final bool? is_default;

    /// ISO 639-1 language code — the language half of `code`, stored separately so a client can group markets by language without parsing.
    final String? language;

    /// Sort position among this market's locales, ascending, default 0 — and the tie-break that picks a default when no locale is flagged.
    final int? position;

    MarketLocaleUpdateRequest({
        this.code,
        this.country,
        this.is_default,
        this.language,
        this.position,
    });

    factory MarketLocaleUpdateRequest.fromMap(Map<String, dynamic> map) {
        return MarketLocaleUpdateRequest(
            code: map['code']?.toString(),
            country: map['country']?.toString(),
            is_default: map['is_default'],
            language: map['language']?.toString(),
            position: map['position'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "country": country,
            "is_default": is_default,
            "language": language,
            "position": position,
        };
    }
}

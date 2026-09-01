part of '../../models.dart';

/// One language a market is rendered in, and one key its translations are stored under. A market may register several; one of them is the default a storefront falls back to.
class MarketLocale implements Model {
  /// Locale code, language-COUNTRY — the language a storefront renders this market in, and the key a translation is stored under. Unique per market. The app's own seeded value is the tenant's `fallback_locale` setting, whose declared default is de-DE.
  final String? code;

  /// ISO 3166-1 alpha-2 country code — the region half of `code`. It is a spelling of the language, not a shipping destination: a market may register de-AT without trading in Austria.
  final String? country;

  /// When the locale was registered on this market. Set by the database; never writable.
  final String? created_at;

  /// Primary key of this locale registration. The locale is named by `code` everywhere else.
  final String? id;

  /// The locale a storefront renders this market in when the request asks for none. At most one per market; where none carries the flag the first by position is used, and `default_locale.source` on the context says which of the two happened.
  final bool? is_default;

  /// ISO 639-1 language code — the language half of `code`, stored separately so a client can group markets by language without parsing.
  final String? language;

  /// The market this locale belongs to. Filled from the route path on write and never read out of the body; ON DELETE CASCADE, so deleting the market deletes this row.
  final String? market_id;

  /// Sort position among this market's locales, ascending, default 0 — and the tie-break that picks a default when no locale is flagged.
  final int? position;

  MarketLocale({
    this.code,
    this.country,
    this.created_at,
    this.id,
    this.is_default,
    this.language,
    this.market_id,
    this.position,
  });

  factory MarketLocale.fromMap(Map<String, dynamic> map) {
    return MarketLocale(
      code: map['code']?.toString(),
      country: map['country']?.toString(),
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      is_default: map['is_default'],
      language: map['language']?.toString(),
      market_id: map['market_id']?.toString(),
      position: map['position'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "country": country,
      "created_at": created_at,
      "id": id,
      "is_default": is_default,
      "language": language,
      "market_id": market_id,
      "position": position,
    };
  }
}

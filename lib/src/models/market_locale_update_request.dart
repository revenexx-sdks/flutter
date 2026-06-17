part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class MarketLocaleUpdateRequest implements Model {
    /// Locale code, e.g. &#039;de-DE&#039; (unique per market).
    final String? code;

    /// ISO 3166-1 alpha-2 country code.
    final String? country;

    /// 
    final bool? is_default;

    /// ISO 639-1 language code.
    final String? language;

    /// Sort position (default 0).
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

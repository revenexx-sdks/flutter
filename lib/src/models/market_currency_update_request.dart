part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class MarketCurrencyUpdateRequest implements Model {
    /// ISO 4217 code, e.g. EUR (unique per market).
    final String? code;

    /// 
    final bool? is_default;

    /// Sort position (default 0).
    final int? position;

    MarketCurrencyUpdateRequest({
        this.code,
        this.is_default,
        this.position,
    });

    factory MarketCurrencyUpdateRequest.fromMap(Map<String, dynamic> map) {
        return MarketCurrencyUpdateRequest(
            code: map['code']?.toString(),
            is_default: map['is_default'],
            position: map['position'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "is_default": is_default,
            "position": position,
        };
    }
}

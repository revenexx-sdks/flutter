part of '../../models.dart';

/// The owning market comes from the route path (&#039;market_id&#039;).
class MarketCurrencyCreateRequest implements Model {
    /// ISO 4217 code, e.g. EUR (unique per market).
    final String code;

    /// 
    final bool? is_default;

    /// Sort position (default 0).
    final int? position;

    MarketCurrencyCreateRequest({
        required this.code,
        this.is_default,
        this.position,
    });

    factory MarketCurrencyCreateRequest.fromMap(Map<String, dynamic> map) {
        return MarketCurrencyCreateRequest(
            code: map['code'].toString(),
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

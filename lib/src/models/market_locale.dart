part of '../../models.dart';

/// 
class MarketLocale implements Model {
    /// 
    final String? code;

    /// 
    final String? country;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final bool? is_default;

    /// 
    final String? language;

    /// 
    final String? market_id;

    /// 
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

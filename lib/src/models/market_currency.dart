part of '../../models.dart';

/// 
class MarketCurrency implements Model {
    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final bool? is_default;

    /// 
    final String? market_id;

    /// 
    final int? position;

    MarketCurrency({
        this.code,
        this.created_at,
        this.id,
        this.is_default,
        this.market_id,
        this.position,
    });

    factory MarketCurrency.fromMap(Map<String, dynamic> map) {
        return MarketCurrency(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            is_default: map['is_default'],
            market_id: map['market_id']?.toString(),
            position: map['position'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "created_at": created_at,
            "id": id,
            "is_default": is_default,
            "market_id": market_id,
            "position": position,
        };
    }
}

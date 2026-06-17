part of '../../models.dart';

/// 
class MarketTaxClass implements Model {
    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final bool? is_default;

    /// 
    final Map? labels;

    /// 
    final String? market_id;

    /// 
    final String? name;

    /// 
    final int? position;

    /// 
    final double? rate;

    /// 
    final String? updated_at;

    MarketTaxClass({
        this.code,
        this.created_at,
        this.id,
        this.is_default,
        this.labels,
        this.market_id,
        this.name,
        this.position,
        this.rate,
        this.updated_at,
    });

    factory MarketTaxClass.fromMap(Map<String, dynamic> map) {
        return MarketTaxClass(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            is_default: map['is_default'],
            labels: map['labels'],
            market_id: map['market_id']?.toString(),
            name: map['name']?.toString(),
            position: map['position'],
            rate: map['rate']?.toDouble(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "created_at": created_at,
            "id": id,
            "is_default": is_default,
            "labels": labels,
            "market_id": market_id,
            "name": name,
            "position": position,
            "rate": rate,
            "updated_at": updated_at,
        };
    }
}

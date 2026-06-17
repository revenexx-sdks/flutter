part of '../../models.dart';

/// 
class ShippingRateTier implements Model {
    /// 
    final String? created_at;

    /// 
    final double? from_value;

    /// 
    final String? id;

    /// 
    final String? method_id;

    /// 
    final int? position;

    /// 
    final double? price;

    /// 
    final String? updated_at;

    ShippingRateTier({
        this.created_at,
        this.from_value,
        this.id,
        this.method_id,
        this.position,
        this.price,
        this.updated_at,
    });

    factory ShippingRateTier.fromMap(Map<String, dynamic> map) {
        return ShippingRateTier(
            created_at: map['created_at']?.toString(),
            from_value: map['from_value']?.toDouble(),
            id: map['id']?.toString(),
            method_id: map['method_id']?.toString(),
            position: map['position'],
            price: map['price']?.toDouble(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "from_value": from_value,
            "id": id,
            "method_id": method_id,
            "position": position,
            "price": price,
            "updated_at": updated_at,
        };
    }
}

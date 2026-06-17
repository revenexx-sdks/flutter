part of '../../models.dart';

/// 
class StockLevel implements Model {
    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final String? location_id;

    /// 
    final Map? metadata;

    /// 
    final double? on_hand;

    /// 
    final String? product_id;

    /// 
    final double? reorder_point;

    /// 
    final double? reserved;

    /// 
    final String? sku;

    /// 
    final String? updated_at;

    StockLevel({
        this.created_at,
        this.id,
        this.location_id,
        this.metadata,
        this.on_hand,
        this.product_id,
        this.reorder_point,
        this.reserved,
        this.sku,
        this.updated_at,
    });

    factory StockLevel.fromMap(Map<String, dynamic> map) {
        return StockLevel(
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            location_id: map['location_id']?.toString(),
            metadata: map['metadata'],
            on_hand: map['on_hand']?.toDouble(),
            product_id: map['product_id']?.toString(),
            reorder_point: map['reorder_point']?.toDouble(),
            reserved: map['reserved']?.toDouble(),
            sku: map['sku']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "id": id,
            "location_id": location_id,
            "metadata": metadata,
            "on_hand": on_hand,
            "product_id": product_id,
            "reorder_point": reorder_point,
            "reserved": reserved,
            "sku": sku,
            "updated_at": updated_at,
        };
    }
}

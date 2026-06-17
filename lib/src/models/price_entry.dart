part of '../../models.dart';

/// 
class PriceEntry implements Model {
    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final Map? metadata;

    /// 
    final String? price_list_id;

    /// 
    final String? price_type;

    /// 
    final String? product_id;

    /// 
    final double? quantity_min;

    /// 
    final String? sku;

    /// 
    final String? unit;

    /// 
    final double? unit_price;

    /// 
    final String? updated_at;

    /// 
    final String? valid_from;

    /// 
    final String? valid_until;

    PriceEntry({
        this.created_at,
        this.id,
        this.metadata,
        this.price_list_id,
        this.price_type,
        this.product_id,
        this.quantity_min,
        this.sku,
        this.unit,
        this.unit_price,
        this.updated_at,
        this.valid_from,
        this.valid_until,
    });

    factory PriceEntry.fromMap(Map<String, dynamic> map) {
        return PriceEntry(
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            metadata: map['metadata'],
            price_list_id: map['price_list_id']?.toString(),
            price_type: map['price_type']?.toString(),
            product_id: map['product_id']?.toString(),
            quantity_min: map['quantity_min']?.toDouble(),
            sku: map['sku']?.toString(),
            unit: map['unit']?.toString(),
            unit_price: map['unit_price']?.toDouble(),
            updated_at: map['updated_at']?.toString(),
            valid_from: map['valid_from']?.toString(),
            valid_until: map['valid_until']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "id": id,
            "metadata": metadata,
            "price_list_id": price_list_id,
            "price_type": price_type,
            "product_id": product_id,
            "quantity_min": quantity_min,
            "sku": sku,
            "unit": unit,
            "unit_price": unit_price,
            "updated_at": updated_at,
            "valid_from": valid_from,
            "valid_until": valid_until,
        };
    }
}

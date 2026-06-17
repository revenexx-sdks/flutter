part of '../../models.dart';

/// 
class CartItem implements Model {
    /// 
    final String? cart_id;

    /// 
    final Map? configuration;

    /// 
    final String? created_at;

    /// 
    final String? currency;

    /// 
    final String? id;

    /// 
    final double? line_total;

    /// 
    final Map? metadata;

    /// 
    final String? name;

    /// 
    final int? position;

    /// 
    final String? product_id;

    /// 
    final double? quantity;

    /// 
    final String? sku;

    /// 
    final Map? snapshot;

    /// 
    final double? tax_rate;

    /// 
    final String? type;

    /// 
    final String? unit;

    /// 
    final double? unit_price;

    /// 
    final String? updated_at;

    CartItem({
        this.cart_id,
        this.configuration,
        this.created_at,
        this.currency,
        this.id,
        this.line_total,
        this.metadata,
        this.name,
        this.position,
        this.product_id,
        this.quantity,
        this.sku,
        this.snapshot,
        this.tax_rate,
        this.type,
        this.unit,
        this.unit_price,
        this.updated_at,
    });

    factory CartItem.fromMap(Map<String, dynamic> map) {
        return CartItem(
            cart_id: map['cart_id']?.toString(),
            configuration: map['configuration'],
            created_at: map['created_at']?.toString(),
            currency: map['currency']?.toString(),
            id: map['id']?.toString(),
            line_total: map['line_total']?.toDouble(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
            position: map['position'],
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            sku: map['sku']?.toString(),
            snapshot: map['snapshot'],
            tax_rate: map['tax_rate']?.toDouble(),
            type: map['type']?.toString(),
            unit: map['unit']?.toString(),
            unit_price: map['unit_price']?.toDouble(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "cart_id": cart_id,
            "configuration": configuration,
            "created_at": created_at,
            "currency": currency,
            "id": id,
            "line_total": line_total,
            "metadata": metadata,
            "name": name,
            "position": position,
            "product_id": product_id,
            "quantity": quantity,
            "sku": sku,
            "snapshot": snapshot,
            "tax_rate": tax_rate,
            "type": type,
            "unit": unit,
            "unit_price": unit_price,
            "updated_at": updated_at,
        };
    }
}

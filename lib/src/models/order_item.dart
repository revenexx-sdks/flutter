part of '../../models.dart';

/// 
class OrderItem implements Model {
    /// 
    final Map? configuration;

    /// 
    final String? cost_center;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final double? line_total;

    /// 
    final Map? metadata;

    /// 
    final String? name;

    /// 
    final String? order_id;

    /// 
    final int? position;

    /// 
    final String? position_text;

    /// 
    final Map? product;

    /// 
    final String? product_id;

    /// 
    final double? quantity;

    /// 
    final double? quantity_cancelled;

    /// 
    final double? quantity_returned;

    /// 
    final double? quantity_shipped;

    /// 
    final String? sku;

    /// 
    final double? tax_amount;

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

    /// 
    final Map? user_data;

    OrderItem({
        this.configuration,
        this.cost_center,
        this.created_at,
        this.id,
        this.line_total,
        this.metadata,
        this.name,
        this.order_id,
        this.position,
        this.position_text,
        this.product,
        this.product_id,
        this.quantity,
        this.quantity_cancelled,
        this.quantity_returned,
        this.quantity_shipped,
        this.sku,
        this.tax_amount,
        this.tax_rate,
        this.type,
        this.unit,
        this.unit_price,
        this.updated_at,
        this.user_data,
    });

    factory OrderItem.fromMap(Map<String, dynamic> map) {
        return OrderItem(
            configuration: map['configuration'],
            cost_center: map['cost_center']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            line_total: map['line_total']?.toDouble(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
            order_id: map['order_id']?.toString(),
            position: map['position'],
            position_text: map['position_text']?.toString(),
            product: map['product'],
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            quantity_cancelled: map['quantity_cancelled']?.toDouble(),
            quantity_returned: map['quantity_returned']?.toDouble(),
            quantity_shipped: map['quantity_shipped']?.toDouble(),
            sku: map['sku']?.toString(),
            tax_amount: map['tax_amount']?.toDouble(),
            tax_rate: map['tax_rate']?.toDouble(),
            type: map['type']?.toString(),
            unit: map['unit']?.toString(),
            unit_price: map['unit_price']?.toDouble(),
            updated_at: map['updated_at']?.toString(),
            user_data: map['user_data'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "configuration": configuration,
            "cost_center": cost_center,
            "created_at": created_at,
            "id": id,
            "line_total": line_total,
            "metadata": metadata,
            "name": name,
            "order_id": order_id,
            "position": position,
            "position_text": position_text,
            "product": product,
            "product_id": product_id,
            "quantity": quantity,
            "quantity_cancelled": quantity_cancelled,
            "quantity_returned": quantity_returned,
            "quantity_shipped": quantity_shipped,
            "sku": sku,
            "tax_amount": tax_amount,
            "tax_rate": tax_rate,
            "type": type,
            "unit": unit,
            "unit_price": unit_price,
            "updated_at": updated_at,
            "user_data": user_data,
        };
    }
}

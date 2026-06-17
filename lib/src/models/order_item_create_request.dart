part of '../../models.dart';

/// A position of the placed order — needs an identity: &#039;name&#039; or &#039;sku&#039;. Items are SNAPSHOTS: carry the product copy, prices are frozen at place-time.
class OrderItemCreateRequest implements Model {
    /// Free-form configuration of configured lines.
    final Map? configuration;

    /// 
    final String? cost_center;

    /// Free-form metadata.
    final Map? metadata;

    /// Falls back to &#039;sku&#039; when omitted.
    final String? name;

    /// Explicit position number; otherwise numbered in steps of the order range&#039;s position_step.
    final int? position;

    /// 
    final String? position_text;

    /// Frozen product snapshot at place-time (&#039;snapshot&#039; is accepted as an alias).
    final Map? product;

    /// 
    final String? product_id;

    /// Default 1.
    final double? quantity;

    /// 
    final String? sku;

    /// Alias for &#039;product&#039;.
    final Map? snapshot;

    /// Derived from line_total and tax_rate when omitted.
    final double? tax_amount;

    /// Percent (default 0).
    final double? tax_rate;

    /// Line type (default &#039;product&#039;).
    final enums.OrderItemType? type;

    /// 
    final String? unit;

    /// Per-unit net price — line_total is always derived.
    final double? unit_price;

    /// Free-form user data.
    final Map? user_data;

    OrderItemCreateRequest({
        this.configuration,
        this.cost_center,
        this.metadata,
        this.name,
        this.position,
        this.position_text,
        this.product,
        this.product_id,
        this.quantity,
        this.sku,
        this.snapshot,
        this.tax_amount,
        this.tax_rate,
        this.type,
        this.unit,
        this.unit_price,
        this.user_data,
    });

    factory OrderItemCreateRequest.fromMap(Map<String, dynamic> map) {
        return OrderItemCreateRequest(
            configuration: map['configuration'],
            cost_center: map['cost_center']?.toString(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
            position: map['position'],
            position_text: map['position_text']?.toString(),
            product: map['product'],
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            sku: map['sku']?.toString(),
            snapshot: map['snapshot'],
            tax_amount: map['tax_amount']?.toDouble(),
            tax_rate: map['tax_rate']?.toDouble(),
            type: map['type'] != null ? enums.OrderItemType.values.firstWhere((e) => e.value == map['type']) : null,
            unit: map['unit']?.toString(),
            unit_price: map['unit_price']?.toDouble(),
            user_data: map['user_data'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "configuration": configuration,
            "cost_center": cost_center,
            "metadata": metadata,
            "name": name,
            "position": position,
            "position_text": position_text,
            "product": product,
            "product_id": product_id,
            "quantity": quantity,
            "sku": sku,
            "snapshot": snapshot,
            "tax_amount": tax_amount,
            "tax_rate": tax_rate,
            "type": type?.value,
            "unit": unit,
            "unit_price": unit_price,
            "user_data": user_data,
        };
    }
}

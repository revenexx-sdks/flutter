part of '../../models.dart';

/// An item needs an identity: &#039;name&#039; or &#039;sku&#039;.
class CartItemCreateRequest implements Model {
    /// Free-form configuration — configured lines never merge.
    final Map? configuration;

    /// Defaults to the cart&#039;s currency.
    final String? currency;

    /// Free-form metadata.
    final Map? metadata;

    /// Falls back to &#039;sku&#039; when omitted.
    final String? name;

    /// 
    final int? position;

    /// 
    final String? product_id;

    /// Default 1.
    final double? quantity;

    /// 
    final String? sku;

    /// Loose product snapshot at add-time (price, name, image, …).
    final Map? snapshot;

    /// 
    final double? tax_rate;

    /// Line type (default &#039;product&#039;). Plain product lines merge by product+price; configurations always stand alone.
    final enums.CartItemType? type;

    /// 
    final String? unit;

    /// Per-unit net price — line_total is always derived.
    final double? unit_price;

    CartItemCreateRequest({
        this.configuration,
        this.currency,
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
    });

    factory CartItemCreateRequest.fromMap(Map<String, dynamic> map) {
        return CartItemCreateRequest(
            configuration: map['configuration'],
            currency: map['currency']?.toString(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
            position: map['position'],
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            sku: map['sku']?.toString(),
            snapshot: map['snapshot'],
            tax_rate: map['tax_rate']?.toDouble(),
            type: map['type'] != null ? enums.CartItemType.values.firstWhere((e) => e.value == map['type']) : null,
            unit: map['unit']?.toString(),
            unit_price: map['unit_price']?.toDouble(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "configuration": configuration,
            "currency": currency,
            "metadata": metadata,
            "name": name,
            "position": position,
            "product_id": product_id,
            "quantity": quantity,
            "sku": sku,
            "snapshot": snapshot,
            "tax_rate": tax_rate,
            "type": type?.value,
            "unit": unit,
            "unit_price": unit_price,
        };
    }
}

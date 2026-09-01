part of '../../models.dart';

/// Identify by 'product_id' or 'sku' — an item without identity resolves to on_request with a per-item error rather than failing the call.
class PriceResolveItem implements Model {
    /// Product to price.
    final String? product_id;

    /// Requested quantity, counted in the entry’s `unit`. It picks the tier (the highest `quantity_min` at or below it) and multiplies into `line_total`. Default 1; a non-positive value falls back to 1.
    final double? quantity;

    /// SKU to price (alternative to product_id). Matched exactly against the entries’ own `sku`.
    final String? sku;

    PriceResolveItem({
        this.product_id,
        this.quantity,
        this.sku,
    });

    factory PriceResolveItem.fromMap(Map<String, dynamic> map) {
        return PriceResolveItem(
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            sku: map['sku']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "product_id": product_id,
            "quantity": quantity,
            "sku": sku,
        };
    }
}

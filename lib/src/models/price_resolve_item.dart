part of '../../models.dart';

/// Identify by &#039;product_id&#039; or &#039;sku&#039; — an item without identity resolves to on_request with a per-item error.
class PriceResolveItem implements Model {
    /// Product to price.
    final String? product_id;

    /// Requested quantity for tier selection and line_total (default 1; non-positive values fall back to 1).
    final double? quantity;

    /// SKU to price (alternative to product_id).
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

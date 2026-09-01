part of '../../models.dart';

/// One quantity to put back into stock, named the way the inventories app wants it: by product, by sku, and how much.
class OrderRestockPosition implements Model {
    /// The catalog product to restock. Null on a custom line, which is why `sku` is carried alongside it.
    final String? product_id;

    /// How much came back on this position, in the position's own unit.
    final double? quantity;

    /// The article number to restock — the key a warehouse actually books against.
    final String? sku;

    OrderRestockPosition({
        this.product_id,
        this.quantity,
        this.sku,
    });

    factory OrderRestockPosition.fromMap(Map<String, dynamic> map) {
        return OrderRestockPosition(
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

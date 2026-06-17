part of '../../models.dart';

/// An item and its SIGNED correction: &#039;product_id&#039; or &#039;sku&#039;.
class InventoryAdjustItem implements Model {
    /// 
    final String? product_id;

    /// Signed delta (±on_hand) — must be non-zero.
    final double quantity;

    /// 
    final String? sku;

    InventoryAdjustItem({
        this.product_id,
        required this.quantity,
        this.sku,
    });

    factory InventoryAdjustItem.fromMap(Map<String, dynamic> map) {
        return InventoryAdjustItem(
            product_id: map['product_id']?.toString(),
            quantity: map['quantity'].toDouble(),
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

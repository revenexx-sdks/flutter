part of '../../models.dart';

/// An item to check: &#039;product_id&#039; or &#039;sku&#039;.
class InventoryAvailabilityItem implements Model {
    /// 
    final String? product_id;

    /// Requested quantity for the orderable check (default 1).
    final double? quantity;

    /// 
    final String? sku;

    InventoryAvailabilityItem({
        this.product_id,
        this.quantity,
        this.sku,
    });

    factory InventoryAvailabilityItem.fromMap(Map<String, dynamic> map) {
        return InventoryAvailabilityItem(
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

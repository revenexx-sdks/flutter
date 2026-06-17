part of '../../models.dart';

/// An item and its quantity: &#039;product_id&#039; or &#039;sku&#039;.
class InventoryStockItem implements Model {
    /// 
    final String? product_id;

    /// 
    final double quantity;

    /// 
    final String? sku;

    InventoryStockItem({
        this.product_id,
        required this.quantity,
        this.sku,
    });

    factory InventoryStockItem.fromMap(Map<String, dynamic> map) {
        return InventoryStockItem(
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

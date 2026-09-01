part of '../../models.dart';

/// One entry, before and after — the row a confirmation dialog shows.
class PriceAdjustPreviewRow implements Model {
    /// The price entry this row is about.
    final String? id;

    /// After rounding and ending snapping, in the same currency and on the same basis. Never negative: below the lowest candidate ending it clamps to it.
    final double? new_unit_price;

    /// The product it prices — null when the entry is identified by SKU.
    final String? product_id;

    /// Which rung of the ladder this is.
    final double? quantity_min;

    /// The SKU it prices — null when the entry is identified by product id.
    final String? sku;

    /// Before the change, in the list’s currency and on its tax basis.
    final double? unit_price;

    PriceAdjustPreviewRow({
        this.id,
        this.new_unit_price,
        this.product_id,
        this.quantity_min,
        this.sku,
        this.unit_price,
    });

    factory PriceAdjustPreviewRow.fromMap(Map<String, dynamic> map) {
        return PriceAdjustPreviewRow(
            id: map['id']?.toString(),
            new_unit_price: map['new_unit_price']?.toDouble(),
            product_id: map['product_id']?.toString(),
            quantity_min: map['quantity_min']?.toDouble(),
            sku: map['sku']?.toString(),
            unit_price: map['unit_price']?.toDouble(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "id": id,
            "new_unit_price": new_unit_price,
            "product_id": product_id,
            "quantity_min": quantity_min,
            "sku": sku,
            "unit_price": unit_price,
        };
    }
}

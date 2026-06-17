part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class PriceEntryUpdateRequest implements Model {
    /// Free-form metadata.
    final Map? metadata;

    /// Default &#039;standard&#039;; &#039;on_request&#039; is the explicit no-price marker — it stops resolution and answers &quot;price on request&quot;.
    final enums.PriceEntryType? price_type;

    /// Priced product.
    final String? product_id;

    /// Tier threshold (Staffelpreis): this price applies from this quantity (default 1).
    final double? quantity_min;

    /// Priced SKU (alternative to product_id).
    final String? sku;

    /// 
    final String? unit;

    /// Per-unit price (default 0).
    final double? unit_price;

    /// Per-entry validity start (promo prices).
    final String? valid_from;

    /// Per-entry validity end.
    final String? valid_until;

    PriceEntryUpdateRequest({
        this.metadata,
        this.price_type,
        this.product_id,
        this.quantity_min,
        this.sku,
        this.unit,
        this.unit_price,
        this.valid_from,
        this.valid_until,
    });

    factory PriceEntryUpdateRequest.fromMap(Map<String, dynamic> map) {
        return PriceEntryUpdateRequest(
            metadata: map['metadata'],
            price_type: map['price_type'] != null ? enums.PriceEntryType.values.firstWhere((e) => e.value == map['price_type']) : null,
            product_id: map['product_id']?.toString(),
            quantity_min: map['quantity_min']?.toDouble(),
            sku: map['sku']?.toString(),
            unit: map['unit']?.toString(),
            unit_price: map['unit_price']?.toDouble(),
            valid_from: map['valid_from']?.toString(),
            valid_until: map['valid_until']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "metadata": metadata,
            "price_type": price_type?.value,
            "product_id": product_id,
            "quantity_min": quantity_min,
            "sku": sku,
            "unit": unit,
            "unit_price": unit_price,
            "valid_from": valid_from,
            "valid_until": valid_until,
        };
    }
}

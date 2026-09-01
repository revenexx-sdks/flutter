part of '../../models.dart';

/// An entry needs an identity: 'product_id' or 'sku'.
class PriceEntryCreateRequest implements Model {
    /// Free-form bag: whatever JSON object you write round-trips exactly, and this app never reads it. Its keys are yours.
    final Map<String, dynamic>? metadata;

    /// Default 'standard'; 'on_request' is the explicit no-price marker — it STOPS resolution for this item on this list and answers "price on request" even where a cheaper list exists.
    final enums.PriceEntryType? price_type;

    /// The product this rung prices. An entry needs product_id or sku — the row CHECK enforces it.
    final String? product_id;

    /// Tier threshold (Staffelpreis): this price applies from this quantity upwards (default 1). The rungs of one item are the entries sharing its identity; the highest threshold at or below the requested quantity wins.
    final double? quantity_min;

    /// The article number this rung prices (alternative to product_id). Matched exactly on resolve — never normalised or case-folded.
    final String? sku;

    /// Unit of measure the price is per — free text, neither validated nor converted here. A resolve call’s `quantity` is counted in it.
    final String? unit;

    /// Price for ONE unit of `unit`, in the LIST’s currency and on the LIST’s tax basis — a decimal amount in major units (19.90), never minor units/cents. Stored at 4 decimals and echoed back exactly as sent (default 0).
    final double? unit_price;

    /// Start of this entry’s own validity (ISO 8601) — how a promo price is expressed: a second rung, live only for its window. null = open-ended.
    final String? valid_from;

    /// End of this entry’s own validity; null = open-ended. Outside it the rung is skipped and the ladder resolves as if it were not there.
    final String? valid_until;

    PriceEntryCreateRequest({
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

    factory PriceEntryCreateRequest.fromMap(Map<String, dynamic> map) {
        return PriceEntryCreateRequest(
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

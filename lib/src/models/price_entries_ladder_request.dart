part of '../../models.dart';

/// The quantity ladder (Staffelpreise) for ONE item, generated instead of typed: a price at the first tier and a discount compounded per tier. Identify the item with 'product_id' or 'sku'.
class PriceEntriesLadderRequest implements Model {
    /// Price for ONE unit at the FIRST tier, in the list’s currency and on the list’s tax basis — a decimal amount in major units (19.90), never minor units/cents.
    final double base_price;

    /// Discount applied per tier, COMPOUNDED down the ladder rather than off the base price: 5 gives 19.90 / 18.91 / 17.96. Default 0.
    final double? discount_percent;

    /// The item the ladder prices.
    final String? product_id;

    /// Tier thresholds, ascending — an array of numbers or a comma-separated string ('1, 10, 50'). Duplicates are collapsed and the set is sorted. Default [1, 10, 50], at most 50 tiers.
    final List<double>? quantities;

    /// Default true: the item's existing entries in this list are removed first, so the ladder IS the ladder. false appends.
    final bool? replace;

    /// Ending the computed prices snap to (nearest match). Omit to use the tenant's bulk_adjust_rounding setting.
    final enums.PriceEndingRule? rounding;

    /// The item the ladder prices (alternative to product_id).
    final String? sku;

    /// Unit of measure carried onto every generated tier. Free text, neither validated nor converted.
    final String? unit;

    PriceEntriesLadderRequest({
        required this.base_price,
        this.discount_percent,
        this.product_id,
        this.quantities,
        this.replace,
        this.rounding,
        this.sku,
        this.unit,
    });

    factory PriceEntriesLadderRequest.fromMap(Map<String, dynamic> map) {
        return PriceEntriesLadderRequest(
            base_price: map['base_price'].toDouble(),
            discount_percent: map['discount_percent']?.toDouble(),
            product_id: map['product_id']?.toString(),
            quantities: List.from(map['quantities'] ?? []),
            replace: map['replace'],
            rounding: map['rounding'] != null ? enums.PriceEndingRule.values.firstWhere((e) => e.value == map['rounding']) : null,
            sku: map['sku']?.toString(),
            unit: map['unit']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "base_price": base_price,
            "discount_percent": discount_percent,
            "product_id": product_id,
            "quantities": quantities,
            "replace": replace,
            "rounding": rounding?.value,
            "sku": sku,
            "unit": unit,
        };
    }
}

part of '../../models.dart';

/// 
class ResolvedPrice implements Model {
    /// 
    final String? currency;

    /// 
    final double? line_total;

    /// true = no price for this buyer context — show &quot;price on request&quot;, never 0.
    final bool? on_request;

    /// 
    final Map? price_list;

    /// 
    final String? product_id;

    /// 
    final double? quantity;

    /// 
    final String? sku;

    /// Resolved tax class code (from the product, or the market default).
    final String? tax_class;

    /// 
    final bool? tax_included;

    /// Tax rate % from markets.tax_classes for this market + tax_class.
    final double? tax_rate;

    /// 
    final List<Map>? tiers;

    /// Stored price as-is (net or gross per tax_included). Prefer unit_price_net/unit_price_gross.
    final double? unit_price;

    /// Gross unit price (incl. tax).
    final double? unit_price_gross;

    /// Net unit price (excl. tax).
    final double? unit_price_net;

    ResolvedPrice({
        this.currency,
        this.line_total,
        this.on_request,
        this.price_list,
        this.product_id,
        this.quantity,
        this.sku,
        this.tax_class,
        this.tax_included,
        this.tax_rate,
        this.tiers,
        this.unit_price,
        this.unit_price_gross,
        this.unit_price_net,
    });

    factory ResolvedPrice.fromMap(Map<String, dynamic> map) {
        return ResolvedPrice(
            currency: map['currency']?.toString(),
            line_total: map['line_total']?.toDouble(),
            on_request: map['on_request'],
            price_list: map['price_list'],
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            sku: map['sku']?.toString(),
            tax_class: map['tax_class']?.toString(),
            tax_included: map['tax_included'],
            tax_rate: map['tax_rate']?.toDouble(),
            tiers: List.from(map['tiers'] ?? []),
            unit_price: map['unit_price']?.toDouble(),
            unit_price_gross: map['unit_price_gross']?.toDouble(),
            unit_price_net: map['unit_price_net']?.toDouble(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "currency": currency,
            "line_total": line_total,
            "on_request": on_request,
            "price_list": price_list,
            "product_id": product_id,
            "quantity": quantity,
            "sku": sku,
            "tax_class": tax_class,
            "tax_included": tax_included,
            "tax_rate": tax_rate,
            "tiers": tiers,
            "unit_price": unit_price,
            "unit_price_gross": unit_price_gross,
            "unit_price_net": unit_price_net,
        };
    }
}

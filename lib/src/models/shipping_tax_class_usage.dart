part of '../../models.dart';

/// What in this app still points at a market tax class, by code.
class ShippingTaxClassUsage implements Model {
    /// The tax-class code that was asked about, echoed back.
    final String? code;

    /// True when this market's shipping_tax_class setting names the code — the class every method that names none falls back to.
    final bool? fallback_setting;

    /// True when at least one method or the market fallback setting names it. The single field a caller deciding whether to allow a delete needs; the rest is so it can word the refusal.
    final bool? in_use;

    /// The first 20 of them, so a refusal can name names instead of a number.
    final List<Map>? methods;

    /// How many methods name this code as their own tax_class. Capped at 500 — a tenant with more shipping methods than that has a bigger problem than an imprecise count.
    final int? shipping_methods;

    ShippingTaxClassUsage({
        this.code,
        this.fallback_setting,
        this.in_use,
        this.methods,
        this.shipping_methods,
    });

    factory ShippingTaxClassUsage.fromMap(Map<String, dynamic> map) {
        return ShippingTaxClassUsage(
            code: map['code']?.toString(),
            fallback_setting: map['fallback_setting'],
            in_use: map['in_use'],
            methods: List.from(map['methods'] ?? []),
            shipping_methods: map['shipping_methods'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "fallback_setting": fallback_setting,
            "in_use": in_use,
            "methods": methods,
            "shipping_methods": shipping_methods,
        };
    }
}

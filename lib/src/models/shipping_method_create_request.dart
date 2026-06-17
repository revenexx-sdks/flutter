part of '../../models.dart';

/// A new shipping method — fixed, free or matrix pricing.
class ShippingMethodCreateRequest implements Model {
    /// Carrier anchor for the upcoming carrier connect (dynamic rates, tracking links).
    final String? carrier;

    /// Stable method code, unique per tenant (e.g. standard, express).
    final String code;

    /// Allowed ISO 3166-1 alpha-2 codes; null or empty = worldwide.
    final List<String>? countries;

    /// ISO 4217 code (default EUR).
    final String? currency;

    /// 
    final String? description;

    /// Only enabled methods appear in rate responses (default false).
    final bool? enabled;

    /// Delivery-time estimate for the checkout (days, upper bound).
    final int? eta_days_max;

    /// Delivery-time estimate for the checkout (days, lower bound).
    final int? eta_days_min;

    /// Free shipping at or above this order value — wins over every pricing model.
    final double? free_above;

    /// Localized display names keyed by locale (e.g. {de, en}).
    final Map? labels;

    /// Attribute name for matrix_basis &#039;attribute&#039;.
    final String? matrix_attribute;

    /// The measure a matrix method prices over; &#039;attribute&#039; reads matrix_attribute from the rate request.
    final enums.ShippingMethodMatrixBasis? matrix_basis;

    /// Free-form metadata.
    final Map? metadata;

    /// Display name.
    final String name;

    /// Sort order in the checkout (default 0).
    final int? position;

    /// The fixed price (default 0) — ignored for &#039;free&#039; and &#039;matrix&#039;.
    final double? price;

    /// Pricing model (default &#039;fixed&#039;): one price, no price, or tiered over a measure.
    final enums.ShippingMethodPricingType? pricing_type;

    ShippingMethodCreateRequest({
        this.carrier,
        required this.code,
        this.countries,
        this.currency,
        this.description,
        this.enabled,
        this.eta_days_max,
        this.eta_days_min,
        this.free_above,
        this.labels,
        this.matrix_attribute,
        this.matrix_basis,
        this.metadata,
        required this.name,
        this.position,
        this.price,
        this.pricing_type,
    });

    factory ShippingMethodCreateRequest.fromMap(Map<String, dynamic> map) {
        return ShippingMethodCreateRequest(
            carrier: map['carrier']?.toString(),
            code: map['code'].toString(),
            countries: List.from(map['countries'] ?? []),
            currency: map['currency']?.toString(),
            description: map['description']?.toString(),
            enabled: map['enabled'],
            eta_days_max: map['eta_days_max'],
            eta_days_min: map['eta_days_min'],
            free_above: map['free_above']?.toDouble(),
            labels: map['labels'],
            matrix_attribute: map['matrix_attribute']?.toString(),
            matrix_basis: map['matrix_basis'] != null ? enums.ShippingMethodMatrixBasis.values.firstWhere((e) => e.value == map['matrix_basis']) : null,
            metadata: map['metadata'],
            name: map['name'].toString(),
            position: map['position'],
            price: map['price']?.toDouble(),
            pricing_type: map['pricing_type'] != null ? enums.ShippingMethodPricingType.values.firstWhere((e) => e.value == map['pricing_type']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "carrier": carrier,
            "code": code,
            "countries": countries,
            "currency": currency,
            "description": description,
            "enabled": enabled,
            "eta_days_max": eta_days_max,
            "eta_days_min": eta_days_min,
            "free_above": free_above,
            "labels": labels,
            "matrix_attribute": matrix_attribute,
            "matrix_basis": matrix_basis?.value,
            "metadata": metadata,
            "name": name,
            "position": position,
            "price": price,
            "pricing_type": pricing_type?.value,
        };
    }
}

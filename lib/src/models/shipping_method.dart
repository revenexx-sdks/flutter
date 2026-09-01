part of '../../models.dart';

/// 
class ShippingMethod implements Model {
    /// Carrier CODE, kept from before shipping_carriers existed. Looked up in the carrier table when carrier_id is not set, so an existing value keeps working and gains a tracking template; a code nobody maintains is still reported as a plain name.
    final String? carrier;

    /// The carrier this method ships with. Wins over `carrier` and supplies the tracking template, pickup cut-off, handling time and transit days.
    final String? carrier_id;

    /// Stable method code, unique per tenant (e.g. standard, express). What a checkout and an order line store, so it is the value every integration joins on.
    final String? code;

    /// The countries this method may be offered into. ISO 3166-1 alpha-2 codes; null or an empty array means no restriction. Compared upper-cased, so a lower-case entry still matches. Declared as an array rather than the bare object a jsonb column derives to — this one is always a list.
    final List<String>? countries;

    /// When the row was created (UTC).
    final String? created_at;

    /// ISO 4217 code (default EUR). Exactly three characters — the column says so. Echoed into a rate, never converted: this app prices in the currency the method carries.
    final String? currency;

    /// The sentence under the name in the checkout — the delivery promise in words. Null when the name says enough.
    final String? description;

    /// Only enabled methods are ever quoted (default false); a disabled one is reported in `excluded` rather than hidden.
    final bool? enabled;

    /// Transit time upper bound in calendar days. Falls back to the carrier's when null.
    final int? eta_days_max;

    /// Transit time lower bound in calendar days, for the checkout. Falls back to the carrier's when null.
    final int? eta_days_min;

    /// Free shipping at or above this order value — wins over every pricing model, including a matrix. Compared net or gross as the market's free_above_compares setting declares. Null falls back to the tenant's shop-wide free_shipping_threshold.
    final double? free_above;

    /// Row id, assigned by the database on insert.
    final String? id;

    /// Localized display names. A flat map keyed by locale — the Cockpit falls back to `en`. Null means the row has no translations and every client shows the untranslated column instead.
    final Map<String, dynamic>? labels;

    /// Attribute name for matrix_basis 'attribute' — the key the rate request's `attributes` map is read at. Free text: the set of attributes is the catalogue's, not this app's.
    final String? matrix_attribute;

    /// The measure a matrix method prices its tiers over: total basket weight (in the market's weight unit), total item count, order value, or 'attribute' — any number the rate request carries under matrix_attribute. Null falls back to the tenant's matrix_basis_default. Ignored unless pricing_type is 'matrix'.
    final enums.ShippingMethodMatrixBasis? matrix_basis;

    /// Free-form jsonb the platform never reads or validates — whatever the merchant or their integration needs to keep beside the row (a customer number with the carrier, an ERP key, a label-printer id). The shape varies BY INTEGRATION, not by anything this app knows, so no key is declared and none is reserved; the example is one plausible instance rather than a schema. A flat map of scalars is the convention, and nothing enforces it.
    final Map<String, dynamic>? metadata;

    /// Display name shown in the checkout.
    final String? name;

    /// Sort order in the checkout (default 0) — a rate answer is returned in this order.
    final int? position;

    /// The fixed price (default 0), in `currency` — ignored for 'free' and 'matrix'.
    final double? price;

    /// Pricing model (default 'fixed'): 'fixed' is one price for every basket, 'free' is no price at all, 'matrix' is a tiered price read off this method's rate tiers. Only 'matrix' looks at matrix_basis, quote_above and the tier table.
    final enums.ShippingMethodPricingType? pricing_type;

    /// Above this MATRIX MEASURE the method carries no automatic price: it is still offered, flagged `quote_required` with a reason, and the storefront shows 'shipping on request'. For bulky or overweight freight priced by hand. Null = every measure is priced automatically.
    final double? quote_above;

    /// This method's own tax class, as a CODE into the buyer market's tax classes (markets.tax_classes) — never a rate. First step of the tax chain: unset falls back to the tenant's shipping_tax_class setting, then the market default. Not a foreign key and it could not be (ADR-0055); GET /shipping/tax-classes/{code}/usage is the integrity question markets asks in its place.
    final String? tax_class;

    /// When the row was last written (UTC).
    final String? updated_at;

    ShippingMethod({
        this.carrier,
        this.carrier_id,
        this.code,
        this.countries,
        this.created_at,
        this.currency,
        this.description,
        this.enabled,
        this.eta_days_max,
        this.eta_days_min,
        this.free_above,
        this.id,
        this.labels,
        this.matrix_attribute,
        this.matrix_basis,
        this.metadata,
        this.name,
        this.position,
        this.price,
        this.pricing_type,
        this.quote_above,
        this.tax_class,
        this.updated_at,
    });

    factory ShippingMethod.fromMap(Map<String, dynamic> map) {
        return ShippingMethod(
            carrier: map['carrier']?.toString(),
            carrier_id: map['carrier_id']?.toString(),
            code: map['code']?.toString(),
            countries: List.from(map['countries'] ?? []),
            created_at: map['created_at']?.toString(),
            currency: map['currency']?.toString(),
            description: map['description']?.toString(),
            enabled: map['enabled'],
            eta_days_max: map['eta_days_max'],
            eta_days_min: map['eta_days_min'],
            free_above: map['free_above']?.toDouble(),
            id: map['id']?.toString(),
            labels: map['labels'],
            matrix_attribute: map['matrix_attribute']?.toString(),
            matrix_basis: map['matrix_basis'] != null ? enums.ShippingMethodMatrixBasis.values.firstWhere((e) => e.value == map['matrix_basis']) : null,
            metadata: map['metadata'],
            name: map['name']?.toString(),
            position: map['position'],
            price: map['price']?.toDouble(),
            pricing_type: map['pricing_type'] != null ? enums.ShippingMethodPricingType.values.firstWhere((e) => e.value == map['pricing_type']) : null,
            quote_above: map['quote_above']?.toDouble(),
            tax_class: map['tax_class']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "carrier": carrier,
            "carrier_id": carrier_id,
            "code": code,
            "countries": countries,
            "created_at": created_at,
            "currency": currency,
            "description": description,
            "enabled": enabled,
            "eta_days_max": eta_days_max,
            "eta_days_min": eta_days_min,
            "free_above": free_above,
            "id": id,
            "labels": labels,
            "matrix_attribute": matrix_attribute,
            "matrix_basis": matrix_basis?.value,
            "metadata": metadata,
            "name": name,
            "position": position,
            "price": price,
            "pricing_type": pricing_type?.value,
            "quote_above": quote_above,
            "tax_class": tax_class,
            "updated_at": updated_at,
        };
    }
}

part of '../../models.dart';

/// One offerable shipping method with its computed price for this buyer context.
class ShippingRate implements Model {
  /// The carrier CODE — unchanged for every caller that already reads it. The method's carrier_id, else its `carrier` text, else the tenant's default_carrier.
  final String? carrier;

  /// The carrier row's display name, or null when the code names no maintained carrier.
  final String? carrier_name;

  /// The class of service this rate is, from the carrier row — a code into the tenant's service levels.
  final String? carrier_service_level;

  /// Which step of the chain answered: 'method' (carrier_id), 'method_code' (the method's text matched a carrier), 'method_text' (it matched none), 'tenant_default' / 'tenant_default_text' (the setting, matched or not).
  final enums.ShippingCarrierSource? carrier_source;

  /// Stable method code, unique per tenant (e.g. standard, express). What a checkout and an order line store, so it is the value every integration joins on.
  final String? code;

  /// ISO 4217 code (default EUR). Exactly three characters — the column says so. Echoed into a rate, never converted: this app prices in the currency the method carries.
  final String? currency;

  /// The delivery window a checkout can print. Calendar days, cut-off evaluated in UTC (send `at` to control the instant).
  final ShippingDeliveryEstimate? delivery;

  /// The sentence under the name in the checkout — the delivery promise in words. Null when the name says enough.
  final String? description;

  /// Transit time upper bound in calendar days, as applied: the method's own, else the carrier's.
  final int? eta_days_max;

  /// Transit time lower bound in calendar days, as applied: the method's own, else the carrier's.
  final int? eta_days_min;

  /// Only when a free-above threshold applied. Names the compared value AND its basis (net or gross), and says whether the threshold was the method's own or shop-wide — the free-shipping promise is a common dispute and this is the sentence that settles it.
  final String? free_reason;

  /// Localized display names. A flat map keyed by locale — the Cockpit falls back to `en`. Null means the row has no translations and every client shows the untranslated column instead.
  final Map<String, dynamic>? labels;

  /// Display name shown in the checkout.
  final String? name;

  /// Sort order in the checkout (default 0) — a rate answer is returned in this order.
  final int? position;

  /// The shipping fee for this basket, in `currency`, rounded to two decimals — 0 when a free-above threshold or a 'free' method applied. NULL when `quote_required` is true: the price is unknown, not zero, and a checkout must not add 0.00 for it.
  final double? price;

  /// Pricing model (default 'fixed'): 'fixed' is one price for every basket, 'free' is no price at all, 'matrix' is a tiered price read off this method's rate tiers. Only 'matrix' looks at matrix_basis, quote_above and the tier table.
  final enums.ShippingRatePricingType? pricing_type;

  /// Only when quote_required — the measure and the threshold it exceeded, so an operator pricing it by hand can see what triggered the referral.
  final String? quote_reason;

  /// True when the matrix measure is above the method's quote_above threshold: the method is still offered, carries no price, and the storefront shows 'shipping on request'. The order is placed without a computed shipping fee.
  final bool? quote_required;

  /// The tax class this rate was taxed under, as a code in markets.tax_classes — the method's own, the tenant's shipping_tax_class, or the market's default, whichever answered. Null means unresolved, not untaxed.
  final String? tax_class;

  /// The rate in percent from markets.tax_classes for this market and tax_class — 19 means 19 %. Null means UNKNOWN, never 0: read `tax.resolved` before treating a missing rate as tax-free.
  final double? tax_rate;

  /// Which step of the chain supplied the rate: the method's own class, the tenant's shipping_tax_class, the market default, or the tenant's default_shipping_tax_rate. Null means unknown, NOT untaxed.
  final enums.ShippingTaxSource? tax_source;

  ShippingRate({
    this.carrier,
    this.carrier_name,
    this.carrier_service_level,
    this.carrier_source,
    this.code,
    this.currency,
    this.delivery,
    this.description,
    this.eta_days_max,
    this.eta_days_min,
    this.free_reason,
    this.labels,
    this.name,
    this.position,
    this.price,
    this.pricing_type,
    this.quote_reason,
    this.quote_required,
    this.tax_class,
    this.tax_rate,
    this.tax_source,
  });

  factory ShippingRate.fromMap(Map<String, dynamic> map) {
    return ShippingRate(
      carrier: map['carrier']?.toString(),
      carrier_name: map['carrier_name']?.toString(),
      carrier_service_level: map['carrier_service_level']?.toString(),
      carrier_source: map['carrier_source'] != null
          ? enums.ShippingCarrierSource.values
              .firstWhere((e) => e.value == map['carrier_source'])
          : null,
      code: map['code']?.toString(),
      currency: map['currency']?.toString(),
      delivery: map['delivery'] != null
          ? ShippingDeliveryEstimate.fromMap(map['delivery'])
          : null,
      description: map['description']?.toString(),
      eta_days_max: map['eta_days_max'],
      eta_days_min: map['eta_days_min'],
      free_reason: map['free_reason']?.toString(),
      labels: map['labels'],
      name: map['name']?.toString(),
      position: map['position'],
      price: map['price']?.toDouble(),
      pricing_type: map['pricing_type'] != null
          ? enums.ShippingRatePricingType.values
              .firstWhere((e) => e.value == map['pricing_type'])
          : null,
      quote_reason: map['quote_reason']?.toString(),
      quote_required: map['quote_required'],
      tax_class: map['tax_class']?.toString(),
      tax_rate: map['tax_rate']?.toDouble(),
      tax_source: map['tax_source'] != null
          ? enums.ShippingTaxSource.values
              .firstWhere((e) => e.value == map['tax_source'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "carrier": carrier,
      "carrier_name": carrier_name,
      "carrier_service_level": carrier_service_level,
      "carrier_source": carrier_source?.value,
      "code": code,
      "currency": currency,
      "delivery": delivery?.toMap(),
      "description": description,
      "eta_days_max": eta_days_max,
      "eta_days_min": eta_days_min,
      "free_reason": free_reason,
      "labels": labels,
      "name": name,
      "position": position,
      "price": price,
      "pricing_type": pricing_type?.value,
      "quote_reason": quote_reason,
      "quote_required": quote_required,
      "tax_class": tax_class,
      "tax_rate": tax_rate,
      "tax_source": tax_source?.value,
    };
  }
}

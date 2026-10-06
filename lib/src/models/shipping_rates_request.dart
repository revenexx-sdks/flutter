part of '../../models.dart';

/// The buyer context the checkout resolves rates for — matrix methods need their measure (weight, quantity, order value or attribute) to apply.
class ShippingRatesRequest implements Model {
  /// The instant to evaluate the delivery estimate at (ISO 8601). Omitted: now. Lets a storefront compute the cut-off in its own timezone.
  final String? at;

  /// Measure values for attribute matrices, keyed by attribute NAME — the key a matrix method names in its matrix_attribute, and the value the number its tiers are matched against. Summed over the basket by the caller, not by this app. Only the key a method asks for is read; anything else in the map is carried along and ignored, and a value that is not a finite number excludes that method with a reason rather than failing the quote.
  final Map<String, dynamic>? attributes;

  /// Destination ISO 3166-1 alpha-2 code — compared upper-cased against method and carrier country restrictions. Omitted or null: every method that restricts by country is excluded, with a reason.
  final String? country;

  /// ISO 4217 code, echoed into the rates (default 'EUR'). Echoed, not converted: this app prices in the currency the method carries.
  final String? currency;

  /// Buyer market for tax resolution. Omitted: the market matching `country`, else the tenant's sole market — never an arbitrary one.
  final String? market_id;

  /// Order value (default 0) — drives order_value matrices, and free-above thresholds when no sided value is sent. Read on the basis the tenant's free_above_compares setting declares.
  final double? order_value;

  /// Order value including tax. Compared against free-above thresholds when free_above_compares is 'gross'.
  final double? order_value_gross;

  /// Order value excluding tax. Compared against free-above thresholds when free_above_compares is 'net'.
  final double? order_value_net;

  /// Total quantity — measure for quantity matrices.
  final double? quantity;

  /// Total weight — measure for weight matrices. Read in weight_unit and converted to the unit the tiers are keyed in.
  final double? weight;

  /// The unit `weight` is expressed in, as a CODE into the tenant's own weight units (GET /shipping/weight-units). Omitted, it is the unit this market quotes in. A unit the tenant does not keep is a 400 — a mis-read weight prices the wrong bracket silently, and guessing is worse than refusing.
  final String? weight_unit;

  ShippingRatesRequest({
    this.at,
    this.attributes,
    this.country,
    this.currency,
    this.market_id,
    this.order_value,
    this.order_value_gross,
    this.order_value_net,
    this.quantity,
    this.weight,
    this.weight_unit,
  });

  factory ShippingRatesRequest.fromMap(Map<String, dynamic> map) {
    return ShippingRatesRequest(
      at: map['at']?.toString(),
      attributes: map['attributes'],
      country: map['country']?.toString(),
      currency: map['currency']?.toString(),
      market_id: map['market_id']?.toString(),
      order_value: map['order_value']?.toDouble(),
      order_value_gross: map['order_value_gross']?.toDouble(),
      order_value_net: map['order_value_net']?.toDouble(),
      quantity: map['quantity']?.toDouble(),
      weight: map['weight']?.toDouble(),
      weight_unit: map['weight_unit']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "at": at,
      "attributes": attributes,
      "country": country,
      "currency": currency,
      "market_id": market_id,
      "order_value": order_value,
      "order_value_gross": order_value_gross,
      "order_value_net": order_value_net,
      "quantity": quantity,
      "weight": weight,
      "weight_unit": weight_unit,
    };
  }
}

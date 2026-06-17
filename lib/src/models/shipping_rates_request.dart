part of '../../models.dart';

/// The buyer context the checkout resolves rates for — matrix methods need their measure (weight, quantity, order value or attribute) to apply.
class ShippingRatesRequest implements Model {
    /// Measure values for attribute matrices, keyed by attribute name.
    final Map? attributes;

    /// Destination ISO 3166-1 alpha-2 code — checked against method country restrictions.
    final String? country;

    /// Echoed into the rates (default &#039;EUR&#039;).
    final String? currency;

    /// Buyer market for tax resolution (else inferred from country, else first market).
    final String? market_id;

    /// Order value (default 0) — drives free-above thresholds and order_value matrices.
    final double? order_value;

    /// Total quantity — measure for quantity matrices.
    final double? quantity;

    /// Total weight — measure for weight matrices.
    final double? weight;

    ShippingRatesRequest({
        this.attributes,
        this.country,
        this.currency,
        this.market_id,
        this.order_value,
        this.quantity,
        this.weight,
    });

    factory ShippingRatesRequest.fromMap(Map<String, dynamic> map) {
        return ShippingRatesRequest(
            attributes: map['attributes'],
            country: map['country']?.toString(),
            currency: map['currency']?.toString(),
            market_id: map['market_id']?.toString(),
            order_value: map['order_value']?.toDouble(),
            quantity: map['quantity']?.toDouble(),
            weight: map['weight']?.toDouble(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attributes": attributes,
            "country": country,
            "currency": currency,
            "market_id": market_id,
            "order_value": order_value,
            "quantity": quantity,
            "weight": weight,
        };
    }
}

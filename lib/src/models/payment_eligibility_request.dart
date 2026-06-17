part of '../../models.dart';

/// The buyer context — restriction dimensions are ANDed, entries within a dimension ORed, empty = unrestricted.
class PaymentEligibilityRequest implements Model {
    /// Order amount the fees are computed against (default 0).
    final double? amount;

    /// Buyer ISO country code — methods with country restrictions need it.
    final String? country;

    /// ISO 4217 code (default EUR).
    final String? currency;

    PaymentEligibilityRequest({
        this.amount,
        this.country,
        this.currency,
    });

    factory PaymentEligibilityRequest.fromMap(Map<String, dynamic> map) {
        return PaymentEligibilityRequest(
            amount: map['amount']?.toDouble(),
            country: map['country']?.toString(),
            currency: map['currency']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "amount": amount,
            "country": country,
            "currency": currency,
        };
    }
}

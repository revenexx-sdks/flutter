part of '../../models.dart';

/// The buyer context — restriction dimensions are ANDed, entries within a dimension ORed, empty = unrestricted.
class PaymentEligibilityRequest implements Model {
  /// The order amount the order-value bounds are checked against and the percentage fees are computed from. Defaults to 0, which excludes every method carrying a minimum. Nothing is written, so the ledger's own amount bound does not apply here.
  final double? amount;

  /// The buyer's ISO 3166-1 alpha-2 country code. A method restricted to countries is excluded without it — an unknown buyer sees only the unrestricted methods, which is the safe default and not a bug.
  final String? country;

  /// ISO 4217 code the amount is in, echoed onto every computed fee. Defaults to EUR. This app does no conversion: the fee comes back in the currency it was asked with.
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

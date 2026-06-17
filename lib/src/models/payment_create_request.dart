part of '../../models.dart';

/// Creates AND authorizes: self-managed methods authorize immediately, PSP methods may answer next_action (redirect). Eligibility is re-checked server-side.
class PaymentCreateRequest implements Model {
    /// Order amount — 0 is legal (free orders), negative is not.
    final double amount;

    /// The cart this payment pays for.
    final String? cart_id;

    /// Paying customer contact.
    final String? contact_id;

    /// Buyer ISO country code for the eligibility check.
    final String? country;

    /// ISO 4217 code (default EUR).
    final String? currency;

    /// Same key answers the same payment instead of a duplicate.
    final String? idempotency_key;

    /// Free-form metadata.
    final Map? metadata;

    /// Code of a configured payment method.
    final String method_code;

    /// External order reference — also the webhook fallback key.
    final String? order_ref;

    /// Where the PSP redirect flow returns the buyer to.
    final String? return_url;

    PaymentCreateRequest({
        required this.amount,
        this.cart_id,
        this.contact_id,
        this.country,
        this.currency,
        this.idempotency_key,
        this.metadata,
        required this.method_code,
        this.order_ref,
        this.return_url,
    });

    factory PaymentCreateRequest.fromMap(Map<String, dynamic> map) {
        return PaymentCreateRequest(
            amount: map['amount'].toDouble(),
            cart_id: map['cart_id']?.toString(),
            contact_id: map['contact_id']?.toString(),
            country: map['country']?.toString(),
            currency: map['currency']?.toString(),
            idempotency_key: map['idempotency_key']?.toString(),
            metadata: map['metadata'],
            method_code: map['method_code'].toString(),
            order_ref: map['order_ref']?.toString(),
            return_url: map['return_url']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "amount": amount,
            "cart_id": cart_id,
            "contact_id": contact_id,
            "country": country,
            "currency": currency,
            "idempotency_key": idempotency_key,
            "metadata": metadata,
            "method_code": method_code,
            "order_ref": order_ref,
            "return_url": return_url,
        };
    }
}

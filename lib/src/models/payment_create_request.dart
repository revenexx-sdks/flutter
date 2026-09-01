part of '../../models.dart';

/// Creates AND authorizes: self-managed methods authorize immediately, PSP methods may answer next_action (redirect). Eligibility is re-checked server-side.
class PaymentCreateRequest implements Model {
    /// What the provider is asked to authorize, in `currency`. 0 is legal (a free order) and negative is refused by the handler and by the CHECK behind it. `fee_amount` is recorded beside this and is NOT added to it — a checkout that charges its payment surcharge sends a total that already includes it.
    final double amount;

    /// The cart this payment pays for. Not a foreign key: the payment is a record of what happened and outlives the cart. Indexed, so it is the cheap way to find the payment behind a checkout.
    final String? cart_id;

    /// The paying customer contact. Not a foreign key — a payment must survive a contact being merged or erased. Indexed.
    final String? contact_id;

    /// The buyer's ISO 3166-1 alpha-2 country code, for the eligibility check. A method restricted to countries is refused with 422 without it.
    final String? country;

    /// ISO 4217 code the amount and the fee are in. The database bounds the length at three characters and nothing else, so lower case is stored as written. Defaults to EUR.
    final String? currency;

    /// The caller's own key for this creation attempt. Sending it again answers the SAME payment with 200 instead of creating a second one — which is what makes a retried checkout safe. Unique per tenant, so a filter on it answers at most one row. The replay answers 200, not 201.
    final String? idempotency_key;

    /// Free-form data to keep on the payment. Merged with the keys this app writes itself (`provider_method`, `return_url`, later the cancel/refund reasons), which win on a collision.
    final Map? metadata;

    /// The `code` of the payment method this payment was made with, copied at creation. Deliberately a code and not a foreign key: the ledger records what happened and has to outlive the configuration it happened under. It must name a method this tenant has configured; eligibility for the buyer context below is re-checked here, whatever the checkout showed.
    final String method_code;

    /// The external order reference the checkout wrote onto the payment. It is what POST /payments/orders/{order_ref}/capture resolves and the fallback key a PSP webhook is matched on when it carries no transaction id — so an integration that leaves it null gives up both. Free text with no uniqueness: several payments may share one reference.
    final String? order_ref;

    /// Where the PSP sends the buyer back after a redirect or a 3-D Secure challenge. Kept in `metadata.return_url` and handed to the driver — a PSP method that needs a redirect and has none leaves the buyer stranded at the provider.
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

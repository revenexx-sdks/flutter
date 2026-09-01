part of '../../models.dart';

/// 
class Payment implements Model {
    /// What the provider is asked to authorize, in `currency`. 0 is legal (a free order) and negative is refused by the handler and by the CHECK behind it. `fee_amount` is recorded beside this and is NOT added to it — a checkout that charges its payment surcharge sends a total that already includes it.
    final double? amount;

    /// When the money was reserved — or, for invoice and prepayment, when it became owed. The clock the capture window and the dunning stages are measured from.
    final String? authorized_at;

    /// When the money was actually taken. The refund window is measured from here.
    final String? captured_at;

    /// The cart this payment pays for. Not a foreign key: the payment is a record of what happened and outlives the cart. Indexed, so it is the cheap way to find the payment behind a checkout.
    final String? cart_id;

    /// The paying customer contact. Not a foreign key — a payment must survive a contact being merged or erased. Indexed.
    final String? contact_id;

    /// When the payment was created. The dunning clock for invoice and prepayment runs from here.
    final String? created_at;

    /// ISO 4217 code the amount and the fee are in. The database bounds the length at three characters and nothing else, so lower case is stored as written.
    final String? currency;

    /// When the NEXT dunning stage falls due — the moment a reminder becomes due, then the moment it becomes overdue. null once nothing further is pending, which includes an already overdue payment and every paid, cancelled or refunded one.
    final String? dunning_due_at;

    /// How overdue an unpaid self-managed payment is: 'none', 'reminder' or 'overdue'. Written by the daily dunning scan from the merchant's two thresholds, and reset the moment the money arrives or the claim is dropped. It classifies and never sends: what a reminder looks like is the merchant's own workflow.
    final enums.PaymentDunningStage? dunning_stage;

    /// The class of failure, out of a fixed taxonomy — the value to branch on. null unless the payment failed. The five classes say what a caller can DO: 'provider_unavailable', 'provider_unreachable', 'provider_not_configured', 'provider_declined', 'provider_error' — a provider that is unreachable or unavailable is worth a retry, a declined payment needs a different method from the buyer, and a provider that is not configured needs an operator.
    final enums.PaymentFailureCode? error_code;

    /// One operator-facing sentence, fixed per `error_code`. Never the provider's or the runtime's own wording: that is unbounded internal text and it stays in the app log.
    final String? error_message;

    /// When the payment failed. `error_code` says which class of failure.
    final String? failed_at;

    /// The method surcharge as it was computed at creation, in `currency`. Kept so the fee that was quoted stays readable after the method's fee configuration changes.
    final double? fee_amount;

    /// Id of the payment. Every lifecycle route addresses it, and it is what the drivers send the provider as their merchant transaction reference.
    final String? id;

    /// The caller's own key for this creation attempt. Sending it again answers the SAME payment with 200 instead of creating a second one — which is what makes a retried checkout safe. Unique per tenant, so a filter on it answers at most one row.
    final String? idempotency_key;

    /// Copied from the method at creation. 'self_managed' payments move through the lifecycle without a PSP; 'psp' payments are driven by `provider`.
    final enums.PaymentMethodKind? kind;

    /// Whatever the creating call sent, plus the keys this app writes onto it. The app's own: `provider_method` (the method's provider-side id, copied at creation), `return_url` (where the PSP sends the buyer back), `cancel_reason` / `refund_reason` (the operator's words from the cancel and refund routes, also handed to the provider) and `provider_fallback_from` (the provider that was WANTED, written when the tenant's fallback_provider stood in — the only record of why the money went through a different acquirer). Free jsonb; a caller's own keys are kept untouched beside these.
    final Map? metadata;

    /// The `code` of the payment method this payment was made with, copied at creation. Deliberately a code and not a foreign key: the ledger records what happened and has to outlive the configuration it happened under.
    final String? method_code;

    /// What the storefront must do before this payment can go any further, or null when there is nothing to do. It is set exactly when `status` is `requires_action`, and every transition clears it. One shape exists today: `{ "type": "redirect", "url": … }` — send the buyer to `url` (that is also where a 3-D Secure challenge is presented, because the connector hands it back as a redirect), and when they come back call POST /payments/{id}/confirm. `type` is what to branch on; a client that does not recognise it must not guess.
    final Map? next_action;

    /// The external order reference the checkout wrote onto the payment. It is what POST /payments/orders/{order_ref}/capture resolves and the fallback key a PSP webhook is matched on when it carries no transaction id — so an integration that leaves it null gives up both. Free text with no uniqueness: several payments may share one reference.
    final String? order_ref;

    /// The PSP the money really went through — resolved at creation and rewritten if the tenant's fallback provider stood in, in which case `metadata.provider_fallback_from` records what was meant. null for self-managed payments.
    final String? provider;

    /// The provider's own transaction id, as it answered — the value to quote in a PSP support case, and the primary key a webhook is matched on. Shaped by the provider, so nothing here constrains it; null until a provider has answered, and always null for self-managed payments.
    final String? psp_payment_id;

    /// When the payment was refunded in full — this app has no partial refund to record.
    final String? refunded_at;

    /// Where the payment stands. 'created' → 'requires_action' → 'authorized' → 'captured' → 'refunded', with 'failed' and 'cancelled' ending it. GET /payments/vocabularies/statuses serves the same set with labels, badge tones and which of them are final.
    final enums.PaymentStatus? status;

    /// The tenant the row belongs to — the same slug the request carried in `X-Revenexx-Tenant`. Added by the platform rather than by this app, and echoed so a caller that fans several tenants into one store can tell the rows apart.
    final String? tenant_id;

    /// When the row last moved. For a PSP payment still waiting on a callback this is what the webhook-staleness check measures against, so an old payment that changed a minute ago counts as progressing.
    final String? updated_at;

    Payment({
        this.amount,
        this.authorized_at,
        this.captured_at,
        this.cart_id,
        this.contact_id,
        this.created_at,
        this.currency,
        this.dunning_due_at,
        this.dunning_stage,
        this.error_code,
        this.error_message,
        this.failed_at,
        this.fee_amount,
        this.id,
        this.idempotency_key,
        this.kind,
        this.metadata,
        this.method_code,
        this.next_action,
        this.order_ref,
        this.provider,
        this.psp_payment_id,
        this.refunded_at,
        this.status,
        this.tenant_id,
        this.updated_at,
    });

    factory Payment.fromMap(Map<String, dynamic> map) {
        return Payment(
            amount: map['amount']?.toDouble(),
            authorized_at: map['authorized_at']?.toString(),
            captured_at: map['captured_at']?.toString(),
            cart_id: map['cart_id']?.toString(),
            contact_id: map['contact_id']?.toString(),
            created_at: map['created_at']?.toString(),
            currency: map['currency']?.toString(),
            dunning_due_at: map['dunning_due_at']?.toString(),
            dunning_stage: map['dunning_stage'] != null ? enums.PaymentDunningStage.values.firstWhere((e) => e.value == map['dunning_stage']) : null,
            error_code: map['error_code'] != null ? enums.PaymentFailureCode.values.firstWhere((e) => e.value == map['error_code']) : null,
            error_message: map['error_message']?.toString(),
            failed_at: map['failed_at']?.toString(),
            fee_amount: map['fee_amount']?.toDouble(),
            id: map['id']?.toString(),
            idempotency_key: map['idempotency_key']?.toString(),
            kind: map['kind'] != null ? enums.PaymentMethodKind.values.firstWhere((e) => e.value == map['kind']) : null,
            metadata: map['metadata'],
            method_code: map['method_code']?.toString(),
            next_action: map['next_action'],
            order_ref: map['order_ref']?.toString(),
            provider: map['provider']?.toString(),
            psp_payment_id: map['psp_payment_id']?.toString(),
            refunded_at: map['refunded_at']?.toString(),
            status: map['status'] != null ? enums.PaymentStatus.values.firstWhere((e) => e.value == map['status']) : null,
            tenant_id: map['tenant_id']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "amount": amount,
            "authorized_at": authorized_at,
            "captured_at": captured_at,
            "cart_id": cart_id,
            "contact_id": contact_id,
            "created_at": created_at,
            "currency": currency,
            "dunning_due_at": dunning_due_at,
            "dunning_stage": dunning_stage?.value,
            "error_code": error_code?.value,
            "error_message": error_message,
            "failed_at": failed_at,
            "fee_amount": fee_amount,
            "id": id,
            "idempotency_key": idempotency_key,
            "kind": kind?.value,
            "metadata": metadata,
            "method_code": method_code,
            "next_action": next_action,
            "order_ref": order_ref,
            "provider": provider,
            "psp_payment_id": psp_payment_id,
            "refunded_at": refunded_at,
            "status": status?.value,
            "tenant_id": tenant_id,
            "updated_at": updated_at,
        };
    }
}

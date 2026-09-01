part of '../../models.dart';

/// The dispatch envelope from webhooks.revenexx.com. Nothing is required and nothing is constrained — three keys are read, and the rest is carried along.
class PaymentWebhookIngestRequest implements Model {
    /// The dispatcher's delivery id. Echoed back as `delivery_id` so a delivery and what the ledger did can be correlated.
    final String? id;

    /// The captured HTTP request as the PSP sent it.
    final String? request;

    /// Whether the ingress verified the callback signature against the provider's `webhook_secret`. An explicit false is refused with 422: an endpoint may run in annotate mode, and the ledger stays sovereign over one that does.
    final String? verified;

    PaymentWebhookIngestRequest({
        this.id,
        this.request,
        this.verified,
    });

    factory PaymentWebhookIngestRequest.fromMap(Map<String, dynamic> map) {
        return PaymentWebhookIngestRequest(
            id: map['id']?.toString(),
            request: map['request']?.toString(),
            verified: map['verified']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "id": id,
            "request": request,
            "verified": verified,
        };
    }
}

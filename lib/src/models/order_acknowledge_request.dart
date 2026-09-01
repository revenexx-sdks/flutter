part of '../../models.dart';

/// The acknowledgement carries one field, and it is optional: sending {} still stamps acknowledged_at, which is the point of the call. acknowledged_at is the server's clock and is never taken from the body.
class OrderAcknowledgeRequest implements Model {
    /// The FULFILLING system's reference for this order, typically the ERP order number. Written once by POST /orders/{id}/acknowledge and null until an integration acknowledged it. Keeps the existing value when omitted.
    final String? external_ref;

    OrderAcknowledgeRequest({
        this.external_ref,
    });

    factory OrderAcknowledgeRequest.fromMap(Map<String, dynamic> map) {
        return OrderAcknowledgeRequest(
            external_ref: map['external_ref']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "external_ref": external_ref,
        };
    }
}

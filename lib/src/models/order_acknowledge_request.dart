part of '../../models.dart';

/// 
class OrderAcknowledgeRequest implements Model {
    /// The fulfilling system&#039;s order reference (e.g. the ERP order number).
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

part of '../../models.dart';

/// Cancels the WHOLE order, and only while nothing has shipped. Both fields are optional unless the tenant requires a reason.
class OrderCancelRequest implements Model {
    /// Who cancelled, as the caller reported it — an operator, a desk, a system. Free text; this app does not resolve it against a user directory.
    final String? cancelled_by;

    /// Why it was cancelled, free text. Mandatory when the tenant sets cancel_requires_reason — for those merchants an unexplained cancellation is refused with a 400.
    final String? reason;

    OrderCancelRequest({
        this.cancelled_by,
        this.reason,
    });

    factory OrderCancelRequest.fromMap(Map<String, dynamic> map) {
        return OrderCancelRequest(
            cancelled_by: map['cancelled_by']?.toString(),
            reason: map['reason']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "cancelled_by": cancelled_by,
            "reason": reason,
        };
    }
}

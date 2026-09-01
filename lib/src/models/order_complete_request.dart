part of '../../models.dart';

/// No required fields — send {}.
class OrderCompleteRequest implements Model {
    /// Who closed the order, as the caller reports it. Not stored on the order: it is carried in the order.completed event's payload, which is where the audit trail keeps who did what. Free text, not resolved against a user directory.
    final String? completed_by;

    OrderCompleteRequest({
        this.completed_by,
    });

    factory OrderCompleteRequest.fromMap(Map<String, dynamic> map) {
        return OrderCompleteRequest(
            completed_by: map['completed_by']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "completed_by": completed_by,
        };
    }
}

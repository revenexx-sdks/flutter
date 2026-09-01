part of '../../models.dart';

/// Stop the order. The reason is optional but is what the guard quotes back at whoever tries to ship, so an unexplained hold is a hold nobody can resolve.
class OrderHoldRequest implements Model {
    /// Why the order is held, in the words the shipping guard quotes back. Null when it is not held — releasing a hold clears it.
    final String? reason;

    OrderHoldRequest({
        this.reason,
    });

    factory OrderHoldRequest.fromMap(Map<String, dynamic> map) {
        return OrderHoldRequest(
            reason: map['reason']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "reason": reason,
        };
    }
}

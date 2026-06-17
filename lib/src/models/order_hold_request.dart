part of '../../models.dart';

/// 
class OrderHoldRequest implements Model {
    /// Why the order is blocked (shown on the shipping guard).
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

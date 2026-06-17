part of '../../models.dart';

/// 
class OrderCancelRequest implements Model {
    /// Acting user/system.
    final String? cancelled_by;

    /// 
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

part of '../../models.dart';

/// 
class OrderItemsCancelRequest implements Model {
    /// Acting user/system.
    final String? cancelled_by;

    /// 
    final List<OrderCancelPosition> positions;

    /// 
    final String? reason;

    OrderItemsCancelRequest({
        this.cancelled_by,
        required this.positions,
        this.reason,
    });

    factory OrderItemsCancelRequest.fromMap(Map<String, dynamic> map) {
        return OrderItemsCancelRequest(
            cancelled_by: map['cancelled_by']?.toString(),
            positions: List<OrderCancelPosition>.from(map['positions'].map((p) => OrderCancelPosition.fromMap(p))),
            reason: map['reason']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "cancelled_by": cancelled_by,
            "positions": positions.map((p) => p.toMap()).toList(),
            "reason": reason,
        };
    }
}

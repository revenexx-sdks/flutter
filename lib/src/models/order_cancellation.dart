part of '../../models.dart';

/// 
class OrderCancellation implements Model {
    /// 
    final String? cancelled_by;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final String? order_id;

    /// 
    final Map? positions;

    /// 
    final String? reason;

    /// 
    final String? scope;

    OrderCancellation({
        this.cancelled_by,
        this.created_at,
        this.id,
        this.order_id,
        this.positions,
        this.reason,
        this.scope,
    });

    factory OrderCancellation.fromMap(Map<String, dynamic> map) {
        return OrderCancellation(
            cancelled_by: map['cancelled_by']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            order_id: map['order_id']?.toString(),
            positions: map['positions'],
            reason: map['reason']?.toString(),
            scope: map['scope']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "cancelled_by": cancelled_by,
            "created_at": created_at,
            "id": id,
            "order_id": order_id,
            "positions": positions,
            "reason": reason,
            "scope": scope,
        };
    }
}

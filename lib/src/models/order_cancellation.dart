part of '../../models.dart';

/// A record of what was taken off an order and why — either the whole order (while nothing had shipped) or named quantities off a partly shipped one.
class OrderCancellation implements Model {
    /// Who cancelled, as the caller reported it — an operator, a desk, a system. Free text; this app does not resolve it against a user directory.
    final String? cancelled_by;

    /// When the cancellation was recorded.
    final String? created_at;

    /// Primary key of the cancellation record.
    final String? id;

    /// The order that was cancelled from.
    final String? order_id;

    /// What this record removed. A scope 'order' record carries every position in full; a scope 'items' record carries exactly the quantities that were named.
    final List<OrderCancellationPosition>? positions;

    /// Why it was cancelled, free text. Mandatory when the tenant sets cancel_requires_reason — for those merchants an unexplained cancellation is refused with a 400.
    final String? reason;

    /// Which of the two cancellations this was: 'order' is the full cancel (only possible while nothing has shipped, and it cancels every position in full), 'items' is the quantity-based one that takes open quantities off a partly shipped order.
    final enums.OrderCancellationScope? scope;

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
            positions: map['positions'] != null ? List<OrderCancellationPosition>.from(map['positions'].map((p) => OrderCancellationPosition.fromMap(p))) : null,
            reason: map['reason']?.toString(),
            scope: map['scope'] != null ? enums.OrderCancellationScope.values.firstWhere((e) => e.value == map['scope']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "cancelled_by": cancelled_by,
            "created_at": created_at,
            "id": id,
            "order_id": order_id,
            "positions": positions?.map((p) => p.toMap()).toList(),
            "reason": reason,
            "scope": scope?.value,
        };
    }
}

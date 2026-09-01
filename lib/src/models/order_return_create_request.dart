part of '../../models.dart';

/// Register a return against the shipped quantities — the return number is drawn from the return range. Omitted positions = every position that still has a returnable quantity, in full ('the customer sent it all back').
class OrderReturnCreateRequest implements Model {
    /// Free-form data for the caller — the returns portal's own reference. Stored and returned untouched.
    final Map<String, dynamic>? metadata;

    /// What is coming back. Omitted = every position with a returnable (shipped, not yet returned) quantity, in full.
    final List<OrderReturnPosition>? positions;

    /// Why the goods are coming back, free text as the customer or the desk stated it. Also what /reject stores when it is given no resolution out of the published set.
    final String? reason;

    /// The default restock flag for positions that carry none of their own — and the only way to say "put it all back into stock" when the positions are defaulted. It does not restock anything itself: it decides what the completion REPORTS for the orchestrator's inventories.restock call.
    final bool? restock;

    OrderReturnCreateRequest({
        this.metadata,
        this.positions,
        this.reason,
        this.restock,
    });

    factory OrderReturnCreateRequest.fromMap(Map<String, dynamic> map) {
        return OrderReturnCreateRequest(
            metadata: map['metadata'],
            positions: map['positions'] != null ? List<OrderReturnPosition>.from(map['positions'].map((p) => OrderReturnPosition.fromMap(p))) : null,
            reason: map['reason']?.toString(),
            restock: map['restock'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "metadata": metadata,
            "positions": positions?.map((p) => p.toMap()).toList(),
            "reason": reason,
            "restock": restock,
        };
    }
}

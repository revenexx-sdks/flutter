part of '../../models.dart';

/// Register a return against the shipped quantities — the return number is drawn from the &#039;return&#039; range.
class OrderReturnCreateRequest implements Model {
    /// Free-form metadata.
    final Map? metadata;

    /// 
    final List<OrderReturnPosition> positions;

    /// 
    final String? reason;

    OrderReturnCreateRequest({
        this.metadata,
        required this.positions,
        this.reason,
    });

    factory OrderReturnCreateRequest.fromMap(Map<String, dynamic> map) {
        return OrderReturnCreateRequest(
            metadata: map['metadata'],
            positions: List<OrderReturnPosition>.from(map['positions'].map((p) => OrderReturnPosition.fromMap(p))),
            reason: map['reason']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "metadata": metadata,
            "positions": positions.map((p) => p.toMap()).toList(),
            "reason": reason,
        };
    }
}

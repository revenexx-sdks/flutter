part of '../../models.dart';

/// 
class OrderReturnRejectRequest implements Model {
    /// Free-text fallback for 'resolution' — a sentence about this one return, not a value out of the set.
    final String? reason;

    /// Why the return was refused.
    final enums.OrderReturnRefusal? resolution;

    OrderReturnRejectRequest({
        this.reason,
        this.resolution,
    });

    factory OrderReturnRejectRequest.fromMap(Map<String, dynamic> map) {
        return OrderReturnRejectRequest(
            reason: map['reason']?.toString(),
            resolution: map['resolution'] != null ? enums.OrderReturnRefusal.values.firstWhere((e) => e.value == map['resolution']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "reason": reason,
            "resolution": resolution?.value,
        };
    }
}

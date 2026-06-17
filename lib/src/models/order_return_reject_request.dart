part of '../../models.dart';

/// 
class OrderReturnRejectRequest implements Model {
    /// Fallback for &#039;resolution&#039;.
    final String? reason;

    /// Why the return was rejected.
    final String? resolution;

    OrderReturnRejectRequest({
        this.reason,
        this.resolution,
    });

    factory OrderReturnRejectRequest.fromMap(Map<String, dynamic> map) {
        return OrderReturnRejectRequest(
            reason: map['reason']?.toString(),
            resolution: map['resolution']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "reason": reason,
            "resolution": resolution,
        };
    }
}

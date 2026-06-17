part of '../../models.dart';

/// 
class OrderReturnCompleteRequest implements Model {
    /// How the return was settled (refund, replacement, …).
    final String? resolution;

    OrderReturnCompleteRequest({
        this.resolution,
    });

    factory OrderReturnCompleteRequest.fromMap(Map<String, dynamic> map) {
        return OrderReturnCompleteRequest(
            resolution: map['resolution']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "resolution": resolution,
        };
    }
}

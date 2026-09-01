part of '../../models.dart';

/// 
class OrderReturnCompleteRequest implements Model {
    /// How the return was settled. Omitted = settled without recording how.
    final enums.OrderReturnSettlement? resolution;

    OrderReturnCompleteRequest({
        this.resolution,
    });

    factory OrderReturnCompleteRequest.fromMap(Map<String, dynamic> map) {
        return OrderReturnCompleteRequest(
            resolution: map['resolution'] != null ? enums.OrderReturnSettlement.values.firstWhere((e) => e.value == map['resolution']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "resolution": resolution?.value,
        };
    }
}

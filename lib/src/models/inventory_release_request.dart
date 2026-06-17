part of '../../models.dart';

/// 
class InventoryReleaseRequest implements Model {
    /// The order whose active reservations are released.
    final String order_ref;

    InventoryReleaseRequest({
        required this.order_ref,
    });

    factory InventoryReleaseRequest.fromMap(Map<String, dynamic> map) {
        return InventoryReleaseRequest(
            order_ref: map['order_ref'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "order_ref": order_ref,
        };
    }
}

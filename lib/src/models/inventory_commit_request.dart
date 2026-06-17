part of '../../models.dart';

/// 
class InventoryCommitRequest implements Model {
    /// The order whose active reservations are committed (shipment).
    final String order_ref;

    InventoryCommitRequest({
        required this.order_ref,
    });

    factory InventoryCommitRequest.fromMap(Map<String, dynamic> map) {
        return InventoryCommitRequest(
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

part of '../../models.dart';

///
class InventoryReleaseRequest implements Model {
  /// The order this hold belongs to. The caller supplies it — this app mints nothing — and it is the handle POST /inventories/release and POST /inventories/commit act on, so it has to be the same string the order carries elsewhere. At least one character (CHECK `length(order_ref) > 0`). Not unique: an order holds one reservation per item, and they are released or committed together. Every ACTIVE hold under this reference is given back; ones already committed or released are left alone. A reference no reservation carries releases nothing and answers `released: 0` — not an error, which is what makes a retried cancellation safe.
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

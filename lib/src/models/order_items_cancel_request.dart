part of '../../models.dart';

///
class OrderItemsCancelRequest implements Model {
  /// Who cancelled, as the caller reported it — an operator, a desk, a system. Free text; this app does not resolve it against a user directory.
  final String? cancelled_by;

  /// The quantities to take off the order. Required here, unlike on /ship and /return: cancelling everything by default is not a thing anybody should be able to do by omission — that is what /cancel is for.
  final List<OrderCancelPosition> positions;

  /// Why it was cancelled, free text. Mandatory when the tenant sets cancel_requires_reason — for those merchants an unexplained cancellation is refused with a 400.
  final String? reason;

  OrderItemsCancelRequest({
    this.cancelled_by,
    required this.positions,
    this.reason,
  });

  factory OrderItemsCancelRequest.fromMap(Map<String, dynamic> map) {
    return OrderItemsCancelRequest(
      cancelled_by: map['cancelled_by']?.toString(),
      positions: List<OrderCancelPosition>.from(
          map['positions'].map((p) => OrderCancelPosition.fromMap(p))),
      reason: map['reason']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "cancelled_by": cancelled_by,
      "positions": positions.map((p) => p.toMap()).toList(),
      "reason": reason,
    };
  }
}

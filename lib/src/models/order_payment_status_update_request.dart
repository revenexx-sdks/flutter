part of '../../models.dart';

///
class OrderPaymentStatusUpdateRequest implements Model {
  /// The reference into the payment system. MERGED into the order's payment snapshot under 'payment_id' — the rest of the snapshot is left alone — and carried in the order.payment_status.changed event. Omitted leaves the snapshot untouched.
  final String? payment_id;

  /// The new value of the payment dimension. Whether the order is PAID, and the dimension this app does not decide: it is fed from outside through POST /orders/{id}/payment-status (the payments app or an ERP), and only seeded at place-time from payment.status. Orthogonal to the lifecycle — a completed order can still be open, and a paid one can still be pending.
  final enums.OrderPaymentStatus status;

  OrderPaymentStatusUpdateRequest({
    this.payment_id,
    required this.status,
  });

  factory OrderPaymentStatusUpdateRequest.fromMap(Map<String, dynamic> map) {
    return OrderPaymentStatusUpdateRequest(
      payment_id: map['payment_id']?.toString(),
      status: enums.OrderPaymentStatus.values
          .firstWhere((e) => e.value == map['status']),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "payment_id": payment_id,
      "status": status.value,
    };
  }
}

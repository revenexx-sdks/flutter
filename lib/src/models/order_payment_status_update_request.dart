part of '../../models.dart';

/// 
class OrderPaymentStatusUpdateRequest implements Model {
    /// Reference into the payment system — merged into the order&#039;s payment snapshot.
    final String? payment_id;

    /// The new payment dimension value.
    final enums.OrderPaymentStatus status;

    OrderPaymentStatusUpdateRequest({
        this.payment_id,
        required this.status,
    });

    factory OrderPaymentStatusUpdateRequest.fromMap(Map<String, dynamic> map) {
        return OrderPaymentStatusUpdateRequest(
            payment_id: map['payment_id']?.toString(),
            status: enums.OrderPaymentStatus.values.firstWhere((e) => e.value == map['status']),
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

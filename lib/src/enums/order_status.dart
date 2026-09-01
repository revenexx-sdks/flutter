part of '../../enums.dart';

enum OrderStatus {
    pending(value: 'pending'),
    placed(value: 'placed'),
    inFulfillment(value: 'in_fulfillment'),
    completed(value: 'completed'),
    cancelled(value: 'cancelled');

    const OrderStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}
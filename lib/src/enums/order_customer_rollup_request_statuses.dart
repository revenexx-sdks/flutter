part of '../../enums.dart';

enum OrderCustomerRollupRequestStatuses {
    pending(value: 'pending'),
    placed(value: 'placed'),
    inFulfillment(value: 'in_fulfillment'),
    completed(value: 'completed'),
    cancelled(value: 'cancelled');

    const OrderCustomerRollupRequestStatuses({
        required this.value
    });

    final String value;

    String toJson() => value;
}
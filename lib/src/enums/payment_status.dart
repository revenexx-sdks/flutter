part of '../../enums.dart';

enum PaymentStatus {
    created(value: 'created'),
    requiresAction(value: 'requires_action'),
    authorized(value: 'authorized'),
    captured(value: 'captured'),
    failed(value: 'failed'),
    cancelled(value: 'cancelled'),
    refunded(value: 'refunded');

    const PaymentStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}
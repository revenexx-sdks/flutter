part of '../../enums.dart';

enum ShippingCarrierStatus {
    active(value: 'active'),
    paused(value: 'paused'),
    retired(value: 'retired');

    const ShippingCarrierStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}
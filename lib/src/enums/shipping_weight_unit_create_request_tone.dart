part of '../../enums.dart';

enum ShippingWeightUnitCreateRequestTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const ShippingWeightUnitCreateRequestTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
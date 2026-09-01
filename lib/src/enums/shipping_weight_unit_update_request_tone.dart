part of '../../enums.dart';

enum ShippingWeightUnitUpdateRequestTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const ShippingWeightUnitUpdateRequestTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
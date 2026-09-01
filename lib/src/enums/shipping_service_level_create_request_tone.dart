part of '../../enums.dart';

enum ShippingServiceLevelCreateRequestTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const ShippingServiceLevelCreateRequestTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
part of '../../enums.dart';

enum ShippingServiceLevelUpdateRequestTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const ShippingServiceLevelUpdateRequestTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
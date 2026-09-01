part of '../../enums.dart';

enum ShippingServiceLevelRowTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const ShippingServiceLevelRowTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
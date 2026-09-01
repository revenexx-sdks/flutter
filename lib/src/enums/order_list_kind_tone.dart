part of '../../enums.dart';

enum OrderListKindTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const OrderListKindTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
part of '../../enums.dart';

enum PaymentTermUpdateRequestTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const PaymentTermUpdateRequestTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
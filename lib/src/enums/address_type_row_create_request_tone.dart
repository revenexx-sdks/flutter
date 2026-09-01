part of '../../enums.dart';

enum AddressTypeRowCreateRequestTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const AddressTypeRowCreateRequestTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
part of '../../enums.dart';

enum PaymentTermCreateRequestTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const PaymentTermCreateRequestTone({required this.value});

  final String value;

  String toJson() => value;
}

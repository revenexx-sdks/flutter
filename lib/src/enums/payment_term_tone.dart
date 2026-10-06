part of '../../enums.dart';

enum PaymentTermTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const PaymentTermTone({required this.value});

  final String value;

  String toJson() => value;
}

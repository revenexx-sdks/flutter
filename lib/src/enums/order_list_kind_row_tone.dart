part of '../../enums.dart';

enum OrderListKindRowTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const OrderListKindRowTone({required this.value});

  final String value;

  String toJson() => value;
}

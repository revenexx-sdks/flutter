part of '../../enums.dart';

enum ShippingWeightUnitRowTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const ShippingWeightUnitRowTone({required this.value});

  final String value;

  String toJson() => value;
}

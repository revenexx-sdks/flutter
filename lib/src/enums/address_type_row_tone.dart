part of '../../enums.dart';

enum AddressTypeRowTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const AddressTypeRowTone({required this.value});

  final String value;

  String toJson() => value;
}

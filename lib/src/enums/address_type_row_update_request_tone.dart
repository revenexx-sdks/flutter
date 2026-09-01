part of '../../enums.dart';

enum AddressTypeRowUpdateRequestTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const AddressTypeRowUpdateRequestTone({required this.value});

  final String value;

  String toJson() => value;
}

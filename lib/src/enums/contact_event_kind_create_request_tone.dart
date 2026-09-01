part of '../../enums.dart';

enum ContactEventKindCreateRequestTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const ContactEventKindCreateRequestTone({required this.value});

  final String value;

  String toJson() => value;
}

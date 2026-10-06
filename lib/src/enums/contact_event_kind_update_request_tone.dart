part of '../../enums.dart';

enum ContactEventKindUpdateRequestTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const ContactEventKindUpdateRequestTone({required this.value});

  final String value;

  String toJson() => value;
}

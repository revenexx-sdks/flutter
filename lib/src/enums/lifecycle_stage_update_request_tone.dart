part of '../../enums.dart';

enum LifecycleStageUpdateRequestTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const LifecycleStageUpdateRequestTone({required this.value});

  final String value;

  String toJson() => value;
}

part of '../../enums.dart';

enum LifecycleStageCreateRequestTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const LifecycleStageCreateRequestTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
part of '../../enums.dart';

enum LifecycleStageTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const LifecycleStageTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
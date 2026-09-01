part of '../../enums.dart';

enum Tone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const Tone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
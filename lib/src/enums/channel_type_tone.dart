part of '../../enums.dart';

enum ChannelTypeTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const ChannelTypeTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
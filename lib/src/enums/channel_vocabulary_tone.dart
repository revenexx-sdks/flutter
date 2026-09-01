part of '../../enums.dart';

enum ChannelVocabularyTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const ChannelVocabularyTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
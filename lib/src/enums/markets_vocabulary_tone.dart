part of '../../enums.dart';

enum MarketsVocabularyTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const MarketsVocabularyTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
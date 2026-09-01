part of '../../enums.dart';

enum PriceVocabularyTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const PriceVocabularyTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
part of '../../enums.dart';

enum OrderVocabularyTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const OrderVocabularyTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
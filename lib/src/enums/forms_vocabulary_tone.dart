part of '../../enums.dart';

enum FormsVocabularyTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const FormsVocabularyTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
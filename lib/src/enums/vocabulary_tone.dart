part of '../../enums.dart';

enum VocabularyTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const VocabularyTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
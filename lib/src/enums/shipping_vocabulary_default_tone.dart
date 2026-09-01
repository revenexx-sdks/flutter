part of '../../enums.dart';

enum ShippingVocabularyDefaultTone {
    neutral(value: 'neutral'),
    info(value: 'info'),
    success(value: 'success'),
    warning(value: 'warning'),
    danger(value: 'danger');

    const ShippingVocabularyDefaultTone({
        required this.value
    });

    final String value;

    String toJson() => value;
}
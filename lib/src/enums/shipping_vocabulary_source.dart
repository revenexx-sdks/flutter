part of '../../enums.dart';

enum ShippingVocabularySource {
    schema(value: 'schema'),
    table(value: 'table');

    const ShippingVocabularySource({
        required this.value
    });

    final String value;

    String toJson() => value;
}
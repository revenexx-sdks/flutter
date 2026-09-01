part of '../../enums.dart';

enum OrderListVocabularySource {
    schema(value: 'schema'),
    table(value: 'table');

    const OrderListVocabularySource({
        required this.value
    });

    final String value;

    String toJson() => value;
}
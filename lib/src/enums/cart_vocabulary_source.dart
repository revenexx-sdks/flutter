part of '../../enums.dart';

enum CartVocabularySource {
    schema(value: 'schema');

    const CartVocabularySource({
        required this.value
    });

    final String value;

    String toJson() => value;
}
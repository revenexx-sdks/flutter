part of '../../enums.dart';

enum MarketsVocabularySource {
    schema(value: 'schema');

    const MarketsVocabularySource({
        required this.value
    });

    final String value;

    String toJson() => value;
}
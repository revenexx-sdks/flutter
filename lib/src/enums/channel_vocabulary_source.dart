part of '../../enums.dart';

enum ChannelVocabularySource {
    schema(value: 'schema'),
    table(value: 'table');

    const ChannelVocabularySource({
        required this.value
    });

    final String value;

    String toJson() => value;
}
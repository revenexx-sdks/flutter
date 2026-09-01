part of '../../enums.dart';

enum VocabularySource {
    schema(value: 'schema'),
    table(value: 'table'),
    tenant(value: 'tenant'),
    defaults(value: 'defaults');

    const VocabularySource({
        required this.value
    });

    final String value;

    String toJson() => value;
}
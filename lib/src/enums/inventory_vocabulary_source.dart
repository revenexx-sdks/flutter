part of '../../enums.dart';

enum InventoryVocabularySource {
    schema(value: 'schema');

    const InventoryVocabularySource({
        required this.value
    });

    final String value;

    String toJson() => value;
}
part of '../../enums.dart';

enum PriceVocabularySource {
  schema(value: 'schema');

  const PriceVocabularySource({required this.value});

  final String value;

  String toJson() => value;
}

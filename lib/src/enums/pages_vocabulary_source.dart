part of '../../enums.dart';

enum PagesVocabularySource {
  schema(value: 'schema');

  const PagesVocabularySource({required this.value});

  final String value;

  String toJson() => value;
}

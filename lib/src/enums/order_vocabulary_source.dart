part of '../../enums.dart';

enum OrderVocabularySource {
  schema(value: 'schema'),
  app(value: 'app');

  const OrderVocabularySource({required this.value});

  final String value;

  String toJson() => value;
}

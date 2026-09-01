part of '../../enums.dart';

enum PagesVocabularyApp {
  pages(value: 'pages');

  const PagesVocabularyApp({required this.value});

  final String value;

  String toJson() => value;
}

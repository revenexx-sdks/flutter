part of '../../enums.dart';

enum PagesVocabularyIndexApp {
    pages(value: 'pages');

    const PagesVocabularyIndexApp({
        required this.value
    });

    final String value;

    String toJson() => value;
}
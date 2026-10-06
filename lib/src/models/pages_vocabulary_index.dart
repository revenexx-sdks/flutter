part of '../../models.dart';

/// Which vocabularies this app publishes.
class PagesVocabularyIndex implements Model {
  /// Always 'pages' — the first half of the qualified id a client holds.
  final enums.PagesVocabularyIndexApp? app;

  /// One entry per vocabulary, without its values.
  final List<PagesVocabularyRef>? vocabularies;

  PagesVocabularyIndex({
    this.app,
    this.vocabularies,
  });

  factory PagesVocabularyIndex.fromMap(Map<String, dynamic> map) {
    return PagesVocabularyIndex(
      app: map['app'] != null
          ? enums.PagesVocabularyIndexApp.values
              .firstWhere((e) => e.value == map['app'])
          : null,
      vocabularies: map['vocabularies'] != null
          ? List<PagesVocabularyRef>.from(
              map['vocabularies'].map((p) => PagesVocabularyRef.fromMap(p)))
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "app": app?.value,
      "vocabularies": vocabularies?.map((p) => p.toMap()).toList(),
    };
  }
}

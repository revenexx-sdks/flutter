part of '../../models.dart';

/// What this app publishes, without the values — one fetch a UI can cache and then pull only the vocabularies it renders.
class PriceVocabularyIndex implements Model {
  /// The app that owns this vocabulary.
  final String? app;

  /// Every vocabulary this app owns, sorted by name.
  final List<PriceVocabularyRef>? vocabularies;

  PriceVocabularyIndex({
    this.app,
    this.vocabularies,
  });

  factory PriceVocabularyIndex.fromMap(Map<String, dynamic> map) {
    return PriceVocabularyIndex(
      app: map['app']?.toString(),
      vocabularies: map['vocabularies'] != null
          ? List<PriceVocabularyRef>.from(
              map['vocabularies'].map((p) => PriceVocabularyRef.fromMap(p)))
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "app": app,
      "vocabularies": vocabularies?.map((p) => p.toMap()).toList(),
    };
  }
}

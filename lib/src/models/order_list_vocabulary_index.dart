part of '../../models.dart';

///
class OrderListVocabularyIndex implements Model {
  /// The app that owns this vocabulary.
  final String? app;

  /// Every vocabulary this app publishes, without its values — the values are one call further down, at GET /orderlists/vocabularies/{name}.
  final List<Map>? vocabularies;

  OrderListVocabularyIndex({
    this.app,
    this.vocabularies,
  });

  factory OrderListVocabularyIndex.fromMap(Map<String, dynamic> map) {
    return OrderListVocabularyIndex(
      app: map['app']?.toString(),
      vocabularies: List.from(map['vocabularies'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "app": app,
      "vocabularies": vocabularies,
    };
  }
}

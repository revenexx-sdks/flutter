part of '../../models.dart';

///
class VocabularyIndex implements Model {
  /// This app's name — the part before the dot in the qualified id `customers.<name>`.
  final String? app;

  /// Every vocabulary this app publishes, without their values.
  final List<Map>? vocabularies;

  VocabularyIndex({
    this.app,
    this.vocabularies,
  });

  factory VocabularyIndex.fromMap(Map<String, dynamic> map) {
    return VocabularyIndex(
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

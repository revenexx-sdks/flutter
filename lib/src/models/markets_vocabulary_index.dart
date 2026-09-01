part of '../../models.dart';

/// Every closed value set this app owns, by name — enough to build a menu of them without fetching each one.
class MarketsVocabularyIndex implements Model {
    /// The app that owns this vocabulary.
    final String? app;

    /// Every vocabulary this app publishes, named and titled but without its values — fetch one by name for those.
    final List<MarketsVocabularySummary>? vocabularies;

    MarketsVocabularyIndex({
        this.app,
        this.vocabularies,
    });

    factory MarketsVocabularyIndex.fromMap(Map<String, dynamic> map) {
        return MarketsVocabularyIndex(
            app: map['app']?.toString(),
            vocabularies: map['vocabularies'] != null ? List<MarketsVocabularySummary>.from(map['vocabularies'].map((p) => MarketsVocabularySummary.fromMap(p))) : null,
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

part of '../../models.dart';

/// 
class FormsVocabularyIndex implements Model {
    /// The app that owns this vocabulary.
    final String? app;

    /// Every vocabulary this app publishes, without its values — enough to build a menu, not enough to fill a select. Fetch one by name for that.
    final List<FormsVocabularySummary>? vocabularies;

    FormsVocabularyIndex({
        this.app,
        this.vocabularies,
    });

    factory FormsVocabularyIndex.fromMap(Map<String, dynamic> map) {
        return FormsVocabularyIndex(
            app: map['app']?.toString(),
            vocabularies: map['vocabularies'] != null ? List<FormsVocabularySummary>.from(map['vocabularies'].map((p) => FormsVocabularySummary.fromMap(p))) : null,
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

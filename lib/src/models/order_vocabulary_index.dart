part of '../../models.dart';

/// 
class OrderVocabularyIndex implements Model {
    /// This app's name — the part before the dot in the qualified id.
    final String? app;

    /// Every vocabulary this app publishes, without its values — fetch one with GET /orders/vocabularies/{name}.
    final List<OrderVocabularySummary>? vocabularies;

    OrderVocabularyIndex({
        this.app,
        this.vocabularies,
    });

    factory OrderVocabularyIndex.fromMap(Map<String, dynamic> map) {
        return OrderVocabularyIndex(
            app: map['app']?.toString(),
            vocabularies: map['vocabularies'] != null ? List<OrderVocabularySummary>.from(map['vocabularies'].map((p) => OrderVocabularySummary.fromMap(p))) : null,
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

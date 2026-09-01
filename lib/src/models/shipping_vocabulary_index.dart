part of '../../models.dart';

/// 
class ShippingVocabularyIndex implements Model {
    /// The app that owns these vocabularies — the part before the dot in a qualified id.
    final String? app;

    /// Every vocabulary this app publishes, without its values. Names only: fetch one to get the set.
    final List<ShippingVocabularyIndexEntry>? vocabularies;

    ShippingVocabularyIndex({
        this.app,
        this.vocabularies,
    });

    factory ShippingVocabularyIndex.fromMap(Map<String, dynamic> map) {
        return ShippingVocabularyIndex(
            app: map['app']?.toString(),
            vocabularies: map['vocabularies'] != null ? List<ShippingVocabularyIndexEntry>.from(map['vocabularies'].map((p) => ShippingVocabularyIndexEntry.fromMap(p))) : null,
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

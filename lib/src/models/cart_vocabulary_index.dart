part of '../../models.dart';

/// 
class CartVocabularyIndex implements Model {
    /// The app that owns this vocabulary.
    final String? app;

    /// Every vocabulary this app publishes, without its values — enough to build a menu, and one call per vocabulary to fill it.
    final List<CartVocabularyRef>? vocabularies;

    CartVocabularyIndex({
        this.app,
        this.vocabularies,
    });

    factory CartVocabularyIndex.fromMap(Map<String, dynamic> map) {
        return CartVocabularyIndex(
            app: map['app']?.toString(),
            vocabularies: map['vocabularies'] != null ? List<CartVocabularyRef>.from(map['vocabularies'].map((p) => CartVocabularyRef.fromMap(p))) : null,
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

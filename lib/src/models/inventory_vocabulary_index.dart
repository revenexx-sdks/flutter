part of '../../models.dart';

/// 
class InventoryVocabularyIndex implements Model {
    /// This app's name — the part before the dot in a qualified vocabulary id such as `inventories.movement-types`.
    final String? app;

    /// Every vocabulary this app publishes, WITHOUT its values — the index a client reads to discover them. Fetch the values with GET /inventories/vocabularies/{name}.
    final List<Map>? vocabularies;

    InventoryVocabularyIndex({
        this.app,
        this.vocabularies,
    });

    factory InventoryVocabularyIndex.fromMap(Map<String, dynamic> map) {
        return InventoryVocabularyIndex(
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

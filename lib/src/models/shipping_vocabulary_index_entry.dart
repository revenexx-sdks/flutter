part of '../../models.dart';

/// One vocabulary, named and titled.
class ShippingVocabularyIndexEntry implements Model {
    /// What the vocabulary is for. Either one string or a locale map keyed by locale (e.g. {en, de}) — curated copy carries the map, a value falling back to its own key carries the string.
    final String? description;

    /// The part after the dot in the qualified id — what GET /shipping/vocabularies/{name} takes.
    final String? name;

    /// What the vocabulary is called. Either one string or a locale map keyed by locale (e.g. {en, de}) — curated copy carries the map, a value falling back to its own key carries the string.
    final String? title;

    ShippingVocabularyIndexEntry({
        this.description,
        this.name,
        this.title,
    });

    factory ShippingVocabularyIndexEntry.fromMap(Map<String, dynamic> map) {
        return ShippingVocabularyIndexEntry(
            description: map['description']?.toString(),
            name: map['name']?.toString(),
            title: map['title']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "description": description,
            "name": name,
            "title": title,
        };
    }
}

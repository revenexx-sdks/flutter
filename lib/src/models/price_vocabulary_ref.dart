part of '../../models.dart';

/// One vocabulary, named and titled — fetch its values with GET /prices/vocabularies/{name}.
class PriceVocabularyRef implements Model {
    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? description;

    /// Vocabulary name, unique within the app.
    final enums.PriceVocabularyRefName? name;

    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? title;

    PriceVocabularyRef({
        this.description,
        this.name,
        this.title,
    });

    factory PriceVocabularyRef.fromMap(Map<String, dynamic> map) {
        return PriceVocabularyRef(
            description: map['description'],
            name: map['name'] != null ? enums.PriceVocabularyRefName.values.firstWhere((e) => e.value == map['name']) : null,
            title: map['title'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "description": description,
            "name": name?.value,
            "title": title,
        };
    }
}

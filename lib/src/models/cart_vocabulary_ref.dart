part of '../../models.dart';

/// 
class CartVocabularyRef implements Model {
    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? description;

    /// Vocabulary name, unique within the app.
    final enums.CartVocabularyRefName? name;

    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? title;

    CartVocabularyRef({
        this.description,
        this.name,
        this.title,
    });

    factory CartVocabularyRef.fromMap(Map<String, dynamic> map) {
        return CartVocabularyRef(
            description: map['description'],
            name: map['name'] != null ? enums.CartVocabularyRefName.values.firstWhere((e) => e.value == map['name']) : null,
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

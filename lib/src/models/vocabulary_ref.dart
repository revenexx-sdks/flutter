part of '../../models.dart';

/// 
class VocabularyRef implements Model {
    /// A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? description;

    /// The name to pass to `GET /products/vocabularies/{name}`.
    final String? name;

    /// A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? title;

    VocabularyRef({
        this.description,
        this.name,
        this.title,
    });

    factory VocabularyRef.fromMap(Map<String, dynamic> map) {
        return VocabularyRef(
            description: map['description'],
            name: map['name']?.toString(),
            title: map['title'],
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

part of '../../models.dart';

/// 
class CartVocabularyValue implements Model {
    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? description;

    /// The value ends the lifecycle — nothing moves out of it.
    final bool? xfinal;

    /// The value as the database stores and enforces it.
    final String? key;

    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? title;

    /// Semantic badge colour. The client owns what each tone looks like.
    final enums.CartVocabularyTone? tone;

    CartVocabularyValue({
        this.description,
        this.xfinal,
        this.key,
        this.title,
        this.tone,
    });

    factory CartVocabularyValue.fromMap(Map<String, dynamic> map) {
        return CartVocabularyValue(
            description: map['description'],
            xfinal: map['final'],
            key: map['key']?.toString(),
            title: map['title'],
            tone: map['tone'] != null ? enums.CartVocabularyTone.values.firstWhere((e) => e.value == map['tone']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "description": description,
            "final": xfinal,
            "key": key,
            "title": title,
            "tone": tone?.value,
        };
    }
}

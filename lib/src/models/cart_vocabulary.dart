part of '../../models.dart';

/// 
class CartVocabulary implements Model {
    /// The app that owns this vocabulary.
    final String? app;

    /// Always true here: the values come from a CHECK constraint, so the list is exhaustive and a value outside it is stale data rather than a missing label.
    final bool? closed;

    /// The tone a value that carries none falls back to.
    final enums.CartVocabularyTone? default_tone;

    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? description;

    /// Vocabulary name, unique within the app.
    final enums.CartVocabularyName? name;

    /// Where the values came from. 'schema' = a CHECK constraint in this app's own schema.json.
    final enums.CartVocabularySource? source;

    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? title;

    /// Every permitted value, in the order the CHECK constraint lists them — which is the order a select should offer them in.
    final List<CartVocabularyValue>? values;

    CartVocabulary({
        this.app,
        this.closed,
        this.default_tone,
        this.description,
        this.name,
        this.source,
        this.title,
        this.values,
    });

    factory CartVocabulary.fromMap(Map<String, dynamic> map) {
        return CartVocabulary(
            app: map['app']?.toString(),
            closed: map['closed'],
            default_tone: map['default_tone'] != null ? enums.CartVocabularyTone.values.firstWhere((e) => e.value == map['default_tone']) : null,
            description: map['description'],
            name: map['name'] != null ? enums.CartVocabularyName.values.firstWhere((e) => e.value == map['name']) : null,
            source: map['source'] != null ? enums.CartVocabularySource.values.firstWhere((e) => e.value == map['source']) : null,
            title: map['title'],
            values: map['values'] != null ? List<CartVocabularyValue>.from(map['values'].map((p) => CartVocabularyValue.fromMap(p))) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "app": app,
            "closed": closed,
            "default_tone": default_tone?.value,
            "description": description,
            "name": name?.value,
            "source": source?.value,
            "title": title,
            "values": values?.map((p) => p.toMap()).toList(),
        };
    }
}

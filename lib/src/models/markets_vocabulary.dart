part of '../../models.dart';

/// One closed value set this app owns, parsed out of the CHECK constraint in schema.json — the served set IS the enforced set. `closed: true` means a client may treat anything outside `values` as stale data.
class MarketsVocabulary implements Model {
    /// The app that owns this vocabulary.
    final String? app;

    /// Always true here: the values come from a CHECK constraint, so the list is exhaustive.
    final bool? closed;

    /// The tone a value that carries none falls back to.
    final enums.MarketsVocabularyTone? default_tone;

    /// Either one string, or a map of locale to string ({"en": …, "de": …}).
    final String? description;

    /// Vocabulary name, unique within the app.
    final enums.MarketsVocabularyName? name;

    /// Where the values came from. 'schema' = a CHECK constraint in this app's own schema.json.
    final enums.MarketsVocabularySource? source;

    /// Either one string, or a map of locale to string ({"en": …, "de": …}).
    final String? title;

    /// Every value the column may hold, in the order the CHECK constraint lists them — which is the order a select box should offer them in. Exhaustive, because `closed` is true.
    final List<MarketsVocabularyValue>? values;

    MarketsVocabulary({
        this.app,
        this.closed,
        this.default_tone,
        this.description,
        this.name,
        this.source,
        this.title,
        this.values,
    });

    factory MarketsVocabulary.fromMap(Map<String, dynamic> map) {
        return MarketsVocabulary(
            app: map['app']?.toString(),
            closed: map['closed'],
            default_tone: map['default_tone'] != null ? enums.MarketsVocabularyTone.values.firstWhere((e) => e.value == map['default_tone']) : null,
            description: map['description']?.toString(),
            name: map['name'] != null ? enums.MarketsVocabularyName.values.firstWhere((e) => e.value == map['name']) : null,
            source: map['source'] != null ? enums.MarketsVocabularySource.values.firstWhere((e) => e.value == map['source']) : null,
            title: map['title']?.toString(),
            values: map['values'] != null ? List<MarketsVocabularyValue>.from(map['values'].map((p) => MarketsVocabularyValue.fromMap(p))) : null,
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

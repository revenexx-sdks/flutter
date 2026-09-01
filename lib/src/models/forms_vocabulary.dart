part of '../../models.dart';

/// 
class FormsVocabulary implements Model {
    /// The app that owns this vocabulary.
    final String? app;

    /// The set is exhaustive.
    final bool? closed;

    /// The tone a value nobody gave one falls back to — what a badge looks like for a status that was added to the CHECK constraint before anyone styled it.
    final enums.FormsVocabularyTone? default_tone;

    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? description;

    /// Vocabulary name, unique within the app.
    final enums.FormsVocabularyName? name;

    /// Parsed from the CHECK constraint.
    final String? source;

    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? title;

    /// Every permitted value, in constraint order — which is the order a select should offer them in, because it is the lifecycle order.
    final List<FormsVocabularyValue>? values;

    FormsVocabulary({
        this.app,
        this.closed,
        this.default_tone,
        this.description,
        this.name,
        this.source,
        this.title,
        this.values,
    });

    factory FormsVocabulary.fromMap(Map<String, dynamic> map) {
        return FormsVocabulary(
            app: map['app']?.toString(),
            closed: map['closed'],
            default_tone: map['default_tone'] != null ? enums.FormsVocabularyTone.values.firstWhere((e) => e.value == map['default_tone']) : null,
            description: map['description'],
            name: map['name'] != null ? enums.FormsVocabularyName.values.firstWhere((e) => e.value == map['name']) : null,
            source: map['source']?.toString(),
            title: map['title'],
            values: map['values'] != null ? List<FormsVocabularyValue>.from(map['values'].map((p) => FormsVocabularyValue.fromMap(p))) : null,
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
            "source": source,
            "title": title,
            "values": values?.map((p) => p.toMap()).toList(),
        };
    }
}

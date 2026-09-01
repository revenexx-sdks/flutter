part of '../../models.dart';

/// 
class ChannelVocabulary implements Model {
    /// The app that owns this vocabulary.
    final String? app;

    /// Always true: the set is exhaustive at this moment, so a value outside it is stale data rather than a missing label. For a table-backed vocabulary that is a statement about now, not forever — the tenant may add to it.
    final bool? closed;

    /// The tone a value that carries none falls back to.
    final enums.ChannelVocabularyTone? default_tone;

    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map? description;

    /// Vocabulary name, unique within the app.
    final enums.ChannelVocabularyName? name;

    /// Who owns the value set. 'schema' = a CHECK constraint in this app's own schema.json; 'table' = the tenant's own rows.
    final enums.ChannelVocabularySource? source;

    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map? title;

    /// Every permitted value, in author order — the order a select should offer, not alphabetical. For a CHECK-backed vocabulary that is the constraint's own order; for the table-backed `types` it is the tenant's `position` order.
    final List<ChannelVocabularyValue>? values;

    ChannelVocabulary({
        this.app,
        this.closed,
        this.default_tone,
        this.description,
        this.name,
        this.source,
        this.title,
        this.values,
    });

    factory ChannelVocabulary.fromMap(Map<String, dynamic> map) {
        return ChannelVocabulary(
            app: map['app']?.toString(),
            closed: map['closed'],
            default_tone: map['default_tone'] != null ? enums.ChannelVocabularyTone.values.firstWhere((e) => e.value == map['default_tone']) : null,
            description: map['description'],
            name: map['name'] != null ? enums.ChannelVocabularyName.values.firstWhere((e) => e.value == map['name']) : null,
            source: map['source'] != null ? enums.ChannelVocabularySource.values.firstWhere((e) => e.value == map['source']) : null,
            title: map['title'],
            values: map['values'] != null ? List<ChannelVocabularyValue>.from(map['values'].map((p) => ChannelVocabularyValue.fromMap(p))) : null,
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

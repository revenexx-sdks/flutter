part of '../../models.dart';

/// 
class ShippingVocabulary implements Model {
    /// The app that owns this vocabulary.
    final String? app;

    /// The set is exhaustive, so a value outside it is stale data rather than a missing label. True either way — what differs is who may extend it.
    final bool? closed;

    /// The badge colour a value that names none falls back to.
    final enums.ShippingVocabularyDefaultTone? default_tone;

    /// What the vocabulary is for. Either one string or a locale map keyed by locale (e.g. {en, de}) — curated copy carries the map, a value falling back to its own key carries the string.
    final String? description;

    /// The vocabulary name — the part after the dot in the qualified id.
    final String? name;

    /// 'schema' — the values are a CHECK constraint's, so the served set IS the enforced set. 'table' — the values are the tenant's own rows, read per request.
    final enums.ShippingVocabularySource? source;

    /// What the vocabulary is called. Either one string or a locale map keyed by locale (e.g. {en, de}) — curated copy carries the map, a value falling back to its own key carries the string.
    final String? title;

    /// Every permitted value, in the order a select should offer them — constraint order for a schema vocabulary, `position` for a table one.
    final List<ShippingVocabularyValue>? values;

    ShippingVocabulary({
        this.app,
        this.closed,
        this.default_tone,
        this.description,
        this.name,
        this.source,
        this.title,
        this.values,
    });

    factory ShippingVocabulary.fromMap(Map<String, dynamic> map) {
        return ShippingVocabulary(
            app: map['app']?.toString(),
            closed: map['closed'],
            default_tone: map['default_tone'] != null ? enums.ShippingVocabularyDefaultTone.values.firstWhere((e) => e.value == map['default_tone']) : null,
            description: map['description']?.toString(),
            name: map['name']?.toString(),
            source: map['source'] != null ? enums.ShippingVocabularySource.values.firstWhere((e) => e.value == map['source']) : null,
            title: map['title']?.toString(),
            values: map['values'] != null ? List<ShippingVocabularyValue>.from(map['values'].map((p) => ShippingVocabularyValue.fromMap(p))) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "app": app,
            "closed": closed,
            "default_tone": default_tone?.value,
            "description": description,
            "name": name,
            "source": source?.value,
            "title": title,
            "values": values?.map((p) => p.toMap()).toList(),
        };
    }
}

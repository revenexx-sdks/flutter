part of '../../models.dart';

/// 
class Vocabulary implements Model {
    /// This app's name — the part before the dot in the qualified id.
    final String? app;

    /// True when the values are the complete permitted set. For a CHECK-backed vocabulary the constraint guarantees it; for a table-backed one the app refuses a value outside the rows, and for `locales` outside the configured list — the same guarantee by three mechanisms.
    final bool? closed;

    /// The tone an unlabelled value gets.
    final enums.VocabularyDefaultTone? default_tone;

    /// A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`. A curated label is a map; a value nobody labelled is humanized into a plain string.
    final Map<String, dynamic>? description;

    /// The vocabulary this is.
    final String? name;

    /// 'schema' — a CHECK constraint owns the set. 'table' — the tenant's own rows do. 'defaults' — a table-backed set the tenant never wrote down, answered from the built-ins. 'tenant' — the merchant configured the values through a setting (locales).
    final enums.VocabularySource? source;

    /// A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`. A curated label is a map; a value nobody labelled is humanized into a plain string.
    final Map<String, dynamic>? title;

    /// Every permitted value, in the order a select should offer them.
    final List<Map>? values;

    Vocabulary({
        this.app,
        this.closed,
        this.default_tone,
        this.description,
        this.name,
        this.source,
        this.title,
        this.values,
    });

    factory Vocabulary.fromMap(Map<String, dynamic> map) {
        return Vocabulary(
            app: map['app']?.toString(),
            closed: map['closed'],
            default_tone: map['default_tone'] != null ? enums.VocabularyDefaultTone.values.firstWhere((e) => e.value == map['default_tone']) : null,
            description: map['description'],
            name: map['name']?.toString(),
            source: map['source'] != null ? enums.VocabularySource.values.firstWhere((e) => e.value == map['source']) : null,
            title: map['title'],
            values: List.from(map['values'] ?? []),
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
            "values": values,
        };
    }
}

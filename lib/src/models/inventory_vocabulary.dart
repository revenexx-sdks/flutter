part of '../../models.dart';

/// 
class InventoryVocabulary implements Model {
    /// This app's name — the part before the dot in the qualified id.
    final String? app;

    /// True when these values are the complete permitted set, because they were read out of a CHECK constraint. A value outside a closed set is therefore stale data, not a missing label — which is what lets a client show it as an error instead of inventing a title for it.
    final bool? closed;

    /// The tone a value gets when nobody has labelled it — a value added to the CHECK constraint is served with its key humanized and this tone, rather than not being served at all.
    final enums.InventoryVocabularyDefaultTone? default_tone;

    /// A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? description;

    /// The vocabulary name, echoed — the part after the dot in the qualified id.
    final String? name;

    /// Where the words come from: 'schema' — the app's own, read from the constraint. Nothing here is renameable per tenant, so a client may cache it per app version.
    final enums.InventoryVocabularySource? source;

    /// A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? title;

    /// Every permitted value, IN CONSTRAINT ORDER — which is lifecycle order for a status, so a UI can render the steps in the order they happen.
    final List<Map>? values;

    InventoryVocabulary({
        this.app,
        this.closed,
        this.default_tone,
        this.description,
        this.name,
        this.source,
        this.title,
        this.values,
    });

    factory InventoryVocabulary.fromMap(Map<String, dynamic> map) {
        return InventoryVocabulary(
            app: map['app']?.toString(),
            closed: map['closed'],
            default_tone: map['default_tone'] != null ? enums.InventoryVocabularyDefaultTone.values.firstWhere((e) => e.value == map['default_tone']) : null,
            description: map['description'],
            name: map['name']?.toString(),
            source: map['source'] != null ? enums.InventoryVocabularySource.values.firstWhere((e) => e.value == map['source']) : null,
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

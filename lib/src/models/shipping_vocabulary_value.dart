part of '../../models.dart';

/// 
class ShippingVocabularyValue implements Model {
    /// What the value means. Either one string or a locale map keyed by locale (e.g. {en, de}) — curated copy carries the map, a value falling back to its own key carries the string.
    final String? description;

    /// Table-backed only: localized descriptions, keyed by locale.
    final Map<String, dynamic>? descriptions;

    /// weight-units only: kilograms per unit. A weight vocabulary without it is a list of names you cannot convert with.
    final double? factor;

    /// The value ends the lifecycle.
    final bool? xfinal;

    /// weight-units only: the unit every other factor is expressed in.
    final bool? is_base;

    /// Table-backed only: the value a caller falls back to, so a client can mark it without reading the settings as well.
    final bool? is_default;

    /// Table-backed only: seeded on install. Still renameable and retirable.
    final bool? is_system;

    /// The value as the database stores it — what a column carries and what a filter matches. The only field a machine should compare on.
    final String? key;

    /// Table-backed only: localized titles, keyed by locale. Absent for a vocabulary whose values come from a CHECK constraint — those carry their copy in `title` instead.
    final Map<String, dynamic>? labels;

    /// What a person reads. Falls back to a humanized key. Either one string or a locale map keyed by locale (e.g. {en, de}) — curated copy carries the map, a value falling back to its own key carries the string.
    final String? title;

    /// Semantic badge colour. The client owns what each tone looks like.
    final enums.ShippingVocabularyTone? tone;

    ShippingVocabularyValue({
        this.description,
        this.descriptions,
        this.factor,
        this.xfinal,
        this.is_base,
        this.is_default,
        this.is_system,
        this.key,
        this.labels,
        this.title,
        this.tone,
    });

    factory ShippingVocabularyValue.fromMap(Map<String, dynamic> map) {
        return ShippingVocabularyValue(
            description: map['description']?.toString(),
            descriptions: map['descriptions'],
            factor: map['factor']?.toDouble(),
            xfinal: map['final'],
            is_base: map['is_base'],
            is_default: map['is_default'],
            is_system: map['is_system'],
            key: map['key']?.toString(),
            labels: map['labels'],
            title: map['title']?.toString(),
            tone: map['tone'] != null ? enums.ShippingVocabularyTone.values.firstWhere((e) => e.value == map['tone']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "description": description,
            "descriptions": descriptions,
            "factor": factor,
            "final": xfinal,
            "is_base": is_base,
            "is_default": is_default,
            "is_system": is_system,
            "key": key,
            "labels": labels,
            "title": title,
            "tone": tone?.value,
        };
    }
}

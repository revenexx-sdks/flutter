part of '../../models.dart';

/// 
class ChannelVocabularyValue implements Model {
    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map? description;

    /// Table-backed vocabularies only: the localized descriptions. A locale map keyed by language tag: {"en": …, "de": …}. Read the requested tag and fall back to the plain column beside it.
    final Map? descriptions;

    /// The value ends the lifecycle.
    final bool? xfinal;

    /// Table-backed vocabularies only: the value a create falls back to.
    final bool? is_default;

    /// Table-backed vocabularies only: seeded on install rather than added by the tenant. Still renameable and retirable.
    final bool? is_system;

    /// The value as the database stores and enforces it.
    final String? key;

    /// Table-backed vocabularies only: the localized titles. `title` stays the fallback. A locale map keyed by language tag: {"en": …, "de": …}. Read the requested tag and fall back to the plain column beside it.
    final Map? labels;

    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map? title;

    /// Semantic badge colour. The client owns what each tone looks like.
    final enums.ChannelVocabularyTone? tone;

    ChannelVocabularyValue({
        this.description,
        this.descriptions,
        this.xfinal,
        this.is_default,
        this.is_system,
        this.key,
        this.labels,
        this.title,
        this.tone,
    });

    factory ChannelVocabularyValue.fromMap(Map<String, dynamic> map) {
        return ChannelVocabularyValue(
            description: map['description'],
            descriptions: map['descriptions'],
            xfinal: map['final'],
            is_default: map['is_default'],
            is_system: map['is_system'],
            key: map['key']?.toString(),
            labels: map['labels'],
            title: map['title'],
            tone: map['tone'] != null ? enums.ChannelVocabularyTone.values.firstWhere((e) => e.value == map['tone']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "description": description,
            "descriptions": descriptions,
            "final": xfinal,
            "is_default": is_default,
            "is_system": is_system,
            "key": key,
            "labels": labels,
            "title": title,
            "tone": tone?.value,
        };
    }
}

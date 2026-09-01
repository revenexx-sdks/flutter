part of '../../models.dart';

/// 
class OrderListVocabularyValue implements Model {
    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? description;

    /// Localized descriptions of a tenant-owned value, keyed by locale.
    final Map<String, dynamic>? descriptions;

    /// The value ends the lifecycle. Always false for `kinds` — a list kind is not a state.
    final bool? xfinal;

    /// The value a create falls back to, so a client can mark it without reading the settings as well.
    final bool? is_default;

    /// Seeded on install rather than created by the tenant. Still renameable and retirable.
    final bool? is_system;

    /// The value as the database stores and enforces it — for `kinds`, the `code` a list carries.
    final String? key;

    /// Localized titles of a tenant-owned value, keyed by locale.
    final Map<String, dynamic>? labels;

    /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? title;

    /// Semantic badge colour. The client owns what each tone looks like.
    final enums.OrderListVocabularyTone? tone;

    OrderListVocabularyValue({
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

    factory OrderListVocabularyValue.fromMap(Map<String, dynamic> map) {
        return OrderListVocabularyValue(
            description: map['description'],
            descriptions: map['descriptions'],
            xfinal: map['final'],
            is_default: map['is_default'],
            is_system: map['is_system'],
            key: map['key']?.toString(),
            labels: map['labels'],
            title: map['title'],
            tone: map['tone'] != null ? enums.OrderListVocabularyTone.values.firstWhere((e) => e.value == map['tone']) : null,
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

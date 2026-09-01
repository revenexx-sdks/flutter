part of '../../models.dart';

/// One permitted value, with the words and the colour a human reads for it.
class PaymentVocabularyValue implements Model {
    /// One sentence on what the value means, or null where the key speaks for itself. A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? description;

    /// This value ends the lifecycle — the honest way to ask "is this still open?" instead of matching status names.
    final bool? xfinal;

    /// The value exactly as the database stores it — what a filter sends and what a row carries.
    final String? key;

    /// The label to show for this value. A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? title;

    /// What the state MEANS, semantically: neutral, info, success, warning or danger. The client decides what each one looks like in its own design system.
    final enums.PaymentVocabularyTone? tone;

    PaymentVocabularyValue({
        this.description,
        this.xfinal,
        this.key,
        this.title,
        this.tone,
    });

    factory PaymentVocabularyValue.fromMap(Map<String, dynamic> map) {
        return PaymentVocabularyValue(
            description: map['description'],
            xfinal: map['final'],
            key: map['key']?.toString(),
            title: map['title'],
            tone: map['tone'] != null ? enums.PaymentVocabularyTone.values.firstWhere((e) => e.value == map['tone']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "description": description,
            "final": xfinal,
            "key": key,
            "title": title,
            "tone": tone?.value,
        };
    }
}

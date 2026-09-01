part of '../../models.dart';

/// One enum this app owns, with every permitted value.
class PaymentVocabulary implements Model {
    /// The app that owns this vocabulary — always `payments` here. Together with `name` it forms the platform-wide key `payments.statuses`.
    final String? app;

    /// True when the set comes from a CHECK constraint and is therefore exhaustive — a client may treat anything outside it as stale data rather than a missing label.
    final bool? closed;

    /// The tone a permitted value nobody labelled falls back to, so every value is renderable.
    final enums.PaymentVocabularyTone? default_tone;

    /// What this set of values is about. A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? description;

    /// The vocabulary name, as it appears in the URL.
    final String? name;

    /// Where the values come from. `schema` means they were parsed out of the CHECK constraint, so what is served is what the database enforces.
    final String? source;

    /// The vocabulary's own label, for a filter heading or a column title. A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
    final Map<String, dynamic>? title;

    /// Every permitted value, in constraint order — which is the lifecycle order an author wrote, and the order a select should offer.
    final List<PaymentVocabularyValue>? values;

    PaymentVocabulary({
        this.app,
        this.closed,
        this.default_tone,
        this.description,
        this.name,
        this.source,
        this.title,
        this.values,
    });

    factory PaymentVocabulary.fromMap(Map<String, dynamic> map) {
        return PaymentVocabulary(
            app: map['app']?.toString(),
            closed: map['closed'],
            default_tone: map['default_tone'] != null ? enums.PaymentVocabularyTone.values.firstWhere((e) => e.value == map['default_tone']) : null,
            description: map['description'],
            name: map['name']?.toString(),
            source: map['source']?.toString(),
            title: map['title'],
            values: map['values'] != null ? List<PaymentVocabularyValue>.from(map['values'].map((p) => PaymentVocabularyValue.fromMap(p))) : null,
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
            "source": source,
            "title": title,
            "values": values?.map((p) => p.toMap()).toList(),
        };
    }
}

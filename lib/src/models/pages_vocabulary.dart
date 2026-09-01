part of '../../models.dart';

/// One vocabulary and every value it permits.
class PagesVocabulary implements Model {
  /// Always 'pages'.
  final enums.PagesVocabularyApp? app;

  /// The set is exhaustive, so a value outside it is stale data rather than a missing label.
  final bool? closed;

  /// The badge colour a value nobody toned falls back to.
  final enums.PagesVocabularyTone? default_tone;

  /// What the set is for, or null. A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? description;

  /// The vocabulary name, echoed.
  final enums.PagesVocabularyName? name;

  /// Always 'schema' — the values are parsed from the column's CHECK constraint, which is why the served set cannot drift from the enforced one.
  final enums.PagesVocabularySource? source;

  /// What this set of values is called. A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? title;

  /// Every permitted value, in the order the constraint lists them — which is the order a select should offer.
  final List<PagesVocabularyValue>? values;

  PagesVocabulary({
    this.app,
    this.closed,
    this.default_tone,
    this.description,
    this.name,
    this.source,
    this.title,
    this.values,
  });

  factory PagesVocabulary.fromMap(Map<String, dynamic> map) {
    return PagesVocabulary(
      app: map['app'] != null
          ? enums.PagesVocabularyApp.values
              .firstWhere((e) => e.value == map['app'])
          : null,
      closed: map['closed'],
      default_tone: map['default_tone'] != null
          ? enums.PagesVocabularyTone.values
              .firstWhere((e) => e.value == map['default_tone'])
          : null,
      description: map['description'],
      name: map['name'] != null
          ? enums.PagesVocabularyName.values
              .firstWhere((e) => e.value == map['name'])
          : null,
      source: map['source'] != null
          ? enums.PagesVocabularySource.values
              .firstWhere((e) => e.value == map['source'])
          : null,
      title: map['title'],
      values: map['values'] != null
          ? List<PagesVocabularyValue>.from(
              map['values'].map((p) => PagesVocabularyValue.fromMap(p)))
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "app": app?.value,
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

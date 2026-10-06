part of '../../models.dart';

/// One closed value set with the words a human reads for it — so a UI never keeps its own copy of an enum this app enforces.
class PriceVocabulary implements Model {
  /// The app that owns this vocabulary.
  final String? app;

  /// Always true here: the values come from a CHECK constraint, so the list is exhaustive and a value outside it is stale data rather than a missing label.
  final bool? closed;

  /// The tone a value that carries none falls back to.
  final enums.PriceVocabularyTone? default_tone;

  /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? description;

  /// Vocabulary name, unique within the app.
  final enums.PriceVocabularyName? name;

  /// Where the values came from. 'schema' = a CHECK constraint in this app's own schema.json.
  final enums.PriceVocabularySource? source;

  /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? title;

  /// Every permitted value, in CHECK-constraint order — which is the order an author wrote and the order a select should offer.
  final List<PriceVocabularyValue>? values;

  PriceVocabulary({
    this.app,
    this.closed,
    this.default_tone,
    this.description,
    this.name,
    this.source,
    this.title,
    this.values,
  });

  factory PriceVocabulary.fromMap(Map<String, dynamic> map) {
    return PriceVocabulary(
      app: map['app']?.toString(),
      closed: map['closed'],
      default_tone: map['default_tone'] != null
          ? enums.PriceVocabularyTone.values
              .firstWhere((e) => e.value == map['default_tone'])
          : null,
      description: map['description'],
      name: map['name'] != null
          ? enums.PriceVocabularyName.values
              .firstWhere((e) => e.value == map['name'])
          : null,
      source: map['source'] != null
          ? enums.PriceVocabularySource.values
              .firstWhere((e) => e.value == map['source'])
          : null,
      title: map['title'],
      values: map['values'] != null
          ? List<PriceVocabularyValue>.from(
              map['values'].map((p) => PriceVocabularyValue.fromMap(p)))
          : null,
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

part of '../../models.dart';

///
class OrderVocabulary implements Model {
  /// This app's name — the part before the dot in the qualified id.
  final String? app;

  /// True when the values are the complete permitted set — always, since the routes enforce the ones the schema does not.
  final bool? closed;

  /// The tone an unlabelled value gets.
  final enums.OrderVocabularyTone? default_tone;

  /// Either one string, or a map of locale to string ({"en": …, "de": …}).
  final String? description;

  /// Which vocabulary this is — echoed from the path, and the part after the dot in the qualified id.
  final enums.OrderVocabularyName? name;

  /// Who enforces the set: 'schema' = a CHECK constraint, 'app' = the routes.
  final enums.OrderVocabularySource? source;

  /// Either one string, or a map of locale to string ({"en": …, "de": …}).
  final String? title;

  /// Every permitted value, in CONSTRAINT order — which for a status is lifecycle order, so a client can render them as a sequence without knowing one.
  final List<OrderVocabularyValue>? values;

  OrderVocabulary({
    this.app,
    this.closed,
    this.default_tone,
    this.description,
    this.name,
    this.source,
    this.title,
    this.values,
  });

  factory OrderVocabulary.fromMap(Map<String, dynamic> map) {
    return OrderVocabulary(
      app: map['app']?.toString(),
      closed: map['closed'],
      default_tone: map['default_tone'] != null
          ? enums.OrderVocabularyTone.values
              .firstWhere((e) => e.value == map['default_tone'])
          : null,
      description: map['description']?.toString(),
      name: map['name'] != null
          ? enums.OrderVocabularyName.values
              .firstWhere((e) => e.value == map['name'])
          : null,
      source: map['source'] != null
          ? enums.OrderVocabularySource.values
              .firstWhere((e) => e.value == map['source'])
          : null,
      title: map['title']?.toString(),
      values: map['values'] != null
          ? List<OrderVocabularyValue>.from(
              map['values'].map((p) => OrderVocabularyValue.fromMap(p)))
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

part of '../../models.dart';

///
class OrderListVocabulary implements Model {
  /// The app that owns this vocabulary.
  final String? app;

  /// The set is exhaustive: a value outside it is stale data, not a missing label.
  final bool? closed;

  /// The badge colour a value carries when it names none of its own.
  final enums.OrderListVocabularyDefaultTone? default_tone;

  /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? description;

  /// Vocabulary name, unique within the app.
  final enums.OrderListVocabularyName? name;

  /// 'schema' — a CHECK constraint owns the set; 'table' — the tenant's own rows do.
  final enums.OrderListVocabularySource? source;

  /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? title;

  /// Every permitted value, in the order a select should offer them.
  final List<OrderListVocabularyValue>? values;

  OrderListVocabulary({
    this.app,
    this.closed,
    this.default_tone,
    this.description,
    this.name,
    this.source,
    this.title,
    this.values,
  });

  factory OrderListVocabulary.fromMap(Map<String, dynamic> map) {
    return OrderListVocabulary(
      app: map['app']?.toString(),
      closed: map['closed'],
      default_tone: map['default_tone'] != null
          ? enums.OrderListVocabularyDefaultTone.values
              .firstWhere((e) => e.value == map['default_tone'])
          : null,
      description: map['description'],
      name: map['name'] != null
          ? enums.OrderListVocabularyName.values
              .firstWhere((e) => e.value == map['name'])
          : null,
      source: map['source'] != null
          ? enums.OrderListVocabularySource.values
              .firstWhere((e) => e.value == map['source'])
          : null,
      title: map['title'],
      values: map['values'] != null
          ? List<OrderListVocabularyValue>.from(
              map['values'].map((p) => OrderListVocabularyValue.fromMap(p)))
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

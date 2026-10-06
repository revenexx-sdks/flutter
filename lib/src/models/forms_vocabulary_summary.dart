part of '../../models.dart';

///
class FormsVocabularySummary implements Model {
  /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? description;

  /// Vocabulary name, unique within the app.
  final enums.FormsVocabularySummaryName? name;

  /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? title;

  FormsVocabularySummary({
    this.description,
    this.name,
    this.title,
  });

  factory FormsVocabularySummary.fromMap(Map<String, dynamic> map) {
    return FormsVocabularySummary(
      description: map['description'],
      name: map['name'] != null
          ? enums.FormsVocabularySummaryName.values
              .firstWhere((e) => e.value == map['name'])
          : null,
      title: map['title'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "description": description,
      "name": name?.value,
      "title": title,
    };
  }
}

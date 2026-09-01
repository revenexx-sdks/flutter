part of '../../models.dart';

///
class FormsVocabularyValue implements Model {
  /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? description;

  /// The value ends the lifecycle.
  final bool? xfinal;

  /// The value as the database stores and enforces it.
  final String? key;

  /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? title;

  /// Semantic badge colour. The client owns what each tone looks like.
  final enums.FormsVocabularyTone? tone;

  FormsVocabularyValue({
    this.description,
    this.xfinal,
    this.key,
    this.title,
    this.tone,
  });

  factory FormsVocabularyValue.fromMap(Map<String, dynamic> map) {
    return FormsVocabularyValue(
      description: map['description'],
      xfinal: map['final'],
      key: map['key']?.toString(),
      title: map['title'],
      tone: map['tone'] != null
          ? enums.FormsVocabularyTone.values
              .firstWhere((e) => e.value == map['tone'])
          : null,
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

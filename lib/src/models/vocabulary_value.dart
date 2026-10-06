part of '../../models.dart';

///
class VocabularyValue implements Model {
  /// A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? description;

  /// A terminal state — nothing moves out of it. False or absent on a vocabulary that is not a lifecycle.
  final bool? xfinal;

  /// The value as it is STORED and as the CHECK admits it — what a filter or a write sends.
  final String? key;

  /// A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? title;

  /// Which badge colour a UI should paint this value in.
  final enums.VocabularyTone? tone;

  VocabularyValue({
    this.description,
    this.xfinal,
    this.key,
    this.title,
    this.tone,
  });

  factory VocabularyValue.fromMap(Map<String, dynamic> map) {
    return VocabularyValue(
      description: map['description'],
      xfinal: map['final'],
      key: map['key']?.toString(),
      title: map['title'],
      tone: map['tone'] != null
          ? enums.VocabularyTone.values
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

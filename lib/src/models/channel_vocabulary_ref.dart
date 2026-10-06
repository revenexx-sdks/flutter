part of '../../models.dart';

///
class ChannelVocabularyRef implements Model {
  /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
  final Map? description;

  /// Vocabulary name, unique within the app.
  final enums.ChannelVocabularyRefName? name;

  /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
  final Map? title;

  ChannelVocabularyRef({
    this.description,
    this.name,
    this.title,
  });

  factory ChannelVocabularyRef.fromMap(Map<String, dynamic> map) {
    return ChannelVocabularyRef(
      description: map['description'],
      name: map['name'] != null
          ? enums.ChannelVocabularyRefName.values
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

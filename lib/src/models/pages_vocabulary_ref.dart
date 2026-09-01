part of '../../models.dart';

/// One vocabulary, named but not unpacked.
class PagesVocabularyRef implements Model {
  /// What the set is for, or null. A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? description;

  /// The name to fetch it by — the part after the dot in the qualified id.
  final String? name;

  /// What this set of values is called. A plain string, or a locale map keyed by language tag ({ "en": …, "de": … }). Read the requested tag, fall back to `en`.
  final Map<String, dynamic>? title;

  PagesVocabularyRef({
    this.description,
    this.name,
    this.title,
  });

  factory PagesVocabularyRef.fromMap(Map<String, dynamic> map) {
    return PagesVocabularyRef(
      description: map['description'],
      name: map['name']?.toString(),
      title: map['title'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "description": description,
      "name": name,
      "title": title,
    };
  }
}

part of '../../models.dart';

/// Everything but `code`. Sending a different one is a 400 rather than a silent no-op, because records already store it.
class LifecycleStageUpdateRequest implements Model {
  /// One line of help for whoever picks this value.
  final String? description;

  /// Localized descriptions, keyed by language tag ({ "en": …, "de": … }). Null when nobody translated this value — a client then falls back to `description`.
  final Map<String, dynamic>? descriptions;

  /// Promote this value; the previous default is demoted.
  final bool? is_default;

  /// Localized titles, keyed by language tag ({ "en": …, "de": … }). Null when nobody translated this value — a client then falls back to `title`.
  final Map<String, dynamic>? labels;

  /// Where it sits in the set, ascending.
  final int? position;

  /// The fallback name shown when no locale matches.
  final String? title;

  /// Semantic badge colour.
  final enums.LifecycleStageUpdateRequestTone? tone;

  LifecycleStageUpdateRequest({
    this.description,
    this.descriptions,
    this.is_default,
    this.labels,
    this.position,
    this.title,
    this.tone,
  });

  factory LifecycleStageUpdateRequest.fromMap(Map<String, dynamic> map) {
    return LifecycleStageUpdateRequest(
      description: map['description']?.toString(),
      descriptions: map['descriptions'],
      is_default: map['is_default'],
      labels: map['labels'],
      position: map['position'],
      title: map['title']?.toString(),
      tone: map['tone'] != null
          ? enums.LifecycleStageUpdateRequestTone.values
              .firstWhere((e) => e.value == map['tone'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "description": description,
      "descriptions": descriptions,
      "is_default": is_default,
      "labels": labels,
      "position": position,
      "title": title,
      "tone": tone?.value,
    };
  }
}

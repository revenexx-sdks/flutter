part of '../../models.dart';

/// Add one value to the lifecycle stages set. It is available to `organizations.lifecycle_stage` immediately.
class LifecycleStageCreateRequest implements Model {
  /// What `organizations.lifecycle_stage` will store. Lowercase, starting with a letter; immutable afterwards.
  final String code;

  /// One line of help for whoever picks this value.
  final String? description;

  /// Localized descriptions, keyed by language tag ({ "en": …, "de": … }). Null when nobody translated this value — a client then falls back to `description`.
  final Map<String, dynamic>? descriptions;

  /// Promote this value; the previous default is demoted in the same call.
  final bool? is_default;

  /// Localized titles, keyed by language tag ({ "en": …, "de": … }). Null when nobody translated this value — a client then falls back to `title`.
  final Map<String, dynamic>? labels;

  /// Where it sits in the set, ascending. Default 0.
  final int? position;

  /// The fallback name shown when no locale matches.
  final String title;

  /// Semantic badge colour.
  final enums.LifecycleStageCreateRequestTone? tone;

  LifecycleStageCreateRequest({
    required this.code,
    this.description,
    this.descriptions,
    this.is_default,
    this.labels,
    this.position,
    required this.title,
    this.tone,
  });

  factory LifecycleStageCreateRequest.fromMap(Map<String, dynamic> map) {
    return LifecycleStageCreateRequest(
      code: map['code'].toString(),
      description: map['description']?.toString(),
      descriptions: map['descriptions'],
      is_default: map['is_default'],
      labels: map['labels'],
      position: map['position'],
      title: map['title'].toString(),
      tone: map['tone'] != null
          ? enums.LifecycleStageCreateRequestTone.values
              .firstWhere((e) => e.value == map['tone'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
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

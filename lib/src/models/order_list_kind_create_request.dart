part of '../../models.dart';

///
class OrderListKindCreateRequest implements Model {
  /// What `lists.kind` will store. Lowercased on the way in and immutable afterwards — a merchant who wants a different code creates a new kind and moves the lists over.
  final String code;

  /// What this kind is for, in one sentence — the line a select shows under the title.
  final String? description;

  /// Localized descriptions, keyed by language tag.
  final Map<String, dynamic>? descriptions;

  /// Promote this kind; the previous default is demoted.
  final bool? is_default;

  /// Localized titles, keyed by language tag.
  final Map<String, dynamic>? labels;

  /// Where the kind sits in a select, ascending. Omitted means 0, which puts it first among the unpositioned.
  final int? position;

  /// What a person reads. `labels` adds the localized forms on top; this one is the fallback.
  final String title;

  /// Semantic badge colour. The client owns what each tone looks like; omitted means `neutral`.
  final enums.OrderListKindTone? tone;

  OrderListKindCreateRequest({
    required this.code,
    this.description,
    this.descriptions,
    this.is_default,
    this.labels,
    this.position,
    required this.title,
    this.tone,
  });

  factory OrderListKindCreateRequest.fromMap(Map<String, dynamic> map) {
    return OrderListKindCreateRequest(
      code: map['code'].toString(),
      description: map['description']?.toString(),
      descriptions: map['descriptions'],
      is_default: map['is_default'],
      labels: map['labels'],
      position: map['position'],
      title: map['title'].toString(),
      tone: map['tone'] != null
          ? enums.OrderListKindTone.values
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

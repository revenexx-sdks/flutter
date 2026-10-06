part of '../../models.dart';

///
class OrderListKindUpdateRequest implements Model {
  /// What this kind is for, in one sentence. Explicit null clears it.
  final String? description;

  /// Localized descriptions, keyed by language tag. Replaces the whole map rather than merging into it.
  final Map<String, dynamic>? descriptions;

  /// True promotes this kind and demotes the previous default — the same move POST /orderlists/kinds/{id}/make-default makes on its own.
  final bool? is_default;

  /// Localized titles, keyed by language tag. Replaces the whole map rather than merging into it.
  final Map<String, dynamic>? labels;

  /// Where the kind sits in a select, ascending.
  final int? position;

  /// What a person reads. A blank title is ignored rather than stored — a kind with no words is unreadable in every UI.
  final String? title;

  /// Semantic badge colour. The client owns what each tone looks like.
  final enums.OrderListKindTone? tone;

  OrderListKindUpdateRequest({
    this.description,
    this.descriptions,
    this.is_default,
    this.labels,
    this.position,
    this.title,
    this.tone,
  });

  factory OrderListKindUpdateRequest.fromMap(Map<String, dynamic> map) {
    return OrderListKindUpdateRequest(
      description: map['description']?.toString(),
      descriptions: map['descriptions'],
      is_default: map['is_default'],
      labels: map['labels'],
      position: map['position'],
      title: map['title']?.toString(),
      tone: map['tone'] != null
          ? enums.OrderListKindTone.values
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

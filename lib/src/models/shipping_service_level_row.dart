part of '../../models.dart';

///
class ShippingServiceLevelRow implements Model {
  /// What `shipping_carriers.service_level` stores. Immutable once created — renaming it would orphan every row carrying it.
  final String? code;

  /// When the row was created (UTC).
  final String? created_at;

  /// The sentence under the title, explaining when to pick this service level. Null when the title says enough.
  final String? description;

  /// Localized descriptions. A flat map keyed by locale — the Cockpit falls back to `en`. Null means the row has no translations and every client shows the untranslated column instead.
  final Map<String, dynamic>? descriptions;

  /// Row id, assigned by the database on insert.
  final String? id;

  /// The service level a fallback lands on. Exactly one row carries it, and POST …/make-default is what moves it.
  final bool? is_default;

  /// Seeded on install rather than typed by the merchant. Still renameable and still deletable; it only says where the row came from.
  final bool? is_system;

  /// Localized titles. A flat map keyed by locale — the Cockpit falls back to `en`. Null means the row has no translations and every client shows the untranslated column instead.
  final Map<String, dynamic>? labels;

  /// Sort order in a select — the collection is returned in it.
  final int? position;

  /// What an operator reads in a select. The name a merchant renames; the code underneath never moves.
  final String? title;

  /// Semantic badge colour for a UI listing the set. The client owns what each tone looks like.
  final enums.ShippingServiceLevelRowTone? tone;

  /// When the row was last written (UTC).
  final String? updated_at;

  ShippingServiceLevelRow({
    this.code,
    this.created_at,
    this.description,
    this.descriptions,
    this.id,
    this.is_default,
    this.is_system,
    this.labels,
    this.position,
    this.title,
    this.tone,
    this.updated_at,
  });

  factory ShippingServiceLevelRow.fromMap(Map<String, dynamic> map) {
    return ShippingServiceLevelRow(
      code: map['code']?.toString(),
      created_at: map['created_at']?.toString(),
      description: map['description']?.toString(),
      descriptions: map['descriptions'],
      id: map['id']?.toString(),
      is_default: map['is_default'],
      is_system: map['is_system'],
      labels: map['labels'],
      position: map['position'],
      title: map['title']?.toString(),
      tone: map['tone'] != null
          ? enums.ShippingServiceLevelRowTone.values
              .firstWhere((e) => e.value == map['tone'])
          : null,
      updated_at: map['updated_at']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "created_at": created_at,
      "description": description,
      "descriptions": descriptions,
      "id": id,
      "is_default": is_default,
      "is_system": is_system,
      "labels": labels,
      "position": position,
      "title": title,
      "tone": tone?.value,
      "updated_at": updated_at,
    };
  }
}

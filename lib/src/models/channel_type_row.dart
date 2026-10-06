part of '../../models.dart';

///
class ChannelTypeRow implements Model {
  /// What `channels.type` stores. Immutable once created — renaming it would orphan every channel that carries it, and there is no FK behind `channels.type` to cascade. A fresh install seeds storefront, punchout, marketplace, api, pos; a merchant may retire any of them and add their own.
  final String? code;

  /// When the row was inserted, set by the database.
  final String? created_at;

  /// A plain string, or a locale map keyed by language tag ({"en": …, "de": …}). Read the requested tag, fall back to `en`.
  final Map? description;

  /// A locale map keyed by language tag: {"en": …, "de": …}. Read the requested tag and fall back to the plain column beside it.
  final Map? descriptions;

  /// Row id, and the only handle GET/PUT/DELETE /channels/types/{id} accept. Not the type `code`. No example is published because no id this app could invent names a row a tenant holds.
  final String? id;

  /// The type a channel created without one gets. Exactly one row carries it.
  final bool? is_default;

  /// Seeded on install rather than added by the merchant. A flag about origin only — a system type is still renameable, reorderable and retirable.
  final bool? is_system;

  /// A locale map keyed by language tag: {"en": …, "de": …}. Read the requested tag and fall back to the plain column beside it.
  final Map? labels;

  /// Sort position. GET /channels/types always answers in this order and takes no `order` parameter. It is not unique and defaults to 0, so ties are broken by `code` — the order is total, which is what makes paging the list safe to walk.
  final int? position;

  /// The tenant that owns this row. Added by the data plane, not by this app: it is not a column of schema.json, so it is read-only and `?tenant_id=` is not a filter — the key is silently dropped and never reaches the `filter` echo.
  final String? tenant_id;

  /// The fallback name. `labels` carries the per-locale ones. Rows seeded before 0.7.0 hold a serialized locale map here instead (PE-452).
  final Map? title;

  /// Semantic badge colour for this type, for a client that renders the list. The client owns what each tone looks like; the value only says what it MEANS.
  final enums.ChannelTypeTone? tone;

  /// When the row was last written, set by the database.
  final String? updated_at;

  ChannelTypeRow({
    this.code,
    this.created_at,
    this.description,
    this.descriptions,
    this.id,
    this.is_default,
    this.is_system,
    this.labels,
    this.position,
    this.tenant_id,
    this.title,
    this.tone,
    this.updated_at,
  });

  factory ChannelTypeRow.fromMap(Map<String, dynamic> map) {
    return ChannelTypeRow(
      code: map['code']?.toString(),
      created_at: map['created_at']?.toString(),
      description: map['description'],
      descriptions: map['descriptions'],
      id: map['id']?.toString(),
      is_default: map['is_default'],
      is_system: map['is_system'],
      labels: map['labels'],
      position: map['position'],
      tenant_id: map['tenant_id']?.toString(),
      title: map['title'],
      tone: map['tone'] != null
          ? enums.ChannelTypeTone.values
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
      "tenant_id": tenant_id,
      "title": title,
      "tone": tone?.value,
      "updated_at": updated_at,
    };
  }
}

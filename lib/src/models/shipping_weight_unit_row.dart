part of '../../models.dart';

/// 
class ShippingWeightUnitRow implements Model {
    /// What a rate request names in `weight_unit`, and what a market's `weight_unit` setting stores. Immutable once created — renaming it would orphan every row carrying it.
    final String? code;

    /// When the row was created (UTC).
    final String? created_at;

    /// The sentence under the title, explaining when to pick this weight unit. Null when the title says enough.
    final String? description;

    /// Localized descriptions. A flat map keyed by locale — the Cockpit falls back to `en`. Null means the row has no translations and every client shows the untranslated column instead.
    final Map<String, dynamic>? descriptions;

    /// How many BASE units (kilograms) one of this unit weighs — a tonne is 1000, a gram 0.001, a pound 0.45359237. This number prices parcels: every weight matrix converts a request through it. Must be > 0; the base unit is fixed at 1 and rejects a change.
    final double? factor;

    /// Row id, assigned by the database on insert.
    final String? id;

    /// The anchor every other factor is expressed in. Exactly one row, fixed at install, not writable and not deletable — moving it would silently reprice every weight matrix.
    final bool? is_base;

    /// The unit a market whose `weight_unit` setting is unset keys its tiers in. Exactly one row carries it.
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
    final enums.ShippingWeightUnitRowTone? tone;

    /// When the row was last written (UTC).
    final String? updated_at;

    ShippingWeightUnitRow({
        this.code,
        this.created_at,
        this.description,
        this.descriptions,
        this.factor,
        this.id,
        this.is_base,
        this.is_default,
        this.is_system,
        this.labels,
        this.position,
        this.title,
        this.tone,
        this.updated_at,
    });

    factory ShippingWeightUnitRow.fromMap(Map<String, dynamic> map) {
        return ShippingWeightUnitRow(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            description: map['description']?.toString(),
            descriptions: map['descriptions'],
            factor: map['factor']?.toDouble(),
            id: map['id']?.toString(),
            is_base: map['is_base'],
            is_default: map['is_default'],
            is_system: map['is_system'],
            labels: map['labels'],
            position: map['position'],
            title: map['title']?.toString(),
            tone: map['tone'] != null ? enums.ShippingWeightUnitRowTone.values.firstWhere((e) => e.value == map['tone']) : null,
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
            "factor": factor,
            "id": id,
            "is_base": is_base,
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

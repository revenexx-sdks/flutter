part of '../../models.dart';

/// 
class ShippingWeightUnitCreateRequest implements Model {
    /// Lowercase letters, digits, - or _, starting with a letter. What a rate request names in `weight_unit`, and what a market's `weight_unit` setting stores. Immutable once created — renaming it would orphan every row carrying it.
    final String code;

    /// The sentence under the title, explaining when to pick this weight unit. Null when the title says enough.
    final String? description;

    /// Localized descriptions. A flat map keyed by locale — the Cockpit falls back to `en`. Null means the row has no translations and every client shows the untranslated column instead.
    final Map<String, dynamic>? descriptions;

    /// How many BASE units (kilograms) one of this unit weighs — a tonne is 1000, a gram 0.001, a pound 0.45359237. This number prices parcels: every weight matrix converts a request through it. Must be > 0; the base unit is fixed at 1 and rejects a change.
    final double factor;

    /// Promote this value on creation; the previous default is demoted.
    final bool? is_default;

    /// Localized titles. A flat map keyed by locale — the Cockpit falls back to `en`. Null means the row has no translations and every client shows the untranslated column instead.
    final Map<String, dynamic>? labels;

    /// Sort order in a select — the collection is returned in it.
    final int? position;

    /// What an operator reads in a select. The name a merchant renames; the code underneath never moves.
    final String title;

    /// Semantic badge colour for a UI listing the set. The client owns what each tone looks like.
    final enums.ShippingWeightUnitCreateRequestTone? tone;

    ShippingWeightUnitCreateRequest({
        required this.code,
        this.description,
        this.descriptions,
        required this.factor,
        this.is_default,
        this.labels,
        this.position,
        required this.title,
        this.tone,
    });

    factory ShippingWeightUnitCreateRequest.fromMap(Map<String, dynamic> map) {
        return ShippingWeightUnitCreateRequest(
            code: map['code'].toString(),
            description: map['description']?.toString(),
            descriptions: map['descriptions'],
            factor: map['factor'].toDouble(),
            is_default: map['is_default'],
            labels: map['labels'],
            position: map['position'],
            title: map['title'].toString(),
            tone: map['tone'] != null ? enums.ShippingWeightUnitCreateRequestTone.values.firstWhere((e) => e.value == map['tone']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "description": description,
            "descriptions": descriptions,
            "factor": factor,
            "is_default": is_default,
            "labels": labels,
            "position": position,
            "title": title,
            "tone": tone?.value,
        };
    }
}

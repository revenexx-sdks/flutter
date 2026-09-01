part of '../../models.dart';

/// 
class ShippingServiceLevelCreateRequest implements Model {
    /// Lowercase letters, digits, - or _, starting with a letter. What `shipping_carriers.service_level` stores. Immutable once created — renaming it would orphan every row carrying it.
    final String code;

    /// The sentence under the title, explaining when to pick this service level. Null when the title says enough.
    final String? description;

    /// Localized descriptions. A flat map keyed by locale — the Cockpit falls back to `en`. Null means the row has no translations and every client shows the untranslated column instead.
    final Map<String, dynamic>? descriptions;

    /// Promote this value on creation; the previous default is demoted.
    final bool? is_default;

    /// Localized titles. A flat map keyed by locale — the Cockpit falls back to `en`. Null means the row has no translations and every client shows the untranslated column instead.
    final Map<String, dynamic>? labels;

    /// Sort order in a select — the collection is returned in it.
    final int? position;

    /// What an operator reads in a select. The name a merchant renames; the code underneath never moves.
    final String title;

    /// Semantic badge colour for a UI listing the set. The client owns what each tone looks like.
    final enums.ShippingServiceLevelCreateRequestTone? tone;

    ShippingServiceLevelCreateRequest({
        required this.code,
        this.description,
        this.descriptions,
        this.is_default,
        this.labels,
        this.position,
        required this.title,
        this.tone,
    });

    factory ShippingServiceLevelCreateRequest.fromMap(Map<String, dynamic> map) {
        return ShippingServiceLevelCreateRequest(
            code: map['code'].toString(),
            description: map['description']?.toString(),
            descriptions: map['descriptions'],
            is_default: map['is_default'],
            labels: map['labels'],
            position: map['position'],
            title: map['title'].toString(),
            tone: map['tone'] != null ? enums.ShippingServiceLevelCreateRequestTone.values.firstWhere((e) => e.value == map['tone']) : null,
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

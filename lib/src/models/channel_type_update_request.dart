part of '../../models.dart';

/// 
class ChannelTypeUpdateRequest implements Model {
    /// Replace the one-sentence description. Sent as null it is cleared; omitted it is kept. `descriptions` carries the per-locale ones.
    final String? description;

    /// A locale map keyed by language tag: {"en": …, "de": …}. Read the requested tag and fall back to the plain column beside it.
    final Map? descriptions;

    /// Promote this type; the previous default is demoted. Only `true` does anything — sending false does not demote this type, because some type must hold the flag.
    final bool? is_default;

    /// A locale map keyed by language tag: {"en": …, "de": …}. Read the requested tag and fall back to the plain column beside it.
    final Map? labels;

    /// Move the type in the order GET /channels/types answers in.
    final int? position;

    /// Rename the type. A blank or non-string title is ignored, not refused — the stored one is kept.
    final String? title;

    /// Change the badge colour. A value outside the palette is ignored rather than refused, and the stored tone is kept.
    final enums.ChannelTypeTone? tone;

    ChannelTypeUpdateRequest({
        this.description,
        this.descriptions,
        this.is_default,
        this.labels,
        this.position,
        this.title,
        this.tone,
    });

    factory ChannelTypeUpdateRequest.fromMap(Map<String, dynamic> map) {
        return ChannelTypeUpdateRequest(
            description: map['description']?.toString(),
            descriptions: map['descriptions'],
            is_default: map['is_default'],
            labels: map['labels'],
            position: map['position'],
            title: map['title']?.toString(),
            tone: map['tone'] != null ? enums.ChannelTypeTone.values.firstWhere((e) => e.value == map['tone']) : null,
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

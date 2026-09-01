part of '../../models.dart';

/// 
class ChannelTypeCreateRequest implements Model {
    /// What `channels.type` will store. Lowercased and trimmed before it is written, and fixed from then on — a rename would orphan every channel carrying it.
    final String code;

    /// One sentence on what kind of place this type of channel is, for the merchant choosing between them. Plain text, in the tenant's primary language; `descriptions` carries the per-locale ones.
    final String? description;

    /// A locale map keyed by language tag: {"en": …, "de": …}. Read the requested tag and fall back to the plain column beside it.
    final Map? descriptions;

    /// Promote this type; the previous default is demoted. The default is the type a channel created without one gets.
    final bool? is_default;

    /// A locale map keyed by language tag: {"en": …, "de": …}. Read the requested tag and fall back to the plain column beside it.
    final Map? labels;

    /// Sort position (default 0). GET /channels/types answers in this order; ties fall back to the code.
    final int? position;

    /// The fallback name. `labels` carries the per-locale ones.
    final String title;

    /// Badge colour (default 'neutral'). A value outside the palette is ignored rather than refused.
    final enums.ChannelTypeTone? tone;

    ChannelTypeCreateRequest({
        required this.code,
        this.description,
        this.descriptions,
        this.is_default,
        this.labels,
        this.position,
        required this.title,
        this.tone,
    });

    factory ChannelTypeCreateRequest.fromMap(Map<String, dynamic> map) {
        return ChannelTypeCreateRequest(
            code: map['code'].toString(),
            description: map['description']?.toString(),
            descriptions: map['descriptions'],
            is_default: map['is_default'],
            labels: map['labels'],
            position: map['position'],
            title: map['title'].toString(),
            tone: map['tone'] != null ? enums.ChannelTypeTone.values.firstWhere((e) => e.value == map['tone']) : null,
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

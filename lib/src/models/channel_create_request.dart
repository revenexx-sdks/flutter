part of '../../models.dart';

/// 
class ChannelCreateRequest implements Model {
    /// Stable channel code, unique per tenant (e.g. shop, punchout-acme). It is the scope slug Baseline matches channel assignments on, so it is held to Baseline's own shape: lowercase a-z/0-9 first, then a-z/0-9/_/-, up to 63 characters. Anything else is refused — a code that cannot be a scope slug leaves the channel unable to filter.
    final String code;

    /// Mark as the default channel (default false). At most one channel carries it — setting it demotes the previous holder.
    final bool? is_default;

    /// Localized display names. A locale map keyed by language tag: {"en": …, "de": …}. Read the requested tag and fall back to the plain column beside it.
    final Map? labels;

    /// Display name.
    final String name;

    /// Sort position (default 0).
    final int? position;

    /// Lifecycle status (default 'active'). Whether the channel is in service. What 'inactive' DOES is the tenant's inactive_channel_behavior setting: on 'serve' it is a label and the channel still resolves, on 'block' /channels/context answers resolved:false with reason 'channel_inactive'. Served as the 'channels.statuses' vocabulary.
    final enums.ChannelStatus? status;

    /// Which channel type this is. One of the codes the tenant keeps under GET /channels/types — served with labels as the 'channels.types' vocabulary. Deliberately NOT an enum: the set is the tenant's own rows, not a CHECK constraint this repo could quote. A fresh install starts with storefront, punchout, marketplace, api, pos, which is why 'storefront' is the example here, but a merchant may rename or retire any of them and add their own (a feed or a print channel), so read the list rather than assuming it. Omitted on create it falls back to the type the tenant flagged as their default, never to a hardcoded value; a code the tenant does not keep is a 400 that names the ones they do.
    final String? type;

    /// Default 'inherit'. What it means, IN THIS CHANNEL, that a row carries no channel assignment at all — the per-channel override of the tenant-wide unassigned_channel_visibility setting. 'inherit' (the default) takes the tenant's answer and changes nothing. 'all' shows unassigned rows: everything is on sale unless somebody carved it out, which is what an open storefront wants and what Baseline's is_visible() does today. 'assigned_only' hides them until they are explicitly assigned — the negotiated assortment a punchout contract describes, and the one answer the generated _scoped view has no way to express, which is why POST /channels/visibility exists to apply it. Rows that DO carry assignments are unaffected either way. Served with its labels as the 'channels.unassigned-visibility' vocabulary.
    final enums.ChannelUnassignedVisibility? unassigned_visibility;

    ChannelCreateRequest({
        required this.code,
        this.is_default,
        this.labels,
        required this.name,
        this.position,
        this.status,
        this.type,
        this.unassigned_visibility,
    });

    factory ChannelCreateRequest.fromMap(Map<String, dynamic> map) {
        return ChannelCreateRequest(
            code: map['code'].toString(),
            is_default: map['is_default'],
            labels: map['labels'],
            name: map['name'].toString(),
            position: map['position'],
            status: map['status'] != null ? enums.ChannelStatus.values.firstWhere((e) => e.value == map['status']) : null,
            type: map['type']?.toString(),
            unassigned_visibility: map['unassigned_visibility'] != null ? enums.ChannelUnassignedVisibility.values.firstWhere((e) => e.value == map['unassigned_visibility']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "is_default": is_default,
            "labels": labels,
            "name": name,
            "position": position,
            "status": status?.value,
            "type": type,
            "unassigned_visibility": unassigned_visibility?.value,
        };
    }
}

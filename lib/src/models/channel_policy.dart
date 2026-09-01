part of '../../models.dart';

/// The visibility policy in force for the resolved channel.
class ChannelPolicy implements Model {
    /// Always 'channel' — the scope dimension this app provides.
    final String? dimension;

    /// The header name Baseline uses for this dimension. Through api.revenexx.com it does NOT reach the app — the gateway builds a fresh request downstream and forwards only its own headers — so use `?channel=` (or `channel` in the body of POST /channels/visibility) instead. The header path applies to a direct in-cluster call to the app.
    final String? header;

    /// The tenant setting, echoed: what `status = 'inactive'` DOES. 'serve' makes it a label and the channel still resolves; 'block' makes resolution fail with reason 'channel_inactive', and the policy then falls back to the tenant answer.
    final enums.ChannelInactiveBehavior? inactive_channel_behavior;

    /// The claim path in the forwarded identity token that names the active channel, tried after the query and the header and before the default channel.
    final String? jwt_path;

    /// How Baseline matches the dimension — 'single': a request is in exactly one channel at a time, never a set.
    final String? match_mode;

    /// The tenant setting, echoed: whether a request naming no channel is refused rather than falling back to the default channel. On POST /channels/visibility that refusal is the single 400 this app makes of its own accord.
    final bool? require_channel_context;

    /// Whether the answer came from the tenant setting or this channel's own override. Only a channel that actually resolved gets a say — a blocked or unknown channel falls back to 'tenant'.
    final enums.ChannelPolicySource? source;

    /// The tenant-wide baseline, so a caller can see what this channel overrode. Equal to `unassigned_visibility` whenever `source` is 'tenant'.
    final enums.ChannelPolicyTenantDefault? tenant_default;

    /// What a row with NO channel assignment means. 'all' is Baseline's open-by-default semantic, reproduced exactly; 'assigned_only' is the closed assortment the _scoped view cannot express.
    final enums.ChannelUnassignedPolicy? unassigned_visibility;

    ChannelPolicy({
        this.dimension,
        this.header,
        this.inactive_channel_behavior,
        this.jwt_path,
        this.match_mode,
        this.require_channel_context,
        this.source,
        this.tenant_default,
        this.unassigned_visibility,
    });

    factory ChannelPolicy.fromMap(Map<String, dynamic> map) {
        return ChannelPolicy(
            dimension: map['dimension']?.toString(),
            header: map['header']?.toString(),
            inactive_channel_behavior: map['inactive_channel_behavior'] != null ? enums.ChannelInactiveBehavior.values.firstWhere((e) => e.value == map['inactive_channel_behavior']) : null,
            jwt_path: map['jwt_path']?.toString(),
            match_mode: map['match_mode']?.toString(),
            require_channel_context: map['require_channel_context'],
            source: map['source'] != null ? enums.ChannelPolicySource.values.firstWhere((e) => e.value == map['source']) : null,
            tenant_default: map['tenant_default'] != null ? enums.ChannelPolicyTenantDefault.values.firstWhere((e) => e.value == map['tenant_default']) : null,
            unassigned_visibility: map['unassigned_visibility'] != null ? enums.ChannelUnassignedPolicy.values.firstWhere((e) => e.value == map['unassigned_visibility']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "dimension": dimension,
            "header": header,
            "inactive_channel_behavior": inactive_channel_behavior?.value,
            "jwt_path": jwt_path,
            "match_mode": match_mode,
            "require_channel_context": require_channel_context,
            "source": source?.value,
            "tenant_default": tenant_default?.value,
            "unassigned_visibility": unassigned_visibility?.value,
        };
    }
}

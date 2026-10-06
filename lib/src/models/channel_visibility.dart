part of '../../models.dart';

///
class ChannelVisibility implements Model {
  /// The channel that resolved, or null. Null on every answer where `resolved` is false — including the everyday one on a tenant that has not created a channel yet.
  final String? channel;

  /// The three tallies, so a caller can log or alert on a batch without walking it.
  final ChannelVisibilityCounts? counts;

  /// More than one channel claims is_default; the lowest position wins and this says so.
  final bool? default_ambiguous;

  /// Just the ids that must NOT be shown. The complement of `visible`; together they are every id sent, so a caller can assert nothing was dropped.
  final List<String>? hidden;

  /// One decision per row sent, in the order they were sent, so a caller can zip it back onto its own list without matching on id.
  final List<ChannelVisibilityDecision>? items;

  /// The visibility policy in force for the resolved channel.
  final ChannelPolicy? policy;

  /// Why not, when resolved is false. Null when it resolved.
  final enums.ChannelUnresolvedReason? reason;

  /// The channel code the request named, if any — lowercased and trimmed as it was matched.
  final String? requested;

  /// Whether a channel could be resolved for this request.
  final bool? resolved;

  /// Where the channel came from, in the order they are tried: 'body' (the `channel` field, POST /channels/visibility only), 'query' (`?channel=`), 'header' (x-revenexx-channel), 'jwt' (the scope_context.channel claim), then 'default' (the channel flagged is_default). Null when nothing resolved. Note that 'header' is not reachable through api.revenexx.com: the gateway builds a fresh request to the app and copies a fixed set of headers into it, and x-revenexx-channel is not among them — see `policy.header`.
  final enums.ChannelContextSource? source;

  /// Just the ids that may be shown, ready to filter a result set with — the same rows `items` marks visible:true, without the reasons.
  final List<String>? visible;

  ChannelVisibility({
    this.channel,
    this.counts,
    this.default_ambiguous,
    this.hidden,
    this.items,
    this.policy,
    this.reason,
    this.requested,
    this.resolved,
    this.source,
    this.visible,
  });

  factory ChannelVisibility.fromMap(Map<String, dynamic> map) {
    return ChannelVisibility(
      channel: map['channel']?.toString(),
      counts: map['counts'] != null
          ? ChannelVisibilityCounts.fromMap(map['counts'])
          : null,
      default_ambiguous: map['default_ambiguous'],
      hidden: List.from(map['hidden'] ?? []),
      items: map['items'] != null
          ? List<ChannelVisibilityDecision>.from(
              map['items'].map((p) => ChannelVisibilityDecision.fromMap(p)))
          : null,
      policy:
          map['policy'] != null ? ChannelPolicy.fromMap(map['policy']) : null,
      reason: map['reason'] != null
          ? enums.ChannelUnresolvedReason.values
              .firstWhere((e) => e.value == map['reason'])
          : null,
      requested: map['requested']?.toString(),
      resolved: map['resolved'],
      source: map['source'] != null
          ? enums.ChannelContextSource.values
              .firstWhere((e) => e.value == map['source'])
          : null,
      visible: List.from(map['visible'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "channel": channel,
      "counts": counts?.toMap(),
      "default_ambiguous": default_ambiguous,
      "hidden": hidden,
      "items": items?.map((p) => p.toMap()).toList(),
      "policy": policy?.toMap(),
      "reason": reason?.value,
      "requested": requested,
      "resolved": resolved,
      "source": source?.value,
      "visible": visible,
    };
  }
}

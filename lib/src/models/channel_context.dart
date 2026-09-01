part of '../../models.dart';

///
class ChannelContext implements Model {
  /// The channel that resolved, or null. Null on every answer where `resolved` is false — including the everyday one on a tenant that has not created a channel yet.
  final String? channel;

  /// More than one channel claims is_default; the lowest position wins and this says so.
  final bool? default_ambiguous;

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

  ChannelContext({
    this.channel,
    this.default_ambiguous,
    this.policy,
    this.reason,
    this.requested,
    this.resolved,
    this.source,
  });

  factory ChannelContext.fromMap(Map<String, dynamic> map) {
    return ChannelContext(
      channel: map['channel']?.toString(),
      default_ambiguous: map['default_ambiguous'],
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
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "channel": channel,
      "default_ambiguous": default_ambiguous,
      "policy": policy?.toMap(),
      "reason": reason?.value,
      "requested": requested,
      "resolved": resolved,
      "source": source?.value,
    };
  }
}

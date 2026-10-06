part of '../../models.dart';

///
class ChannelVisibilityRequest implements Model {
  /// The channel `code` (the scope slug) to evaluate against, trimmed and lowercased before it is matched. Optional, and through api.revenexx.com it is the ONLY way to name a channel explicitly: the x-revenexx-channel header is not forwarded to the app, so without this the resolution falls through to the scope_context.channel claim and then to the tenant's default channel. A code no channel carries is not an error — the answer is resolved:false with reason 'unknown_channel', so a caller can tell it from an outage.
  final String? channel;

  /// The rows to decide on, each with the channel assignments Baseline holds for it. POST /api/v1/scopes/lookup?dimension=channel answers in exactly this shape. At most 500 — Baseline's own lookup ceiling.
  final List<ChannelVisibilityItem> items;

  ChannelVisibilityRequest({
    this.channel,
    required this.items,
  });

  factory ChannelVisibilityRequest.fromMap(Map<String, dynamic> map) {
    return ChannelVisibilityRequest(
      channel: map['channel']?.toString(),
      items: List<ChannelVisibilityItem>.from(
          map['items'].map((p) => ChannelVisibilityItem.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "channel": channel,
      "items": items.map((p) => p.toMap()).toList(),
    };
  }
}

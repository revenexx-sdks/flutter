part of '../../models.dart';

/// 
class ChannelVisibilityItem implements Model {
    /// The row's channel scope slugs. Empty or absent means unassigned — the case the policy decides.
    final List<String>? channels;

    /// The row id, echoed back on the decision. Opaque to this app — it is never looked up, so any non-empty string is accepted and nothing has to exist. In practice it is the entity id POST /api/v1/scopes/lookup answered with, which is what the example shows.
    final String id;

    ChannelVisibilityItem({
        this.channels,
        required this.id,
    });

    factory ChannelVisibilityItem.fromMap(Map<String, dynamic> map) {
        return ChannelVisibilityItem(
            channels: List.from(map['channels'] ?? []),
            id: map['id'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "channels": channels,
            "id": id,
        };
    }
}

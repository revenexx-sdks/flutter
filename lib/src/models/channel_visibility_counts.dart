part of '../../models.dart';

/// The three tallies, so a caller can log or alert on a batch without walking it.
class ChannelVisibilityCounts implements Model {
    /// How many must not be. A batch where this equals `total` and the reason is no_channel_context means the channel did not resolve, not that the assortment is empty.
    final int? hidden;

    /// How many rows were decided — the length of the `items` sent.
    final int? total;

    /// How many may be shown.
    final int? visible;

    ChannelVisibilityCounts({
        this.hidden,
        this.total,
        this.visible,
    });

    factory ChannelVisibilityCounts.fromMap(Map<String, dynamic> map) {
        return ChannelVisibilityCounts(
            hidden: map['hidden'],
            total: map['total'],
            visible: map['visible'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "hidden": hidden,
            "total": total,
            "visible": visible,
        };
    }
}

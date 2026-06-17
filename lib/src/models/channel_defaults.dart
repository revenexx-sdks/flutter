part of '../../models.dart';

/// 
class ChannelDefaults implements Model {
    /// Channel codes created by this call.
    final List<String>? created;

    /// Default channel codes that already existed.
    final List<String>? existing;

    ChannelDefaults({
        this.created,
        this.existing,
    });

    factory ChannelDefaults.fromMap(Map<String, dynamic> map) {
        return ChannelDefaults(
            created: List.from(map['created'] ?? []),
            existing: List.from(map['existing'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created": created,
            "existing": existing,
        };
    }
}

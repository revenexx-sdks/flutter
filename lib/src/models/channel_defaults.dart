part of '../../models.dart';

/// 
class ChannelDefaults implements Model {
    /// Channel codes created by this call.
    final List<String>? created;

    /// Default channel codes that already existed.
    final List<String>? existing;

    /// The same answer for the channel types, which are seeded first because the seeded channel carries one.
    final ChannelTypeDefaults? types;

    ChannelDefaults({
        this.created,
        this.existing,
        this.types,
    });

    factory ChannelDefaults.fromMap(Map<String, dynamic> map) {
        return ChannelDefaults(
            created: List.from(map['created'] ?? []),
            existing: List.from(map['existing'] ?? []),
            types: map['types'] != null ? ChannelTypeDefaults.fromMap(map['types']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created": created,
            "existing": existing,
            "types": types?.toMap(),
        };
    }
}

part of '../../models.dart';

/// The same answer for the channel types, which are seeded first because the seeded channel carries one.
class ChannelTypeDefaults implements Model {
    /// Channel type codes this call wrote. A fresh tenant gets all 5; a settled one gets none.
    final List<String>? created;

    /// Seeded type codes that were already there. Note the consequence of "idempotent" being keyed on the code: a seeded type the merchant deliberately retired is re-created by the next call and comes back under `created`. Types the merchant added themselves are never touched.
    final List<String>? existing;

    ChannelTypeDefaults({
        this.created,
        this.existing,
    });

    factory ChannelTypeDefaults.fromMap(Map<String, dynamic> map) {
        return ChannelTypeDefaults(
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

part of '../../models.dart';

/// What seeding found and what it had to write. Idempotent twice over: by code, and by the existence of ANY default list — so changing default_price_list_code later never produces a second default.
class PriceListDefaultsResponse implements Model {
    /// Codes of the lists this call created — empty on a tenant that was already seeded.
    final List<String>? created;

    /// Codes of the lists that were already there, so nothing was written for them.
    final List<String>? existing;

    PriceListDefaultsResponse({
        this.created,
        this.existing,
    });

    factory PriceListDefaultsResponse.fromMap(Map<String, dynamic> map) {
        return PriceListDefaultsResponse(
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

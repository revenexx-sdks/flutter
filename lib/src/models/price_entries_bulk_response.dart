part of '../../models.dart';

/// Counts, not rows: an import chunk of 5000 does not echo 5000 entries back.
class PriceEntriesBulkResponse implements Model {
    /// Rows inserted — rungs this list did not have.
    final int? created;

    /// The mode actually applied — the request's, or the default `upsert`.
    final enums.PriceEntriesBulkMode? mode;

    /// Existing rungs rewritten in place (always 0 in append mode).
    final int? updated;

    PriceEntriesBulkResponse({
        this.created,
        this.mode,
        this.updated,
    });

    factory PriceEntriesBulkResponse.fromMap(Map<String, dynamic> map) {
        return PriceEntriesBulkResponse(
            created: map['created'],
            mode: map['mode'] != null ? enums.PriceEntriesBulkMode.values.firstWhere((e) => e.value == map['mode']) : null,
            updated: map['updated'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created": created,
            "mode": mode?.value,
            "updated": updated,
        };
    }
}

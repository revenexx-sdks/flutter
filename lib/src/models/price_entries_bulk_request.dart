part of '../../models.dart';

/// A chunk of an import. Unlike the replace call it never wipes the list.
class PriceEntriesBulkRequest implements Model {
    /// At most 5000 rows per call — send a large book in chunks.
    final List<PriceEntryReplaceItem> entries;

    /// Default 'upsert': a row naming a rung the list already has (same product/sku AND quantity_min) updates it. 'append' always inserts — a re-run then duplicates the ladder, which is what makes an ambiguous tier table.
    final enums.PriceEntriesBulkMode? mode;

    PriceEntriesBulkRequest({
        required this.entries,
        this.mode,
    });

    factory PriceEntriesBulkRequest.fromMap(Map<String, dynamic> map) {
        return PriceEntriesBulkRequest(
            entries: List<PriceEntryReplaceItem>.from(map['entries'].map((p) => PriceEntryReplaceItem.fromMap(p))),
            mode: map['mode'] != null ? enums.PriceEntriesBulkMode.values.firstWhere((e) => e.value == map['mode']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "entries": entries.map((p) => p.toMap()).toList(),
            "mode": mode?.value,
        };
    }
}

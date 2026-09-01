part of '../../models.dart';

/// The generated ladder as stored, plus the rounding policy that shaped it.
class PriceEntriesLadderResponse implements Model {
    /// The generated rungs, one per requested quantity, ascending — this IS the item's ladder in this list.
    final List<PriceEntry>? entries;

    /// Decimals each tier was rounded to before snapping — the tenant's price_precision.
    final int? precision;

    /// true when the item's existing entries in this list were removed first (the default), so the answer is the whole ladder rather than an addition to one.
    final bool? replaced;

    /// The price ending each tier was snapped to — the request's, or the tenant's bulk_adjust_rounding.
    final enums.PriceEndingRule? rounding;

    /// How they landed on the last decimal — the tenant's rounding_mode.
    final enums.PriceRoundingMode? rounding_mode;

    PriceEntriesLadderResponse({
        this.entries,
        this.precision,
        this.replaced,
        this.rounding,
        this.rounding_mode,
    });

    factory PriceEntriesLadderResponse.fromMap(Map<String, dynamic> map) {
        return PriceEntriesLadderResponse(
            entries: map['entries'] != null ? List<PriceEntry>.from(map['entries'].map((p) => PriceEntry.fromMap(p))) : null,
            precision: map['precision'],
            replaced: map['replaced'],
            rounding: map['rounding'] != null ? enums.PriceEndingRule.values.firstWhere((e) => e.value == map['rounding']) : null,
            rounding_mode: map['rounding_mode'] != null ? enums.PriceRoundingMode.values.firstWhere((e) => e.value == map['rounding_mode']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "entries": entries?.map((p) => p.toMap()).toList(),
            "precision": precision,
            "replaced": replaced,
            "rounding": rounding?.value,
            "rounding_mode": rounding_mode?.value,
        };
    }
}

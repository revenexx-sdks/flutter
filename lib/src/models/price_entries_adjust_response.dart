part of '../../models.dart';

/// What the change did (or would do, on a dry run), plus the rounding policy it was computed under — so a dialog can show a merchant the before/after before it commits.
class PriceEntriesAdjustResponse implements Model {
  /// Echo of the request: true means nothing was written.
  final bool? dry_run;

  /// Priced entries the filter selected. On-request entries are never counted — a percentage of "ask us" is not a number.
  final int? matched;

  /// Decimals the new prices were rounded to before snapping — the tenant’s price_precision.
  final int? precision;

  /// The first 50 changes, before and after. `matched` says how many there were in total.
  final List<PriceAdjustPreviewRow>? preview;

  /// true when more than 50 entries changed, so `preview` is a sample rather than the whole set.
  final bool? preview_truncated;

  /// The price list this answer came out of — enough to link to it or to explain the number to a merchant ("this came from the dealer list").
  final PriceListRef? price_list;

  /// The price ending the results were snapped to — the request’s, or the tenant’s bulk_adjust_rounding where it sent none.
  final enums.PriceEntriesAdjustResponseRounding? rounding;

  /// How they landed on the last decimal — the tenant’s rounding_mode.
  final enums.PriceEntriesAdjustResponseRoundingMode? rounding_mode;

  /// Rows actually written — 0 on a dry run, and a price that came out unchanged is not rewritten.
  final int? updated;

  PriceEntriesAdjustResponse({
    this.dry_run,
    this.matched,
    this.precision,
    this.preview,
    this.preview_truncated,
    this.price_list,
    this.rounding,
    this.rounding_mode,
    this.updated,
  });

  factory PriceEntriesAdjustResponse.fromMap(Map<String, dynamic> map) {
    return PriceEntriesAdjustResponse(
      dry_run: map['dry_run'],
      matched: map['matched'],
      precision: map['precision'],
      preview: map['preview'] != null
          ? List<PriceAdjustPreviewRow>.from(
              map['preview'].map((p) => PriceAdjustPreviewRow.fromMap(p)))
          : null,
      preview_truncated: map['preview_truncated'],
      price_list: map['price_list'] != null
          ? PriceListRef.fromMap(map['price_list'])
          : null,
      rounding: map['rounding'] != null
          ? enums.PriceEntriesAdjustResponseRounding.values
              .firstWhere((e) => e.value == map['rounding'])
          : null,
      rounding_mode: map['rounding_mode'] != null
          ? enums.PriceEntriesAdjustResponseRoundingMode.values
              .firstWhere((e) => e.value == map['rounding_mode'])
          : null,
      updated: map['updated'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "dry_run": dry_run,
      "matched": matched,
      "precision": precision,
      "preview": preview?.map((p) => p.toMap()).toList(),
      "preview_truncated": preview_truncated,
      "price_list": price_list?.toMap(),
      "rounding": rounding?.value,
      "rounding_mode": rounding_mode?.value,
      "updated": updated,
    };
  }
}

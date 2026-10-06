part of '../../models.dart';

/// Where in the result set this answer sits. `limit` and `offset` are the values that were APPLIED, not the ones that were asked for — the data plane clamps rather than refuses, so an out-of-range or unparseable value comes back corrected here instead of as a 400.
class MarketsPage implements Model {
  /// True when `offset + returned < total`, i.e. another page exists. Cheaper to branch on than comparing the three numbers yourself.
  final bool? hasMore;

  /// Page size actually applied. A request over 200 is clamped to 200, one under 1 (or one that is not a number) to the 50-row default.
  final int? limit;

  /// Row offset actually applied. A negative offset is clamped to 0.
  final int? offset;

  /// Rows in `items` on this page. Lower than `limit` on the last page.
  final int? returned;

  /// Rows matching the filter across ALL pages, ignoring limit and offset — the number to paginate against.
  final int? total;

  MarketsPage({
    this.hasMore,
    this.limit,
    this.offset,
    this.returned,
    this.total,
  });

  factory MarketsPage.fromMap(Map<String, dynamic> map) {
    return MarketsPage(
      hasMore: map['hasMore'],
      limit: map['limit'],
      offset: map['offset'],
      returned: map['returned'],
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "hasMore": hasMore,
      "limit": limit,
      "offset": offset,
      "returned": returned,
      "total": total,
    };
  }
}

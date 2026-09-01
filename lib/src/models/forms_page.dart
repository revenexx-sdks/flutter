part of '../../models.dart';

/// Where this page sits in the result set. Everything needed to fetch the next one is here, so a client never has to guess whether it has seen everything.
class FormsPage implements Model {
  /// True while `offset + returned < total`: another page follows, at `offset + returned`.
  final bool? hasMore;

  /// The page size that was applied — the `limit` parameter after clamping to 1…200, or 50 when none was given.
  final int? limit;

  /// How many matching rows were skipped before this page.
  final int? offset;

  /// How many rows are in `items` — below `limit` exactly on the last page.
  final int? returned;

  /// How many rows match the filter in total, ignoring the page. This is the number to show a merchant; `returned` is only what fitted.
  final int? total;

  FormsPage({
    this.hasMore,
    this.limit,
    this.offset,
    this.returned,
    this.total,
  });

  factory FormsPage.fromMap(Map<String, dynamic> map) {
    return FormsPage(
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

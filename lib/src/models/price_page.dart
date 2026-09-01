part of '../../models.dart';

/// Where this page sits in the full result set. Rows beyond `limit` are not returned and are not lost — ask for the next page with `offset`.
class PricePage implements Model {
    /// true when `offset + returned < total` — there is another page to fetch.
    final bool? hasMore;

    /// Page size actually applied — the `limit` you sent, clamped to 1…200 (default 50).
    final int? limit;

    /// Row offset actually applied (default 0).
    final int? offset;

    /// Rows in `items` on this page.
    final int? returned;

    /// Rows matching the filter across all pages, not just this one.
    final int? total;

    PricePage({
        this.hasMore,
        this.limit,
        this.offset,
        this.returned,
        this.total,
    });

    factory PricePage.fromMap(Map<String, dynamic> map) {
        return PricePage(
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

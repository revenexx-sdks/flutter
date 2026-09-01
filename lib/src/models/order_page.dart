part of '../../models.dart';

/// Where this answer sits in the whole result set.
class OrderPage implements Model {
    /// Whether another page exists after this one (offset + returned < total). The one field a "load more" button should read.
    final bool? hasMore;

    /// The page size that was applied. A requested limit above 200 is CLAMPED to 200 rather than refused, so this is the number to believe, not the one you sent.
    final int? limit;

    /// The row offset that was applied.
    final int? offset;

    /// How many rows are in `items` right here — less than `limit` on the last page.
    final int? returned;

    /// How many rows match the filter in total, ignoring limit and offset. This is what a page count is computed from.
    final int? total;

    OrderPage({
        this.hasMore,
        this.limit,
        this.offset,
        this.returned,
        this.total,
    });

    factory OrderPage.fromMap(Map<String, dynamic> map) {
        return OrderPage(
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

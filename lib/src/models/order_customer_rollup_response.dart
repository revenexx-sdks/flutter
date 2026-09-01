part of '../../models.dart';

/// 
class OrderCustomerRollupResponse implements Model {
    /// The anchor the windows were measured from — echoed so a paging caller can pin it.
    final String? as_of;

    /// Where to resume, when `done` is false — the id of the last order this call read. Null once the scan finished. Send it back unchanged, together with the same as_of.
    final String? cursor;

    /// True = the whole set was scanned and this answer is complete. False = the scan hit its time budget: send `cursor` back to continue, and MERGE the parts (every number is additive, min for first_order_at, max for last_order_at, union for currencies).
    final bool? done;

    /// One row per organization that appeared on a counted order, sorted by id. A company with no counted order is absent — this answer does not carry zero rows.
    final List<OrderCustomerRollup>? items;

    /// How many order rows this call read, attributed or not. It is the cost of the call, and on a partial answer the size of the part.
    final int? orders_scanned;

    /// Orders read that carry no organization_id — private and guest orders. They are real revenue and are deliberately not attributed to anybody, so they appear here and in no row of items.
    final int? orders_without_organization;

    /// How many rows `items` carries. On a partial answer this counts what THIS part saw, not the whole tenant.
    final int? organizations;

    /// The statuses that were counted, echoed — the default set unless the request named its own.
    final List<String>? statuses;

    /// The rolling windows the *_30d / *_90d / *_365d numbers were measured over, in days. Echoed so a caller reads the numbers with the right labels instead of hard-coding three of them.
    final List<int>? windows;

    OrderCustomerRollupResponse({
        this.as_of,
        this.cursor,
        this.done,
        this.items,
        this.orders_scanned,
        this.orders_without_organization,
        this.organizations,
        this.statuses,
        this.windows,
    });

    factory OrderCustomerRollupResponse.fromMap(Map<String, dynamic> map) {
        return OrderCustomerRollupResponse(
            as_of: map['as_of']?.toString(),
            cursor: map['cursor']?.toString(),
            done: map['done'],
            items: map['items'] != null ? List<OrderCustomerRollup>.from(map['items'].map((p) => OrderCustomerRollup.fromMap(p))) : null,
            orders_scanned: map['orders_scanned'],
            orders_without_organization: map['orders_without_organization'],
            organizations: map['organizations'],
            statuses: List.from(map['statuses'] ?? []),
            windows: List.from(map['windows'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "as_of": as_of,
            "cursor": cursor,
            "done": done,
            "items": items?.map((p) => p.toMap()).toList(),
            "orders_scanned": orders_scanned,
            "orders_without_organization": orders_without_organization,
            "organizations": organizations,
            "statuses": statuses,
            "windows": windows,
        };
    }
}

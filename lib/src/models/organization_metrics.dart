part of '../../models.dart';

/// What an organization has BOUGHT, materialized from the orders app. One row per organization — including all-zero rows for companies that never ordered, so a 'never bought anything' rule has something to match.
class OrganizationMetrics implements Model {
    /// revenue_total / order_count, computed here from the sums rather than averaged upstream. Zero when there are no orders.
    final double? avg_order_value;

    /// revenue_365d / order_count_365d. Zero when there were none in the window.
    final double? avg_order_value_365d;

    /// When this row was last written. The projection is materialized, so this is how stale the numbers are.
    final String? computed_at;

    /// When the projection row first appeared.
    final String? created_at;

    /// The single ISO 4217 currency all counted orders were in. NULL when there were none, and also when there were several — read `currency_mixed` to tell those two apart.
    final String? currency;

    /// True when this company ordered in more than one currency. The sums are still stored (dropping money is worse), but they are not comparable against a threshold, and a rule reading revenue should say so.
    final bool? currency_mixed;

    /// When this company first ordered. Null if it never has — that is what makes it usable as "is this a customer at all?".
    final String? first_order_at;

    /// Primary key of the projection row.
    final String? id;

    /// When this company last ordered. Null if it never has, which is why the virtual `days_since_last_order` rule field never matches those companies: use `last_order_at is_empty` for them.
    final String? last_order_at;

    /// Orders ever counted for this company.
    final int? order_count;

    /// Orders in the 30 days before `orders_as_of`. A rolling window, not a calendar month.
    final int? order_count_30d;

    /// Orders in the 365 days before `orders_as_of`.
    final int? order_count_365d;

    /// Orders in the 90 days before `orders_as_of`.
    final int? order_count_90d;

    /// The instant the rolling windows were measured from. Pinned across a chunked refresh, so a multi-call pass cannot let the windows slide underneath it.
    final String? orders_as_of;

    /// The company these numbers describe. One row per organization, and rows exist for companies that never ordered — all zeros rather than missing, so a "never bought" rule matches something.
    final String? organization_id;

    /// Revenue in the 30 days before `orders_as_of`.
    final double? revenue_30d;

    /// Revenue in the 365 days before `orders_as_of`. The usual "how big is this customer" number, and the one a key-account rule should read.
    final double? revenue_365d;

    /// Revenue in the 90 days before `orders_as_of`.
    final double? revenue_90d;

    /// Revenue ever counted, in `currency`. Which orders count is the orders app's decision, not this app's.
    final double? revenue_total;

    /// The tenant this row belongs to — the store slug, not an id. Set by the platform from the authenticated context, never by a caller; a write that carries it is ignored, and no request can read another tenant's rows by sending a different one.
    final String? tenant_id;

    /// When the row last changed. Unchanged numbers are not rewritten, so this can lag `computed_at`.
    final String? updated_at;

    OrganizationMetrics({
        this.avg_order_value,
        this.avg_order_value_365d,
        this.computed_at,
        this.created_at,
        this.currency,
        this.currency_mixed,
        this.first_order_at,
        this.id,
        this.last_order_at,
        this.order_count,
        this.order_count_30d,
        this.order_count_365d,
        this.order_count_90d,
        this.orders_as_of,
        this.organization_id,
        this.revenue_30d,
        this.revenue_365d,
        this.revenue_90d,
        this.revenue_total,
        this.tenant_id,
        this.updated_at,
    });

    factory OrganizationMetrics.fromMap(Map<String, dynamic> map) {
        return OrganizationMetrics(
            avg_order_value: map['avg_order_value']?.toDouble(),
            avg_order_value_365d: map['avg_order_value_365d']?.toDouble(),
            computed_at: map['computed_at']?.toString(),
            created_at: map['created_at']?.toString(),
            currency: map['currency']?.toString(),
            currency_mixed: map['currency_mixed'],
            first_order_at: map['first_order_at']?.toString(),
            id: map['id']?.toString(),
            last_order_at: map['last_order_at']?.toString(),
            order_count: map['order_count'],
            order_count_30d: map['order_count_30d'],
            order_count_365d: map['order_count_365d'],
            order_count_90d: map['order_count_90d'],
            orders_as_of: map['orders_as_of']?.toString(),
            organization_id: map['organization_id']?.toString(),
            revenue_30d: map['revenue_30d']?.toDouble(),
            revenue_365d: map['revenue_365d']?.toDouble(),
            revenue_90d: map['revenue_90d']?.toDouble(),
            revenue_total: map['revenue_total']?.toDouble(),
            tenant_id: map['tenant_id']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "avg_order_value": avg_order_value,
            "avg_order_value_365d": avg_order_value_365d,
            "computed_at": computed_at,
            "created_at": created_at,
            "currency": currency,
            "currency_mixed": currency_mixed,
            "first_order_at": first_order_at,
            "id": id,
            "last_order_at": last_order_at,
            "order_count": order_count,
            "order_count_30d": order_count_30d,
            "order_count_365d": order_count_365d,
            "order_count_90d": order_count_90d,
            "orders_as_of": orders_as_of,
            "organization_id": organization_id,
            "revenue_30d": revenue_30d,
            "revenue_365d": revenue_365d,
            "revenue_90d": revenue_90d,
            "revenue_total": revenue_total,
            "tenant_id": tenant_id,
            "updated_at": updated_at,
        };
    }
}

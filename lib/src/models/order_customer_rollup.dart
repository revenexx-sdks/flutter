part of '../../models.dart';

/// Additive order facts for one organization. Average order value is revenue_total / order_count.
class OrderCustomerRollup implements Model {
    /// Every currency seen on the counted orders, sorted. MORE THAN ONE MEANS THE SUMS MIX CURRENCIES — nothing here converts, so a two-currency row's revenue_total is a sum of unlike numbers and should be shown per currency or not at all.
    final List<String>? currencies;

    /// When this company first ordered — placed_at where there is one, otherwise created_at. Null cannot happen on a row that exists, but the field is nullable because the columns behind it are.
    final String? first_order_at;

    /// When they last ordered. Together with as_of this is the recency a churn rule reads.
    final String? last_order_at;

    /// How many orders of this company were counted — orders in one of the counted statuses, over all time.
    final int? order_count;

    /// Orders in the 30 days before as_of.
    final int? order_count_30d;

    /// Orders in the 365 days before as_of — the rolling year a "still active" rule usually asks about.
    final int? order_count_365d;

    /// Orders in the 90 days before as_of.
    final int? order_count_90d;

    /// The company these facts belong to — the id the customers app knows it by. Every row of the answer carries one; orders without an organization are counted in orders_without_organization instead.
    final String? organization_id;

    /// Revenue in the 30 days before as_of.
    final double? revenue_30d;

    /// Revenue in the 365 days before as_of.
    final double? revenue_365d;

    /// Revenue in the 90 days before as_of.
    final double? revenue_90d;

    /// Sum of grand_total over the counted orders. Gross: it includes tax and shipping, because grand_total does.
    final double? revenue_total;

    OrderCustomerRollup({
        this.currencies,
        this.first_order_at,
        this.last_order_at,
        this.order_count,
        this.order_count_30d,
        this.order_count_365d,
        this.order_count_90d,
        this.organization_id,
        this.revenue_30d,
        this.revenue_365d,
        this.revenue_90d,
        this.revenue_total,
    });

    factory OrderCustomerRollup.fromMap(Map<String, dynamic> map) {
        return OrderCustomerRollup(
            currencies: List.from(map['currencies'] ?? []),
            first_order_at: map['first_order_at']?.toString(),
            last_order_at: map['last_order_at']?.toString(),
            order_count: map['order_count'],
            order_count_30d: map['order_count_30d'],
            order_count_365d: map['order_count_365d'],
            order_count_90d: map['order_count_90d'],
            organization_id: map['organization_id']?.toString(),
            revenue_30d: map['revenue_30d']?.toDouble(),
            revenue_365d: map['revenue_365d']?.toDouble(),
            revenue_90d: map['revenue_90d']?.toDouble(),
            revenue_total: map['revenue_total']?.toDouble(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "currencies": currencies,
            "first_order_at": first_order_at,
            "last_order_at": last_order_at,
            "order_count": order_count,
            "order_count_30d": order_count_30d,
            "order_count_365d": order_count_365d,
            "order_count_90d": order_count_90d,
            "organization_id": organization_id,
            "revenue_30d": revenue_30d,
            "revenue_365d": revenue_365d,
            "revenue_90d": revenue_90d,
            "revenue_total": revenue_total,
        };
    }
}

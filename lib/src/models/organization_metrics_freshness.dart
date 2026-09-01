part of '../../models.dart';

/// 
class OrganizationMetricsFreshness implements Model {
    /// Companies with no metrics row yet. A rule reading revenue silently skips them, so this is the number to watch after an import.
    final int? missing;

    /// The OLDEST computed_at in the table — the floor, not an average. Null when there are no rows at all.
    final String? oldest_computed_at;

    /// The anchor those oldest numbers were measured from.
    final String? orders_as_of;

    /// Companies in this tenant.
    final int? organizations;

    /// Metrics rows that exist — at most one per company.
    final int? rows;

    OrganizationMetricsFreshness({
        this.missing,
        this.oldest_computed_at,
        this.orders_as_of,
        this.organizations,
        this.rows,
    });

    factory OrganizationMetricsFreshness.fromMap(Map<String, dynamic> map) {
        return OrganizationMetricsFreshness(
            missing: map['missing'],
            oldest_computed_at: map['oldest_computed_at']?.toString(),
            orders_as_of: map['orders_as_of']?.toString(),
            organizations: map['organizations'],
            rows: map['rows'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "missing": missing,
            "oldest_computed_at": oldest_computed_at,
            "orders_as_of": orders_as_of,
            "organizations": organizations,
            "rows": rows,
        };
    }
}

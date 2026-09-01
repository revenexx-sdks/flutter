part of '../../models.dart';

/// The delivery window a checkout can print. Calendar days, cut-off evaluated in UTC (send `at` to control the instant).
class ShippingDeliveryEstimate implements Model {
    /// Whether the cut-off had passed at evaluation time, costing a day.
    final bool? cutoff_passed;

    /// The cut-off applied (HH:MM, UTC), or null when none is configured — the carrier's own when it declares one, else the market's `cutoff_time` setting.
    final String? cutoff_time;

    /// ship_date + eta_days_min.
    final String? earliest;

    /// The tenant's handling_days setting, as applied.
    final int? handling_days;

    /// ship_date + eta_days_max.
    final String? latest;

    /// The day the parcel leaves — today plus handling days, plus one when the cut-off has passed.
    final String? ship_date;

    ShippingDeliveryEstimate({
        this.cutoff_passed,
        this.cutoff_time,
        this.earliest,
        this.handling_days,
        this.latest,
        this.ship_date,
    });

    factory ShippingDeliveryEstimate.fromMap(Map<String, dynamic> map) {
        return ShippingDeliveryEstimate(
            cutoff_passed: map['cutoff_passed'],
            cutoff_time: map['cutoff_time']?.toString(),
            earliest: map['earliest']?.toString(),
            handling_days: map['handling_days'],
            latest: map['latest']?.toString(),
            ship_date: map['ship_date']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "cutoff_passed": cutoff_passed,
            "cutoff_time": cutoff_time,
            "earliest": earliest,
            "handling_days": handling_days,
            "latest": latest,
            "ship_date": ship_date,
        };
    }
}

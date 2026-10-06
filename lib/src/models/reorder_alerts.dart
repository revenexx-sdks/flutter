part of '../../models.dart';

///
class ReorderAlerts implements Model {
  /// The rows at or below their reorder point, worst first (by `shortfall`). Computed on read, so it is never stale — and never empty because of caching: an empty list means nothing is low, unless `enabled` is false.
  final List<ReorderAlert>? alerts;

  /// false when reorder_alert_enabled is off — the list is then empty by policy, not because nothing is low.
  final bool? enabled;

  /// The threshold applied to rows carrying none of their own.
  final double? reorder_point_default;

  ReorderAlerts({
    this.alerts,
    this.enabled,
    this.reorder_point_default,
  });

  factory ReorderAlerts.fromMap(Map<String, dynamic> map) {
    return ReorderAlerts(
      alerts: map['alerts'] != null
          ? List<ReorderAlert>.from(
              map['alerts'].map((p) => ReorderAlert.fromMap(p)))
          : null,
      enabled: map['enabled'],
      reorder_point_default: map['reorder_point_default']?.toDouble(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "alerts": alerts?.map((p) => p.toMap()).toList(),
      "enabled": enabled,
      "reorder_point_default": reorder_point_default,
    };
  }
}

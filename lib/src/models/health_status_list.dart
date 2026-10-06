part of '../../models.dart';

/// Status List
class HealthStatusList implements Model {
  /// List of statuses.
  final List<HealthStatus> statuses;

  /// Total number of statuses that matched your query.
  final int total;

  HealthStatusList({
    required this.statuses,
    required this.total,
  });

  factory HealthStatusList.fromMap(Map<String, dynamic> map) {
    return HealthStatusList(
      statuses: List<HealthStatus>.from(
          map['statuses'].map((p) => HealthStatus.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "statuses": statuses.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}

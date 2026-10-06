part of '../../models.dart';

/// Deployments List
class DeploymentList implements Model {
  /// List of deployments.
  final List<Deployment> deployments;

  /// Total number of deployments that matched your query.
  final int total;

  DeploymentList({
    required this.deployments,
    required this.total,
  });

  factory DeploymentList.fromMap(Map<String, dynamic> map) {
    return DeploymentList(
      deployments: List<Deployment>.from(
          map['deployments'].map((p) => Deployment.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "deployments": deployments.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}

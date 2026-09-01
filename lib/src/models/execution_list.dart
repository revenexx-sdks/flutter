part of '../../models.dart';

/// Executions List
class ExecutionList implements Model {
  /// List of executions.
  final List<Execution> executions;

  /// Total number of executions that matched your query.
  final int total;

  ExecutionList({
    required this.executions,
    required this.total,
  });

  factory ExecutionList.fromMap(Map<String, dynamic> map) {
    return ExecutionList(
      executions: List<Execution>.from(
          map['executions'].map((p) => Execution.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "executions": executions.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}

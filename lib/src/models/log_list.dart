part of '../../models.dart';

/// Logs List
class LogList implements Model {
  /// List of logs.
  final List<Log> logs;

  /// Total number of logs that matched your query.
  final int total;

  LogList({
    required this.logs,
    required this.total,
  });

  factory LogList.fromMap(Map<String, dynamic> map) {
    return LogList(
      logs: List<Log>.from(map['logs'].map((p) => Log.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "logs": logs.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}

part of '../../models.dart';

/// Sessions List
class SessionList implements Model {
  /// List of sessions.
  final List<Session> sessions;

  /// Total number of sessions that matched your query.
  final int total;

  SessionList({
    required this.sessions,
    required this.total,
  });

  factory SessionList.fromMap(Map<String, dynamic> map) {
    return SessionList(
      sessions:
          List<Session>.from(map['sessions'].map((p) => Session.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "sessions": sessions.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}

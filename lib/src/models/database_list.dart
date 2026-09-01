part of '../../models.dart';

/// Databases List
class DatabaseList implements Model {
  /// List of databases.
  final List<Database> databases;

  /// Total number of databases that matched your query.
  final int total;

  DatabaseList({
    required this.databases,
    required this.total,
  });

  factory DatabaseList.fromMap(Map<String, dynamic> map) {
    return DatabaseList(
      databases:
          List<Database>.from(map['databases'].map((p) => Database.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "databases": databases.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}

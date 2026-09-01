part of '../../models.dart';

/// Indexes List
class IndexList implements Model {
  /// List of indexes.
  final List<Index> indexes;

  /// Total number of indexes that matched your query.
  final int total;

  IndexList({
    required this.indexes,
    required this.total,
  });

  factory IndexList.fromMap(Map<String, dynamic> map) {
    return IndexList(
      indexes: List<Index>.from(map['indexes'].map((p) => Index.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "indexes": indexes.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}

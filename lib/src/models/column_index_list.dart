part of '../../models.dart';

/// Column Indexes List
class ColumnIndexList implements Model {
  /// List of indexes.
  final List<ColumnIndex> indexes;

  /// Total number of indexes that matched your query.
  final int total;

  ColumnIndexList({
    required this.indexes,
    required this.total,
  });

  factory ColumnIndexList.fromMap(Map<String, dynamic> map) {
    return ColumnIndexList(
      indexes: List<ColumnIndex>.from(
          map['indexes'].map((p) => ColumnIndex.fromMap(p))),
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

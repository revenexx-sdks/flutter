part of '../../models.dart';

/// Columns List
class ColumnList implements Model {
  /// List of columns.
  final List columns;

  /// Total number of columns in the given table.
  final int total;

  ColumnList({
    required this.columns,
    required this.total,
  });

  factory ColumnList.fromMap(Map<String, dynamic> map) {
    return ColumnList(
      columns: List.from(map['columns'] ?? []),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "columns": columns,
      "total": total,
    };
  }
}

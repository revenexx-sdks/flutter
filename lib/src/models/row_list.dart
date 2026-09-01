part of '../../models.dart';

/// Rows List
class RowList implements Model {
    /// List of rows.
    final List<Row> rows;

    /// Total number of rows that matched your query.
    final int total;

    RowList({
        required this.rows,
        required this.total,
    });

    factory RowList.fromMap(Map<String, dynamic> map) {
        return RowList(
            rows: List<Row>.from(map['rows'].map((p) => Row.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "rows": rows.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }

    List<T> convertTo<T>(T Function(Map) fromJson) =>
        (rows).map((d) => d.convertTo<T>(fromJson)).toList();
}

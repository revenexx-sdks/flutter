part of '../../models.dart';

/// Tables List
class TableList implements Model {
    /// List of tables.
    final List<Table> tables;

    /// Total number of tables that matched your query.
    final int total;

    TableList({
        required this.tables,
        required this.total,
    });

    factory TableList.fromMap(Map<String, dynamic> map) {
        return TableList(
            tables: List<Table>.from(map['tables'].map((p) => Table.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "tables": tables.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}

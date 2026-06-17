part of '../../models.dart';

/// Runtimes List
class RuntimeList implements Model {
    /// List of runtimes.
    final List<Runtime> runtimes;

    /// Total number of runtimes that matched your query.
    final int total;

    RuntimeList({
        required this.runtimes,
        required this.total,
    });

    factory RuntimeList.fromMap(Map<String, dynamic> map) {
        return RuntimeList(
            runtimes: List<Runtime>.from(map['runtimes'].map((p) => Runtime.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "runtimes": runtimes.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}

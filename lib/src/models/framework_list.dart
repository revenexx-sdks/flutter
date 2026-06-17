part of '../../models.dart';

/// Frameworks List
class FrameworkList implements Model {
    /// List of frameworks.
    final List<Framework> frameworks;

    /// Total number of frameworks that matched your query.
    final int total;

    FrameworkList({
        required this.frameworks,
        required this.total,
    });

    factory FrameworkList.fromMap(Map<String, dynamic> map) {
        return FrameworkList(
            frameworks: List<Framework>.from(map['frameworks'].map((p) => Framework.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "frameworks": frameworks.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}

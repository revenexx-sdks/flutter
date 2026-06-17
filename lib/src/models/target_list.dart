part of '../../models.dart';

/// Target list
class TargetList implements Model {
    /// List of targets.
    final List<Target> targets;

    /// Total number of targets that matched your query.
    final int total;

    TargetList({
        required this.targets,
        required this.total,
    });

    factory TargetList.fromMap(Map<String, dynamic> map) {
        return TargetList(
            targets: List<Target>.from(map['targets'].map((p) => Target.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "targets": targets.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}

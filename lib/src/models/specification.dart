part of '../../models.dart';

/// Specification
class Specification implements Model {
  /// Number of CPUs.
  final double cpus;

  /// Is size enabled.
  final bool enabled;

  /// Memory size in MB.
  final int memory;

  /// Size slug.
  final String slug;

  Specification({
    required this.cpus,
    required this.enabled,
    required this.memory,
    required this.slug,
  });

  factory Specification.fromMap(Map<String, dynamic> map) {
    return Specification(
      cpus: map['cpus'].toDouble(),
      enabled: map['enabled'],
      memory: map['memory'],
      slug: map['slug'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "cpus": cpus,
      "enabled": enabled,
      "memory": memory,
      "slug": slug,
    };
  }
}

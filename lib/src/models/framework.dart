part of '../../models.dart';

/// Framework
class Framework implements Model {
  /// List of supported adapters.
  final List<FrameworkAdapter> adapters;

  /// Default runtime version.
  final String buildRuntime;

  /// Framework key.
  final String key;

  /// Framework Name.
  final String name;

  /// List of supported runtime versions.
  final List<String> runtimes;

  Framework({
    required this.adapters,
    required this.buildRuntime,
    required this.key,
    required this.name,
    required this.runtimes,
  });

  factory Framework.fromMap(Map<String, dynamic> map) {
    return Framework(
      adapters: List<FrameworkAdapter>.from(
          map['adapters'].map((p) => FrameworkAdapter.fromMap(p))),
      buildRuntime: map['buildRuntime'].toString(),
      key: map['key'].toString(),
      name: map['name'].toString(),
      runtimes: List.from(map['runtimes'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "adapters": adapters.map((p) => p.toMap()).toList(),
      "buildRuntime": buildRuntime,
      "key": key,
      "name": name,
      "runtimes": runtimes,
    };
  }
}

part of '../../models.dart';

/// Template Runtime
class TemplateRuntime implements Model {
  /// The build command used to build the deployment.
  final String commands;

  /// The entrypoint file used to execute the deployment.
  final String entrypoint;

  /// Runtime Name.
  final String name;

  /// Path to function in VCS (Version Control System) repository
  final String providerRootDirectory;

  TemplateRuntime({
    required this.commands,
    required this.entrypoint,
    required this.name,
    required this.providerRootDirectory,
  });

  factory TemplateRuntime.fromMap(Map<String, dynamic> map) {
    return TemplateRuntime(
      commands: map['commands'].toString(),
      entrypoint: map['entrypoint'].toString(),
      name: map['name'].toString(),
      providerRootDirectory: map['providerRootDirectory'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "commands": commands,
      "entrypoint": entrypoint,
      "name": name,
      "providerRootDirectory": providerRootDirectory,
    };
  }
}

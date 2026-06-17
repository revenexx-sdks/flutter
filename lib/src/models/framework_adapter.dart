part of '../../models.dart';

/// Framework Adapter
class FrameworkAdapter implements Model {
    /// Default command to build site into output directory.
    final String buildCommand;

    /// Name of fallback file to use instead of 404 page. If null, Appwrite 404 page will be displayed.
    final String fallbackFile;

    /// Default command to download dependencies.
    final String installCommand;

    /// Adapter key.
    final String key;

    /// Default output directory of build.
    final String outputDirectory;

    FrameworkAdapter({
        required this.buildCommand,
        required this.fallbackFile,
        required this.installCommand,
        required this.key,
        required this.outputDirectory,
    });

    factory FrameworkAdapter.fromMap(Map<String, dynamic> map) {
        return FrameworkAdapter(
            buildCommand: map['buildCommand'].toString(),
            fallbackFile: map['fallbackFile'].toString(),
            installCommand: map['installCommand'].toString(),
            key: map['key'].toString(),
            outputDirectory: map['outputDirectory'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "buildCommand": buildCommand,
            "fallbackFile": fallbackFile,
            "installCommand": installCommand,
            "key": key,
            "outputDirectory": outputDirectory,
        };
    }
}

part of '../../models.dart';

/// Health Antivirus
class HealthAntivirus implements Model {
    /// Antivirus status. Possible values are: `disabled`, `offline`, `online`
    final enums.HealthAntivirusStatus status;

    /// Antivirus version.
    final String version;

    HealthAntivirus({
        required this.status,
        required this.version,
    });

    factory HealthAntivirus.fromMap(Map<String, dynamic> map) {
        return HealthAntivirus(
            status: enums.HealthAntivirusStatus.values.firstWhere((e) => e.value == map['status']),
            version: map['version'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "status": status.value,
            "version": version,
        };
    }
}

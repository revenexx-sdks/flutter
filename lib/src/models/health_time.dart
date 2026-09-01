part of '../../models.dart';

/// Health Time
class HealthTime implements Model {
    /// Difference of unix remote and local timestamps in milliseconds.
    final int diff;

    /// Current unix timestamp of the core service host.
    final int localTime;

    /// Current unix timestamp on trustful remote server.
    final int remoteTime;

    HealthTime({
        required this.diff,
        required this.localTime,
        required this.remoteTime,
    });

    factory HealthTime.fromMap(Map<String, dynamic> map) {
        return HealthTime(
            diff: map['diff'],
            localTime: map['localTime'],
            remoteTime: map['remoteTime'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "diff": diff,
            "localTime": localTime,
            "remoteTime": remoteTime,
        };
    }
}

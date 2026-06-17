part of '../../models.dart';

/// UsageFunction
class UsageFunction implements Model {
    /// Aggregated number of function builds per period.
    final List<Metric> builds;

    /// Aggregated number of failed builds per period.
    final List<Metric> buildsFailed;

    /// Total aggregated number of failed function builds.
    final int buildsFailedTotal;

    /// Aggregated number of function builds mbSeconds per period.
    final List<Metric> buildsMbSeconds;

    /// Total aggregated sum of function builds mbSeconds.
    final int buildsMbSecondsTotal;

    /// Aggregated sum of function builds storage per period.
    final List<Metric> buildsStorage;

    /// total aggregated sum of function builds storage.
    final int buildsStorageTotal;

    /// Aggregated number of successful builds per period.
    final List<Metric> buildsSuccess;

    /// Total aggregated number of successful function builds.
    final int buildsSuccessTotal;

    /// Aggregated sum of function builds compute time per period.
    final List<Metric> buildsTime;

    /// Average builds compute time.
    final int buildsTimeAverage;

    /// Total aggregated sum of function builds compute time.
    final int buildsTimeTotal;

    /// Total aggregated number of function builds.
    final int buildsTotal;

    /// Aggregated number of function deployments per period.
    final List<Metric> deployments;

    /// Aggregated number of  function deployments storage per period.
    final List<Metric> deploymentsStorage;

    /// Total aggregated sum of function deployments storage.
    final int deploymentsStorageTotal;

    /// Total aggregated number of function deployments.
    final int deploymentsTotal;

    /// Aggregated number of function executions per period.
    final List<Metric> executions;

    /// Aggregated number of function mbSeconds per period.
    final List<Metric> executionsMbSeconds;

    /// Total aggregated sum of function executions mbSeconds.
    final int executionsMbSecondsTotal;

    /// Aggregated number of function executions compute time per period.
    final List<Metric> executionsTime;

    /// Total aggregated sum of function  executions compute time.
    final int executionsTimeTotal;

    /// Total  aggregated number of function executions.
    final int executionsTotal;

    /// The time range of the usage stats.
    final String range;

    UsageFunction({
        required this.builds,
        required this.buildsFailed,
        required this.buildsFailedTotal,
        required this.buildsMbSeconds,
        required this.buildsMbSecondsTotal,
        required this.buildsStorage,
        required this.buildsStorageTotal,
        required this.buildsSuccess,
        required this.buildsSuccessTotal,
        required this.buildsTime,
        required this.buildsTimeAverage,
        required this.buildsTimeTotal,
        required this.buildsTotal,
        required this.deployments,
        required this.deploymentsStorage,
        required this.deploymentsStorageTotal,
        required this.deploymentsTotal,
        required this.executions,
        required this.executionsMbSeconds,
        required this.executionsMbSecondsTotal,
        required this.executionsTime,
        required this.executionsTimeTotal,
        required this.executionsTotal,
        required this.range,
    });

    factory UsageFunction.fromMap(Map<String, dynamic> map) {
        return UsageFunction(
            builds: List<Metric>.from(map['builds'].map((p) => Metric.fromMap(p))),
            buildsFailed: List<Metric>.from(map['buildsFailed'].map((p) => Metric.fromMap(p))),
            buildsFailedTotal: map['buildsFailedTotal'],
            buildsMbSeconds: List<Metric>.from(map['buildsMbSeconds'].map((p) => Metric.fromMap(p))),
            buildsMbSecondsTotal: map['buildsMbSecondsTotal'],
            buildsStorage: List<Metric>.from(map['buildsStorage'].map((p) => Metric.fromMap(p))),
            buildsStorageTotal: map['buildsStorageTotal'],
            buildsSuccess: List<Metric>.from(map['buildsSuccess'].map((p) => Metric.fromMap(p))),
            buildsSuccessTotal: map['buildsSuccessTotal'],
            buildsTime: List<Metric>.from(map['buildsTime'].map((p) => Metric.fromMap(p))),
            buildsTimeAverage: map['buildsTimeAverage'],
            buildsTimeTotal: map['buildsTimeTotal'],
            buildsTotal: map['buildsTotal'],
            deployments: List<Metric>.from(map['deployments'].map((p) => Metric.fromMap(p))),
            deploymentsStorage: List<Metric>.from(map['deploymentsStorage'].map((p) => Metric.fromMap(p))),
            deploymentsStorageTotal: map['deploymentsStorageTotal'],
            deploymentsTotal: map['deploymentsTotal'],
            executions: List<Metric>.from(map['executions'].map((p) => Metric.fromMap(p))),
            executionsMbSeconds: List<Metric>.from(map['executionsMbSeconds'].map((p) => Metric.fromMap(p))),
            executionsMbSecondsTotal: map['executionsMbSecondsTotal'],
            executionsTime: List<Metric>.from(map['executionsTime'].map((p) => Metric.fromMap(p))),
            executionsTimeTotal: map['executionsTimeTotal'],
            executionsTotal: map['executionsTotal'],
            range: map['range'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "builds": builds.map((p) => p.toMap()).toList(),
            "buildsFailed": buildsFailed.map((p) => p.toMap()).toList(),
            "buildsFailedTotal": buildsFailedTotal,
            "buildsMbSeconds": buildsMbSeconds.map((p) => p.toMap()).toList(),
            "buildsMbSecondsTotal": buildsMbSecondsTotal,
            "buildsStorage": buildsStorage.map((p) => p.toMap()).toList(),
            "buildsStorageTotal": buildsStorageTotal,
            "buildsSuccess": buildsSuccess.map((p) => p.toMap()).toList(),
            "buildsSuccessTotal": buildsSuccessTotal,
            "buildsTime": buildsTime.map((p) => p.toMap()).toList(),
            "buildsTimeAverage": buildsTimeAverage,
            "buildsTimeTotal": buildsTimeTotal,
            "buildsTotal": buildsTotal,
            "deployments": deployments.map((p) => p.toMap()).toList(),
            "deploymentsStorage": deploymentsStorage.map((p) => p.toMap()).toList(),
            "deploymentsStorageTotal": deploymentsStorageTotal,
            "deploymentsTotal": deploymentsTotal,
            "executions": executions.map((p) => p.toMap()).toList(),
            "executionsMbSeconds": executionsMbSeconds.map((p) => p.toMap()).toList(),
            "executionsMbSecondsTotal": executionsMbSecondsTotal,
            "executionsTime": executionsTime.map((p) => p.toMap()).toList(),
            "executionsTimeTotal": executionsTimeTotal,
            "executionsTotal": executionsTotal,
            "range": range,
        };
    }
}

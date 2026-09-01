part of '../../models.dart';

/// UsageFunctions
class UsageFunctions implements Model {
  /// Aggregated number of functions build per period.
  final List<Metric> builds;

  /// Aggregated number of failed function builds per period.
  final List<Metric> buildsFailed;

  /// Total aggregated number of failed function builds.
  final int buildsFailedTotal;

  /// Aggregated sum of functions build mbSeconds per period.
  final List<Metric> buildsMbSeconds;

  /// Total aggregated sum of functions build mbSeconds.
  final int buildsMbSecondsTotal;

  /// Aggregated sum of functions build storage per period.
  final List<Metric> buildsStorage;

  /// total aggregated sum of functions build storage.
  final int buildsStorageTotal;

  /// Aggregated number of successful function builds per period.
  final List<Metric> buildsSuccess;

  /// Total aggregated number of successful function builds.
  final int buildsSuccessTotal;

  /// Aggregated sum of  functions build compute time per period.
  final List<Metric> buildsTime;

  /// Total aggregated sum of functions build compute time.
  final int buildsTimeTotal;

  /// Total aggregated number of functions build.
  final int buildsTotal;

  /// Aggregated number of functions deployment per period.
  final List<Metric> deployments;

  /// Aggregated number of  functions deployment storage per period.
  final List<Metric> deploymentsStorage;

  /// Total aggregated sum of functions deployment storage.
  final int deploymentsStorageTotal;

  /// Total aggregated number of functions deployments.
  final int deploymentsTotal;

  /// Aggregated number of  functions execution per period.
  final List<Metric> executions;

  /// Aggregated number of functions mbSeconds per period.
  final List<Metric> executionsMbSeconds;

  /// Total aggregated sum of functions execution mbSeconds.
  final int executionsMbSecondsTotal;

  /// Aggregated number of functions execution compute time per period.
  final List<Metric> executionsTime;

  /// Total aggregated sum of functions  execution compute time.
  final int executionsTimeTotal;

  /// Total  aggregated number of functions execution.
  final int executionsTotal;

  /// Aggregated number of functions per period.
  final List<Metric> functions;

  /// Total aggregated number of functions.
  final int functionsTotal;

  /// Time range of the usage stats.
  final String range;

  UsageFunctions({
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
    required this.functions,
    required this.functionsTotal,
    required this.range,
  });

  factory UsageFunctions.fromMap(Map<String, dynamic> map) {
    return UsageFunctions(
      builds: List<Metric>.from(map['builds'].map((p) => Metric.fromMap(p))),
      buildsFailed:
          List<Metric>.from(map['buildsFailed'].map((p) => Metric.fromMap(p))),
      buildsFailedTotal: map['buildsFailedTotal'],
      buildsMbSeconds: List<Metric>.from(
          map['buildsMbSeconds'].map((p) => Metric.fromMap(p))),
      buildsMbSecondsTotal: map['buildsMbSecondsTotal'],
      buildsStorage:
          List<Metric>.from(map['buildsStorage'].map((p) => Metric.fromMap(p))),
      buildsStorageTotal: map['buildsStorageTotal'],
      buildsSuccess:
          List<Metric>.from(map['buildsSuccess'].map((p) => Metric.fromMap(p))),
      buildsSuccessTotal: map['buildsSuccessTotal'],
      buildsTime:
          List<Metric>.from(map['buildsTime'].map((p) => Metric.fromMap(p))),
      buildsTimeTotal: map['buildsTimeTotal'],
      buildsTotal: map['buildsTotal'],
      deployments:
          List<Metric>.from(map['deployments'].map((p) => Metric.fromMap(p))),
      deploymentsStorage: List<Metric>.from(
          map['deploymentsStorage'].map((p) => Metric.fromMap(p))),
      deploymentsStorageTotal: map['deploymentsStorageTotal'],
      deploymentsTotal: map['deploymentsTotal'],
      executions:
          List<Metric>.from(map['executions'].map((p) => Metric.fromMap(p))),
      executionsMbSeconds: List<Metric>.from(
          map['executionsMbSeconds'].map((p) => Metric.fromMap(p))),
      executionsMbSecondsTotal: map['executionsMbSecondsTotal'],
      executionsTime: List<Metric>.from(
          map['executionsTime'].map((p) => Metric.fromMap(p))),
      executionsTimeTotal: map['executionsTimeTotal'],
      executionsTotal: map['executionsTotal'],
      functions:
          List<Metric>.from(map['functions'].map((p) => Metric.fromMap(p))),
      functionsTotal: map['functionsTotal'],
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
      "functions": functions.map((p) => p.toMap()).toList(),
      "functionsTotal": functionsTotal,
      "range": range,
    };
  }
}

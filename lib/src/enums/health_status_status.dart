part of '../../enums.dart';

enum HealthStatusStatus {
  pass(value: 'pass'),
  fail(value: 'fail');

  const HealthStatusStatus({required this.value});

  final String value;

  String toJson() => value;
}

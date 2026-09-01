part of '../../enums.dart';

enum RuleMatch {
  all(value: 'all'),
  any(value: 'any');

  const RuleMatch({required this.value});

  final String value;

  String toJson() => value;
}

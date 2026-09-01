part of '../../enums.dart';

enum CategoriesRuleMatch {
  all(value: 'all'),
  any(value: 'any');

  const CategoriesRuleMatch({required this.value});

  final String value;

  String toJson() => value;
}

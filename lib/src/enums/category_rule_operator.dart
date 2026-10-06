part of '../../enums.dart';

enum CategoryRuleOperator {
  eq(value: 'eq'),
  neq(value: 'neq'),
  gt(value: 'gt'),
  gte(value: 'gte'),
  lt(value: 'lt'),
  lte(value: 'lte'),
  xin(value: 'in'),
  contains(value: 'contains'),
  startsWith(value: 'starts_with'),
  endsWith(value: 'ends_with'),
  isEmpty(value: 'is_empty'),
  isNotEmpty(value: 'is_not_empty');

  const CategoryRuleOperator({required this.value});

  final String value;

  String toJson() => value;
}

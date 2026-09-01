part of '../../models.dart';

///
class CategoryRulesRequest implements Model {
  /// Between 1 and 25 conditions — a rule is a selector, not a query language. An empty list is a 400, not "everything".
  final List<CategoryRuleCondition> conditions;

  /// 'all' ANDs every condition (default), 'any' ORs them.
  final enums.CategoryRuleMatch? rule_match;

  CategoryRulesRequest({
    required this.conditions,
    this.rule_match,
  });

  factory CategoryRulesRequest.fromMap(Map<String, dynamic> map) {
    return CategoryRulesRequest(
      conditions: List<CategoryRuleCondition>.from(
          map['conditions'].map((p) => CategoryRuleCondition.fromMap(p))),
      rule_match: map['rule_match'] != null
          ? enums.CategoryRuleMatch.values
              .firstWhere((e) => e.value == map['rule_match'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "conditions": conditions.map((p) => p.toMap()).toList(),
      "rule_match": rule_match?.value,
    };
  }
}

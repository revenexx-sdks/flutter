part of '../../models.dart';

///
class SegmentRulePreviewRequest implements Model {
  /// The conditions, combined by `rule_match`. At least one, at most 25.
  final List<SegmentRuleCondition> conditions;

  /// How the conditions combine. Default 'all'.
  final enums.SegmentRulePreviewRequestRuleMatch? rule_match;

  /// Only 'organizations' is supported; any other value is rejected. A segment groups COMPANIES — the people are reached through them.
  final enums.SegmentRulePreviewRequestTarget? target;

  SegmentRulePreviewRequest({
    required this.conditions,
    this.rule_match,
    this.target,
  });

  factory SegmentRulePreviewRequest.fromMap(Map<String, dynamic> map) {
    return SegmentRulePreviewRequest(
      conditions: List<SegmentRuleCondition>.from(
          map['conditions'].map((p) => SegmentRuleCondition.fromMap(p))),
      rule_match: map['rule_match'] != null
          ? enums.SegmentRulePreviewRequestRuleMatch.values
              .firstWhere((e) => e.value == map['rule_match'])
          : null,
      target: map['target'] != null
          ? enums.SegmentRulePreviewRequestTarget.values
              .firstWhere((e) => e.value == map['target'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "conditions": conditions.map((p) => p.toMap()).toList(),
      "rule_match": rule_match?.value,
      "target": target?.value,
    };
  }
}

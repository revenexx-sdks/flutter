part of '../../models.dart';

/// The selector that decides membership, stored verbatim. Null means the segment is manual-only. The same rule language product categories use, evaluated over organization columns, `setting:<key>` entries and the organization_metrics projection — so 'no order in 365 days' is expressible without joining the orders app. Null makes the segment manual-only. Changing it does not move a single membership — run the recompute.
class SegmentRules implements Model {
  /// The conditions, combined by `rule_match`. At least one, at most 25.
  final List<SegmentRuleCondition> conditions;

  /// Only 'organizations' is supported; any other value is rejected. A segment groups COMPANIES — the people are reached through them.
  final enums.SegmentRulesTarget? target;

  SegmentRules({
    required this.conditions,
    this.target,
  });

  factory SegmentRules.fromMap(Map<String, dynamic> map) {
    return SegmentRules(
      conditions: List<SegmentRuleCondition>.from(
          map['conditions'].map((p) => SegmentRuleCondition.fromMap(p))),
      target: map['target'] != null
          ? enums.SegmentRulesTarget.values
              .firstWhere((e) => e.value == map['target'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "conditions": conditions.map((p) => p.toMap()).toList(),
      "target": target?.value,
    };
  }
}

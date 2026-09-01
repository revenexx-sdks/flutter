part of '../../models.dart';

///
class SegmentCreateRequest implements Model {
  /// Stable identifier, unique per tenant — what other apps and integrations name the segment by. Free text, but lowercase with underscores is the convention every seeded vocabulary follows.
  final String code;

  /// Localized display names keyed by language tag. Null means nobody translated it and a client falls back to showing the code.
  final Map<String, dynamic>? labels;

  /// Sort order in the cockpit, ascending. Ties fall back to insertion order. Default 0.
  final int? position;

  /// How the conditions combine: 'all' (default) is AND, 'any' is OR. Null means the same as 'all'.
  final enums.SegmentRuleMatch? rule_match;

  /// The selector that decides membership, stored verbatim. Null means the segment is manual-only. The same rule language product categories use, evaluated over organization columns, `setting:<key>` entries and the organization_metrics projection — so 'no order in 365 days' is expressible without joining the orders app. Null makes the segment manual-only. Changing it does not move a single membership — run the recompute.
  final SegmentRules? rules;

  SegmentCreateRequest({
    required this.code,
    this.labels,
    this.position,
    this.rule_match,
    this.rules,
  });

  factory SegmentCreateRequest.fromMap(Map<String, dynamic> map) {
    return SegmentCreateRequest(
      code: map['code'].toString(),
      labels: map['labels'],
      position: map['position'],
      rule_match: map['rule_match'] != null
          ? enums.SegmentRuleMatch.values
              .firstWhere((e) => e.value == map['rule_match'])
          : null,
      rules: map['rules'] != null ? SegmentRules.fromMap(map['rules']) : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "labels": labels,
      "position": position,
      "rule_match": rule_match?.value,
      "rules": rules?.toMap(),
    };
  }
}

part of '../../models.dart';

/// A named group of ORGANIZATIONS — by hand, by rule, or both at once.
class Segment implements Model {
  /// Stable identifier, unique per tenant — what other apps and integrations name the segment by. Free text, but lowercase with underscores is the convention every seeded vocabulary follows.
  final String? code;

  /// When the segment was created.
  final String? created_at;

  /// Primary key of the segment.
  final String? id;

  /// Localized display names keyed by language tag. Null means nobody translated it and a client falls back to showing the code.
  final Map<String, dynamic>? labels;

  /// Sort order in the cockpit, ascending. Ties fall back to insertion order.
  final int? position;

  /// How the conditions combine: 'all' (default) is AND, 'any' is OR. Null means the same as 'all'.
  final enums.SegmentRuleMatch? rule_match;

  /// The selector that decides membership, stored verbatim. Null means the segment is manual-only. The same rule language product categories use, evaluated over organization columns, `setting:<key>` entries and the organization_metrics projection — so 'no order in 365 days' is expressible without joining the orders app.
  final Map? rules;

  /// When the rule last finished a COMPLETE recompute. Null after a rule change, and while a chunked recompute is still running — so it doubles as "are the rule memberships trustworthy right now?".
  final String? rules_computed_at;

  /// The tenant this row belongs to — the store slug, not an id. Set by the platform from the authenticated context, never by a caller; a write that carries it is ignored, and no request can read another tenant's rows by sending a different one.
  final String? tenant_id;

  /// When any column of this row last changed.
  final String? updated_at;

  Segment({
    this.code,
    this.created_at,
    this.id,
    this.labels,
    this.position,
    this.rule_match,
    this.rules,
    this.rules_computed_at,
    this.tenant_id,
    this.updated_at,
  });

  factory Segment.fromMap(Map<String, dynamic> map) {
    return Segment(
      code: map['code']?.toString(),
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      labels: map['labels'],
      position: map['position'],
      rule_match: map['rule_match'] != null
          ? enums.SegmentRuleMatch.values
              .firstWhere((e) => e.value == map['rule_match'])
          : null,
      rules: map['rules'],
      rules_computed_at: map['rules_computed_at']?.toString(),
      tenant_id: map['tenant_id']?.toString(),
      updated_at: map['updated_at']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "created_at": created_at,
      "id": id,
      "labels": labels,
      "position": position,
      "rule_match": rule_match?.value,
      "rules": rules,
      "rules_computed_at": rules_computed_at,
      "tenant_id": tenant_id,
      "updated_at": updated_at,
    };
  }
}

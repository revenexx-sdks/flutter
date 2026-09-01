part of '../../models.dart';

///
class CategoriesCreateRequest implements Model {
  /// The category's stable identifier — what an import and a storefront join on, and what survives a rename of the label. Unique per tenant.
  final String code;

  /// The category name a person sees, per language tag. The catalog reads by name, not by code — a locale left blank falls back to the next filled one.
  final Map? labels;

  /// The category this one hangs under. Null is a root of the tree. Deleting a parent lifts its children to the root rather than deleting them, so a mis-click never takes a subtree with it.
  final String? parent_id;

  /// A materialized position in the tree, kept for importers that carry one (`tools/power_tools/cordless_drills`). Nothing in this app writes or reads it — `parent_id` is the structure this app navigates.
  final String? path;

  /// Order among the siblings under the same parent, ascending.
  final int? position;

  /// How the conditions combine: 'all' ANDs them (the default), 'any' ORs them. It is a column of its own rather than a key of `rules` because the compiler reads the two separately.
  final enums.CategoriesRuleMatch? rule_match;

  /// The selector that makes this a RULE-DRIVEN category. Null means hand-picked. Matching products are MATERIALIZED as `product_categories` rows with source `rule`, next to the hand-picked ones a recompute never touches; `POST /products/categories/{category_id}/rules/preview` dry-runs this exact document before it is stored. Conditions address the `common` bucket of a product's values — a value held per locale or per channel has no single answer for a rule to test.
  final Map? rules;

  /// When the rule last ran TO COMPLETION and its memberships were synced. Null means no pass has ever finished — a recompute is chunked, so a half-finished pass leaves this untouched.
  final String? rules_computed_at;

  /// Whatever this catalog keeps on a category beyond the model — the keys belong to the tenant, not to this app, and nothing here reads them.
  final Map? values;

  CategoriesCreateRequest({
    required this.code,
    this.labels,
    this.parent_id,
    this.path,
    this.position,
    this.rule_match,
    this.rules,
    this.rules_computed_at,
    this.values,
  });

  factory CategoriesCreateRequest.fromMap(Map<String, dynamic> map) {
    return CategoriesCreateRequest(
      code: map['code'].toString(),
      labels: map['labels'],
      parent_id: map['parent_id']?.toString(),
      path: map['path']?.toString(),
      position: map['position'],
      rule_match: map['rule_match'] != null
          ? enums.CategoriesRuleMatch.values
              .firstWhere((e) => e.value == map['rule_match'])
          : null,
      rules: map['rules'],
      rules_computed_at: map['rules_computed_at']?.toString(),
      values: map['values'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "labels": labels,
      "parent_id": parent_id,
      "path": path,
      "position": position,
      "rule_match": rule_match?.value,
      "rules": rules,
      "rules_computed_at": rules_computed_at,
      "values": values,
    };
  }
}

part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `categories` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class CategoriesFilter implements Model {
  /// The literal `?code=` value this call was understood to carry.
  final String? code;

  /// The literal `?created_at=` value this call was understood to carry.
  final String? created_at;

  /// The literal `?id=` value this call was understood to carry.
  final String? id;

  /// The literal `?labels=` value this call was understood to carry.
  final String? labels;

  /// The literal `?parent_id=` value this call was understood to carry.
  final String? parent_id;

  /// The literal `?path=` value this call was understood to carry.
  final String? path;

  /// The literal `?position=` value this call was understood to carry.
  final String? position;

  /// The literal `?rule_match=` value this call was understood to carry.
  final String? rule_match;

  /// The literal `?rules=` value this call was understood to carry.
  final String? rules;

  /// The literal `?rules_computed_at=` value this call was understood to carry.
  final String? rules_computed_at;

  /// The literal `?updated_at=` value this call was understood to carry.
  final String? updated_at;

  /// The literal `?values=` value this call was understood to carry.
  final String? values;

  final Map<String, dynamic> data;

  CategoriesFilter({
    this.code,
    this.created_at,
    this.id,
    this.labels,
    this.parent_id,
    this.path,
    this.position,
    this.rule_match,
    this.rules,
    this.rules_computed_at,
    this.updated_at,
    this.values,
    required this.data,
  });

  factory CategoriesFilter.fromMap(Map<String, dynamic> map) {
    return CategoriesFilter(
      code: map['code']?.toString(),
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      labels: map['labels']?.toString(),
      parent_id: map['parent_id']?.toString(),
      path: map['path']?.toString(),
      position: map['position']?.toString(),
      rule_match: map['rule_match']?.toString(),
      rules: map['rules']?.toString(),
      rules_computed_at: map['rules_computed_at']?.toString(),
      updated_at: map['updated_at']?.toString(),
      values: map['values']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "created_at": created_at,
      "id": id,
      "labels": labels,
      "parent_id": parent_id,
      "path": path,
      "position": position,
      "rule_match": rule_match,
      "rules": rules,
      "rules_computed_at": rules_computed_at,
      "updated_at": updated_at,
      "values": values,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

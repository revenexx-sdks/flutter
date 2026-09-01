part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `attributes` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class AttributesFilter implements Model {
  /// The literal `?code=` value this call was understood to carry.
  final String? code;

  /// The literal `?config=` value this call was understood to carry.
  final String? config;

  /// The literal `?created_at=` value this call was understood to carry.
  final String? created_at;

  /// The literal `?entity_ref=` value this call was understood to carry.
  final String? entity_ref;

  /// The literal `?entity_type=` value this call was understood to carry.
  final String? entity_type;

  /// The literal `?group_id=` value this call was understood to carry.
  final String? group_id;

  /// The literal `?id=` value this call was understood to carry.
  final String? id;

  /// The literal `?is_filterable=` value this call was understood to carry.
  final String? is_filterable;

  /// The literal `?is_unique=` value this call was understood to carry.
  final String? is_unique;

  /// The literal `?labels=` value this call was understood to carry.
  final String? labels;

  /// The literal `?localizable=` value this call was understood to carry.
  final String? localizable;

  /// The literal `?position=` value this call was understood to carry.
  final String? position;

  /// The literal `?scopable=` value this call was understood to carry.
  final String? scopable;

  /// The literal `?type=` value this call was understood to carry.
  final String? type;

  /// The literal `?updated_at=` value this call was understood to carry.
  final String? updated_at;

  /// The literal `?usable_in_grid=` value this call was understood to carry.
  final String? usable_in_grid;

  /// The literal `?validation=` value this call was understood to carry.
  final String? validation;

  final Map<String, dynamic> data;

  AttributesFilter({
    this.code,
    this.config,
    this.created_at,
    this.entity_ref,
    this.entity_type,
    this.group_id,
    this.id,
    this.is_filterable,
    this.is_unique,
    this.labels,
    this.localizable,
    this.position,
    this.scopable,
    this.type,
    this.updated_at,
    this.usable_in_grid,
    this.validation,
    required this.data,
  });

  factory AttributesFilter.fromMap(Map<String, dynamic> map) {
    return AttributesFilter(
      code: map['code']?.toString(),
      config: map['config']?.toString(),
      created_at: map['created_at']?.toString(),
      entity_ref: map['entity_ref']?.toString(),
      entity_type: map['entity_type']?.toString(),
      group_id: map['group_id']?.toString(),
      id: map['id']?.toString(),
      is_filterable: map['is_filterable']?.toString(),
      is_unique: map['is_unique']?.toString(),
      labels: map['labels']?.toString(),
      localizable: map['localizable']?.toString(),
      position: map['position']?.toString(),
      scopable: map['scopable']?.toString(),
      type: map['type']?.toString(),
      updated_at: map['updated_at']?.toString(),
      usable_in_grid: map['usable_in_grid']?.toString(),
      validation: map['validation']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "config": config,
      "created_at": created_at,
      "entity_ref": entity_ref,
      "entity_type": entity_type,
      "group_id": group_id,
      "id": id,
      "is_filterable": is_filterable,
      "is_unique": is_unique,
      "labels": labels,
      "localizable": localizable,
      "position": position,
      "scopable": scopable,
      "type": type,
      "updated_at": updated_at,
      "usable_in_grid": usable_in_grid,
      "validation": validation,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

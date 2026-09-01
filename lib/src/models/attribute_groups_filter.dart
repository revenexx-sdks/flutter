part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `attribute_groups` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class AttributeGroupsFilter implements Model {
  /// The literal `?code=` value this call was understood to carry.
  final String? code;

  /// The literal `?created_at=` value this call was understood to carry.
  final String? created_at;

  /// The literal `?id=` value this call was understood to carry.
  final String? id;

  /// The literal `?labels=` value this call was understood to carry.
  final String? labels;

  /// The literal `?position=` value this call was understood to carry.
  final String? position;

  /// The literal `?updated_at=` value this call was understood to carry.
  final String? updated_at;

  final Map<String, dynamic> data;

  AttributeGroupsFilter({
    this.code,
    this.created_at,
    this.id,
    this.labels,
    this.position,
    this.updated_at,
    required this.data,
  });

  factory AttributeGroupsFilter.fromMap(Map<String, dynamic> map) {
    return AttributeGroupsFilter(
      code: map['code']?.toString(),
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      labels: map['labels']?.toString(),
      position: map['position']?.toString(),
      updated_at: map['updated_at']?.toString(),
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
      "position": position,
      "updated_at": updated_at,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

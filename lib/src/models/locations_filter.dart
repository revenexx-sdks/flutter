part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `locations` — a typo, a filter another entity has, `?q=` — is DROPPED and cannot appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class LocationsFilter implements Model {
  /// The literal `?address=` value this call was understood to carry.
  final String? address;

  /// The literal `?code=` value this call was understood to carry.
  final String? code;

  /// The literal `?created_at=` value this call was understood to carry.
  final String? created_at;

  /// The literal `?enabled=` value this call was understood to carry.
  final String? enabled;

  /// The literal `?id=` value this call was understood to carry.
  final String? id;

  /// The literal `?labels=` value this call was understood to carry.
  final String? labels;

  /// The literal `?metadata=` value this call was understood to carry.
  final String? metadata;

  /// The literal `?name=` value this call was understood to carry.
  final String? name;

  /// The literal `?priority=` value this call was understood to carry.
  final String? priority;

  /// The literal `?type=` value this call was understood to carry.
  final String? type;

  /// The literal `?updated_at=` value this call was understood to carry.
  final String? updated_at;

  final Map<String, dynamic> data;

  LocationsFilter({
    this.address,
    this.code,
    this.created_at,
    this.enabled,
    this.id,
    this.labels,
    this.metadata,
    this.name,
    this.priority,
    this.type,
    this.updated_at,
    required this.data,
  });

  factory LocationsFilter.fromMap(Map<String, dynamic> map) {
    return LocationsFilter(
      address: map['address']?.toString(),
      code: map['code']?.toString(),
      created_at: map['created_at']?.toString(),
      enabled: map['enabled']?.toString(),
      id: map['id']?.toString(),
      labels: map['labels']?.toString(),
      metadata: map['metadata']?.toString(),
      name: map['name']?.toString(),
      priority: map['priority']?.toString(),
      type: map['type']?.toString(),
      updated_at: map['updated_at']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "address": address,
      "code": code,
      "created_at": created_at,
      "enabled": enabled,
      "id": id,
      "labels": labels,
      "metadata": metadata,
      "name": name,
      "priority": priority,
      "type": type,
      "updated_at": updated_at,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

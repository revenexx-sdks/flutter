part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `measurement_families` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class MeasurementFamiliesFilter implements Model {
  /// The literal `?code=` value this call was understood to carry.
  final String? code;

  /// The literal `?created_at=` value this call was understood to carry.
  final String? created_at;

  /// The literal `?id=` value this call was understood to carry.
  final String? id;

  /// The literal `?labels=` value this call was understood to carry.
  final String? labels;

  /// The literal `?standard_unit=` value this call was understood to carry.
  final String? standard_unit;

  /// The literal `?units=` value this call was understood to carry.
  final String? units;

  /// The literal `?updated_at=` value this call was understood to carry.
  final String? updated_at;

  final Map<String, dynamic> data;

  MeasurementFamiliesFilter({
    this.code,
    this.created_at,
    this.id,
    this.labels,
    this.standard_unit,
    this.units,
    this.updated_at,
    required this.data,
  });

  factory MeasurementFamiliesFilter.fromMap(Map<String, dynamic> map) {
    return MeasurementFamiliesFilter(
      code: map['code']?.toString(),
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      labels: map['labels']?.toString(),
      standard_unit: map['standard_unit']?.toString(),
      units: map['units']?.toString(),
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
      "standard_unit": standard_unit,
      "units": units,
      "updated_at": updated_at,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

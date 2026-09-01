part of '../../models.dart';

///
class MeasurementFamiliesCreateRequest implements Model {
  /// The measurement family's stable identifier. A `measure` attribute names one and then offers that family's units.
  final String code;

  /// What the measurement family is called, per language tag.
  final Map? labels;

  /// The unit every value of this family is converted to before it is compared or sorted — the unit each `convert_factor` is relative to.
  final String standard_unit;

  /// The units this family offers. `convert_factor` multiplies a value into `standard_unit`, so a gram is 0.001 kilograms; `symbol` is what a form prints next to the number.
  final Map? units;

  MeasurementFamiliesCreateRequest({
    required this.code,
    this.labels,
    required this.standard_unit,
    this.units,
  });

  factory MeasurementFamiliesCreateRequest.fromMap(Map<String, dynamic> map) {
    return MeasurementFamiliesCreateRequest(
      code: map['code'].toString(),
      labels: map['labels'],
      standard_unit: map['standard_unit'].toString(),
      units: map['units'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "labels": labels,
      "standard_unit": standard_unit,
      "units": units,
    };
  }
}

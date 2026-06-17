part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class MeasurementFamiliesUpdateRequest implements Model {
    /// 
    final String? code;

    /// 
    final Map? labels;

    /// 
    final String? standard_unit;

    /// 
    final Map? units;

    MeasurementFamiliesUpdateRequest({
        this.code,
        this.labels,
        this.standard_unit,
        this.units,
    });

    factory MeasurementFamiliesUpdateRequest.fromMap(Map<String, dynamic> map) {
        return MeasurementFamiliesUpdateRequest(
            code: map['code']?.toString(),
            labels: map['labels'],
            standard_unit: map['standard_unit']?.toString(),
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

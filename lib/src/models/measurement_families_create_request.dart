part of '../../models.dart';

/// 
class MeasurementFamiliesCreateRequest implements Model {
    /// 
    final String code;

    /// 
    final Map? labels;

    /// 
    final String standard_unit;

    /// 
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

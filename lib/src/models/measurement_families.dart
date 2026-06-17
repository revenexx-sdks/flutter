part of '../../models.dart';

/// 
class MeasurementFamilies implements Model {
    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final Map? labels;

    /// 
    final String? standard_unit;

    /// 
    final Map? units;

    /// 
    final String? updated_at;

    MeasurementFamilies({
        this.code,
        this.created_at,
        this.id,
        this.labels,
        this.standard_unit,
        this.units,
        this.updated_at,
    });

    factory MeasurementFamilies.fromMap(Map<String, dynamic> map) {
        return MeasurementFamilies(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            labels: map['labels'],
            standard_unit: map['standard_unit']?.toString(),
            units: map['units'],
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
            "standard_unit": standard_unit,
            "units": units,
            "updated_at": updated_at,
        };
    }
}

part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class FamilyVariantsUpdateRequest implements Model {
    /// 
    final Map? axes;

    /// 
    final String? code;

    /// 
    final String? family_id;

    /// 
    final Map? labels;

    FamilyVariantsUpdateRequest({
        this.axes,
        this.code,
        this.family_id,
        this.labels,
    });

    factory FamilyVariantsUpdateRequest.fromMap(Map<String, dynamic> map) {
        return FamilyVariantsUpdateRequest(
            axes: map['axes'],
            code: map['code']?.toString(),
            family_id: map['family_id']?.toString(),
            labels: map['labels'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "axes": axes,
            "code": code,
            "family_id": family_id,
            "labels": labels,
        };
    }
}

part of '../../models.dart';

/// 
class FamilyVariantsCreateRequest implements Model {
    /// 
    final Map? axes;

    /// 
    final String code;

    /// 
    final String family_id;

    /// 
    final Map? labels;

    FamilyVariantsCreateRequest({
        this.axes,
        required this.code,
        required this.family_id,
        this.labels,
    });

    factory FamilyVariantsCreateRequest.fromMap(Map<String, dynamic> map) {
        return FamilyVariantsCreateRequest(
            axes: map['axes'],
            code: map['code'].toString(),
            family_id: map['family_id'].toString(),
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

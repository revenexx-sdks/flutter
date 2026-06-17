part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class AssociationTypesUpdateRequest implements Model {
    /// 
    final String? code;

    /// 
    final bool? is_quantified;

    /// 
    final bool? is_two_way;

    /// 
    final Map? labels;

    AssociationTypesUpdateRequest({
        this.code,
        this.is_quantified,
        this.is_two_way,
        this.labels,
    });

    factory AssociationTypesUpdateRequest.fromMap(Map<String, dynamic> map) {
        return AssociationTypesUpdateRequest(
            code: map['code']?.toString(),
            is_quantified: map['is_quantified'],
            is_two_way: map['is_two_way'],
            labels: map['labels'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "is_quantified": is_quantified,
            "is_two_way": is_two_way,
            "labels": labels,
        };
    }
}

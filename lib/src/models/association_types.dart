part of '../../models.dart';

/// 
class AssociationTypes implements Model {
    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final bool? is_quantified;

    /// 
    final bool? is_two_way;

    /// 
    final Map? labels;

    AssociationTypes({
        this.code,
        this.created_at,
        this.id,
        this.is_quantified,
        this.is_two_way,
        this.labels,
    });

    factory AssociationTypes.fromMap(Map<String, dynamic> map) {
        return AssociationTypes(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            is_quantified: map['is_quantified'],
            is_two_way: map['is_two_way'],
            labels: map['labels'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "created_at": created_at,
            "id": id,
            "is_quantified": is_quantified,
            "is_two_way": is_two_way,
            "labels": labels,
        };
    }
}

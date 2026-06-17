part of '../../models.dart';

/// 
class FamilyVariants implements Model {
    /// 
    final Map? axes;

    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? family_id;

    /// 
    final String? id;

    /// 
    final Map? labels;

    /// 
    final String? updated_at;

    FamilyVariants({
        this.axes,
        this.code,
        this.created_at,
        this.family_id,
        this.id,
        this.labels,
        this.updated_at,
    });

    factory FamilyVariants.fromMap(Map<String, dynamic> map) {
        return FamilyVariants(
            axes: map['axes'],
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            family_id: map['family_id']?.toString(),
            id: map['id']?.toString(),
            labels: map['labels'],
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "axes": axes,
            "code": code,
            "created_at": created_at,
            "family_id": family_id,
            "id": id,
            "labels": labels,
            "updated_at": updated_at,
        };
    }
}

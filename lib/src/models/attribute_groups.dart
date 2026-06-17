part of '../../models.dart';

/// 
class AttributeGroups implements Model {
    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final Map? labels;

    /// 
    final int? position;

    /// 
    final String? updated_at;

    AttributeGroups({
        this.code,
        this.created_at,
        this.id,
        this.labels,
        this.position,
        this.updated_at,
    });

    factory AttributeGroups.fromMap(Map<String, dynamic> map) {
        return AttributeGroups(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            labels: map['labels'],
            position: map['position'],
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
            "position": position,
            "updated_at": updated_at,
        };
    }
}

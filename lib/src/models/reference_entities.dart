part of '../../models.dart';

/// 
class ReferenceEntities implements Model {
    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final String? image;

    /// 
    final Map? labels;

    /// 
    final String? updated_at;

    ReferenceEntities({
        this.code,
        this.created_at,
        this.id,
        this.image,
        this.labels,
        this.updated_at,
    });

    factory ReferenceEntities.fromMap(Map<String, dynamic> map) {
        return ReferenceEntities(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            image: map['image']?.toString(),
            labels: map['labels'],
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "created_at": created_at,
            "id": id,
            "image": image,
            "labels": labels,
            "updated_at": updated_at,
        };
    }
}

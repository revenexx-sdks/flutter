part of '../../models.dart';

/// 
class Families implements Model {
    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final String? image_attribute;

    /// 
    final String? label_attribute;

    /// 
    final Map? labels;

    /// 
    final String? updated_at;

    Families({
        this.code,
        this.created_at,
        this.id,
        this.image_attribute,
        this.label_attribute,
        this.labels,
        this.updated_at,
    });

    factory Families.fromMap(Map<String, dynamic> map) {
        return Families(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            image_attribute: map['image_attribute']?.toString(),
            label_attribute: map['label_attribute']?.toString(),
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
            "image_attribute": image_attribute,
            "label_attribute": label_attribute,
            "labels": labels,
            "updated_at": updated_at,
        };
    }
}

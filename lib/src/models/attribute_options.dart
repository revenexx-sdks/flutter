part of '../../models.dart';

/// 
class AttributeOptions implements Model {
    /// 
    final String? attribute_id;

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
    final Map? swatch;

    AttributeOptions({
        this.attribute_id,
        this.code,
        this.created_at,
        this.id,
        this.labels,
        this.position,
        this.swatch,
    });

    factory AttributeOptions.fromMap(Map<String, dynamic> map) {
        return AttributeOptions(
            attribute_id: map['attribute_id']?.toString(),
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            labels: map['labels'],
            position: map['position'],
            swatch: map['swatch'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attribute_id": attribute_id,
            "code": code,
            "created_at": created_at,
            "id": id,
            "labels": labels,
            "position": position,
            "swatch": swatch,
        };
    }
}

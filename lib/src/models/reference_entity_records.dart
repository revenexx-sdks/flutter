part of '../../models.dart';

/// 
class ReferenceEntityRecords implements Model {
    /// 
    final Map? attribute_values;

    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final Map? labels;

    /// 
    final String? reference_entity_id;

    /// 
    final String? updated_at;

    ReferenceEntityRecords({
        this.attribute_values,
        this.code,
        this.created_at,
        this.id,
        this.labels,
        this.reference_entity_id,
        this.updated_at,
    });

    factory ReferenceEntityRecords.fromMap(Map<String, dynamic> map) {
        return ReferenceEntityRecords(
            attribute_values: map['attribute_values'],
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            labels: map['labels'],
            reference_entity_id: map['reference_entity_id']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attribute_values": attribute_values,
            "code": code,
            "created_at": created_at,
            "id": id,
            "labels": labels,
            "reference_entity_id": reference_entity_id,
            "updated_at": updated_at,
        };
    }
}

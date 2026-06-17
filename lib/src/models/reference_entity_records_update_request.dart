part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class ReferenceEntityRecordsUpdateRequest implements Model {
    /// 
    final Map? attribute_values;

    /// 
    final String? code;

    /// 
    final Map? labels;

    /// 
    final String? reference_entity_id;

    ReferenceEntityRecordsUpdateRequest({
        this.attribute_values,
        this.code,
        this.labels,
        this.reference_entity_id,
    });

    factory ReferenceEntityRecordsUpdateRequest.fromMap(Map<String, dynamic> map) {
        return ReferenceEntityRecordsUpdateRequest(
            attribute_values: map['attribute_values'],
            code: map['code']?.toString(),
            labels: map['labels'],
            reference_entity_id: map['reference_entity_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attribute_values": attribute_values,
            "code": code,
            "labels": labels,
            "reference_entity_id": reference_entity_id,
        };
    }
}

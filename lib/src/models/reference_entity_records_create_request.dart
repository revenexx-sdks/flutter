part of '../../models.dart';

/// 
class ReferenceEntityRecordsCreateRequest implements Model {
    /// 
    final Map? attribute_values;

    /// 
    final String code;

    /// 
    final Map? labels;

    /// 
    final String reference_entity_id;

    ReferenceEntityRecordsCreateRequest({
        this.attribute_values,
        required this.code,
        this.labels,
        required this.reference_entity_id,
    });

    factory ReferenceEntityRecordsCreateRequest.fromMap(Map<String, dynamic> map) {
        return ReferenceEntityRecordsCreateRequest(
            attribute_values: map['attribute_values'],
            code: map['code'].toString(),
            labels: map['labels'],
            reference_entity_id: map['reference_entity_id'].toString(),
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

part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `reference_entity_records` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class ReferenceEntityRecordsFilter implements Model {
    /// The literal `?attribute_values=` value this call was understood to carry.
    final String? attribute_values;

    /// The literal `?code=` value this call was understood to carry.
    final String? code;

    /// The literal `?created_at=` value this call was understood to carry.
    final String? created_at;

    /// The literal `?id=` value this call was understood to carry.
    final String? id;

    /// The literal `?labels=` value this call was understood to carry.
    final String? labels;

    /// The literal `?reference_entity_id=` value this call was understood to carry.
    final String? reference_entity_id;

    /// The literal `?updated_at=` value this call was understood to carry.
    final String? updated_at;

    final Map<String, dynamic> data;

    ReferenceEntityRecordsFilter({
        this.attribute_values,
        this.code,
        this.created_at,
        this.id,
        this.labels,
        this.reference_entity_id,
        this.updated_at,
        required this.data,
    });

    factory ReferenceEntityRecordsFilter.fromMap(Map<String, dynamic> map) {
        return ReferenceEntityRecordsFilter(
            attribute_values: map['attribute_values']?.toString(),
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            labels: map['labels']?.toString(),
            reference_entity_id: map['reference_entity_id']?.toString(),
            updated_at: map['updated_at']?.toString(),
            data: map["data"] ?? map,
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
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

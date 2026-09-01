part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `attribute_options` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class AttributeOptionsFilter implements Model {
    /// The literal `?attribute_id=` value this call was understood to carry.
    final String? attribute_id;

    /// The literal `?code=` value this call was understood to carry.
    final String? code;

    /// The literal `?created_at=` value this call was understood to carry.
    final String? created_at;

    /// The literal `?id=` value this call was understood to carry.
    final String? id;

    /// The literal `?labels=` value this call was understood to carry.
    final String? labels;

    /// The literal `?position=` value this call was understood to carry.
    final String? position;

    /// The literal `?swatch=` value this call was understood to carry.
    final String? swatch;

    final Map<String, dynamic> data;

    AttributeOptionsFilter({
        this.attribute_id,
        this.code,
        this.created_at,
        this.id,
        this.labels,
        this.position,
        this.swatch,
        required this.data,
    });

    factory AttributeOptionsFilter.fromMap(Map<String, dynamic> map) {
        return AttributeOptionsFilter(
            attribute_id: map['attribute_id']?.toString(),
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            labels: map['labels']?.toString(),
            position: map['position']?.toString(),
            swatch: map['swatch']?.toString(),
            data: map["data"] ?? map,
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
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `families` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class FamiliesFilter implements Model {
    /// The literal `?code=` value this call was understood to carry.
    final String? code;

    /// The literal `?created_at=` value this call was understood to carry.
    final String? created_at;

    /// The literal `?id=` value this call was understood to carry.
    final String? id;

    /// The literal `?image_attribute=` value this call was understood to carry.
    final String? image_attribute;

    /// The literal `?label_attribute=` value this call was understood to carry.
    final String? label_attribute;

    /// The literal `?labels=` value this call was understood to carry.
    final String? labels;

    /// The literal `?updated_at=` value this call was understood to carry.
    final String? updated_at;

    final Map<String, dynamic> data;

    FamiliesFilter({
        this.code,
        this.created_at,
        this.id,
        this.image_attribute,
        this.label_attribute,
        this.labels,
        this.updated_at,
        required this.data,
    });

    factory FamiliesFilter.fromMap(Map<String, dynamic> map) {
        return FamiliesFilter(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            image_attribute: map['image_attribute']?.toString(),
            label_attribute: map['label_attribute']?.toString(),
            labels: map['labels']?.toString(),
            updated_at: map['updated_at']?.toString(),
            data: map["data"] ?? map,
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
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `reference_entities` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class ReferenceEntitiesFilter implements Model {
    /// The literal `?code=` value this call was understood to carry.
    final String? code;

    /// The literal `?created_at=` value this call was understood to carry.
    final String? created_at;

    /// The literal `?id=` value this call was understood to carry.
    final String? id;

    /// The literal `?image=` value this call was understood to carry.
    final String? image;

    /// The literal `?labels=` value this call was understood to carry.
    final String? labels;

    /// The literal `?updated_at=` value this call was understood to carry.
    final String? updated_at;

    final Map<String, dynamic> data;

    ReferenceEntitiesFilter({
        this.code,
        this.created_at,
        this.id,
        this.image,
        this.labels,
        this.updated_at,
        required this.data,
    });

    factory ReferenceEntitiesFilter.fromMap(Map<String, dynamic> map) {
        return ReferenceEntitiesFilter(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            image: map['image']?.toString(),
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
            "image": image,
            "labels": labels,
            "updated_at": updated_at,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

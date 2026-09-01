part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `family_variants` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class FamilyVariantsFilter implements Model {
    /// The literal `?axes=` value this call was understood to carry.
    final String? axes;

    /// The literal `?code=` value this call was understood to carry.
    final String? code;

    /// The literal `?created_at=` value this call was understood to carry.
    final String? created_at;

    /// The literal `?family_id=` value this call was understood to carry.
    final String? family_id;

    /// The literal `?id=` value this call was understood to carry.
    final String? id;

    /// The literal `?labels=` value this call was understood to carry.
    final String? labels;

    /// The literal `?updated_at=` value this call was understood to carry.
    final String? updated_at;

    final Map<String, dynamic> data;

    FamilyVariantsFilter({
        this.axes,
        this.code,
        this.created_at,
        this.family_id,
        this.id,
        this.labels,
        this.updated_at,
        required this.data,
    });

    factory FamilyVariantsFilter.fromMap(Map<String, dynamic> map) {
        return FamilyVariantsFilter(
            axes: map['axes']?.toString(),
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            family_id: map['family_id']?.toString(),
            id: map['id']?.toString(),
            labels: map['labels']?.toString(),
            updated_at: map['updated_at']?.toString(),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "axes": axes,
            "code": code,
            "created_at": created_at,
            "family_id": family_id,
            "id": id,
            "labels": labels,
            "updated_at": updated_at,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

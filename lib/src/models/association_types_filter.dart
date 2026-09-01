part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `association_types` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class AssociationTypesFilter implements Model {
    /// The literal `?code=` value this call was understood to carry.
    final String? code;

    /// The literal `?created_at=` value this call was understood to carry.
    final String? created_at;

    /// The literal `?id=` value this call was understood to carry.
    final String? id;

    /// The literal `?is_quantified=` value this call was understood to carry.
    final String? is_quantified;

    /// The literal `?is_two_way=` value this call was understood to carry.
    final String? is_two_way;

    /// The literal `?labels=` value this call was understood to carry.
    final String? labels;

    final Map<String, dynamic> data;

    AssociationTypesFilter({
        this.code,
        this.created_at,
        this.id,
        this.is_quantified,
        this.is_two_way,
        this.labels,
        required this.data,
    });

    factory AssociationTypesFilter.fromMap(Map<String, dynamic> map) {
        return AssociationTypesFilter(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            is_quantified: map['is_quantified']?.toString(),
            is_two_way: map['is_two_way']?.toString(),
            labels: map['labels']?.toString(),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "created_at": created_at,
            "id": id,
            "is_quantified": is_quantified,
            "is_two_way": is_two_way,
            "labels": labels,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

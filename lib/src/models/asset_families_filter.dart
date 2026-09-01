part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `asset_families` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class AssetFamiliesFilter implements Model {
    /// The literal `?code=` value this call was understood to carry.
    final String? code;

    /// The literal `?created_at=` value this call was understood to carry.
    final String? created_at;

    /// The literal `?id=` value this call was understood to carry.
    final String? id;

    /// The literal `?labels=` value this call was understood to carry.
    final String? labels;

    /// The literal `?naming_convention=` value this call was understood to carry.
    final String? naming_convention;

    /// The literal `?updated_at=` value this call was understood to carry.
    final String? updated_at;

    final Map<String, dynamic> data;

    AssetFamiliesFilter({
        this.code,
        this.created_at,
        this.id,
        this.labels,
        this.naming_convention,
        this.updated_at,
        required this.data,
    });

    factory AssetFamiliesFilter.fromMap(Map<String, dynamic> map) {
        return AssetFamiliesFilter(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            labels: map['labels']?.toString(),
            naming_convention: map['naming_convention']?.toString(),
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
            "labels": labels,
            "naming_convention": naming_convention,
            "updated_at": updated_at,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `family_attributes` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class FamilyAttributesFilter implements Model {
    /// The literal `?attribute_id=` value this call was understood to carry.
    final String? attribute_id;

    /// The literal `?created_at=` value this call was understood to carry.
    final String? created_at;

    /// The literal `?family_id=` value this call was understood to carry.
    final String? family_id;

    /// The literal `?id=` value this call was understood to carry.
    final String? id;

    /// The literal `?is_required=` value this call was understood to carry.
    final String? is_required;

    /// The literal `?position=` value this call was understood to carry.
    final String? position;

    /// The literal `?required_channels=` value this call was understood to carry.
    final String? required_channels;

    final Map<String, dynamic> data;

    FamilyAttributesFilter({
        this.attribute_id,
        this.created_at,
        this.family_id,
        this.id,
        this.is_required,
        this.position,
        this.required_channels,
        required this.data,
    });

    factory FamilyAttributesFilter.fromMap(Map<String, dynamic> map) {
        return FamilyAttributesFilter(
            attribute_id: map['attribute_id']?.toString(),
            created_at: map['created_at']?.toString(),
            family_id: map['family_id']?.toString(),
            id: map['id']?.toString(),
            is_required: map['is_required']?.toString(),
            position: map['position']?.toString(),
            required_channels: map['required_channels']?.toString(),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attribute_id": attribute_id,
            "created_at": created_at,
            "family_id": family_id,
            "id": id,
            "is_required": is_required,
            "position": position,
            "required_channels": required_channels,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}

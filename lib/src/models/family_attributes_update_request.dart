part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class FamilyAttributesUpdateRequest implements Model {
    /// The attribute the family carries. One row per (family, attribute); deleting either side deletes the link.
    final String? attribute_id;

    /// The family this link belongs to — one side of the pair that makes an attribute part of a family's form.
    final String? family_id;

    /// The attribute has to carry a value for a product of this family to count as complete. `POST /products/{id}/completeness` measures exactly these and nothing else.
    final bool? is_required;

    /// The family's own ordering of this attribute, which overrides the attribute's default `position` in this family's form.
    final int? position;

    /// Narrows `is_required` to named channels. NULL or an empty list means required EVERYWHERE, not nowhere — that is how every required link in the wild is stored, and reading an empty list as "nowhere" reports a fully configured family as demanding nothing.
    final Map? required_channels;

    FamilyAttributesUpdateRequest({
        this.attribute_id,
        this.family_id,
        this.is_required,
        this.position,
        this.required_channels,
    });

    factory FamilyAttributesUpdateRequest.fromMap(Map<String, dynamic> map) {
        return FamilyAttributesUpdateRequest(
            attribute_id: map['attribute_id']?.toString(),
            family_id: map['family_id']?.toString(),
            is_required: map['is_required'],
            position: map['position'],
            required_channels: map['required_channels'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attribute_id": attribute_id,
            "family_id": family_id,
            "is_required": is_required,
            "position": position,
            "required_channels": required_channels,
        };
    }
}

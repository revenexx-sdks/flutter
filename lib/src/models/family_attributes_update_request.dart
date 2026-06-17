part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class FamilyAttributesUpdateRequest implements Model {
    /// 
    final String? attribute_id;

    /// 
    final String? family_id;

    /// 
    final bool? is_required;

    /// 
    final int? position;

    /// 
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

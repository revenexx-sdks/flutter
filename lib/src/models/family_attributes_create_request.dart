part of '../../models.dart';

/// 
class FamilyAttributesCreateRequest implements Model {
    /// 
    final String attribute_id;

    /// 
    final String family_id;

    /// 
    final bool? is_required;

    /// 
    final int? position;

    /// 
    final Map? required_channels;

    FamilyAttributesCreateRequest({
        required this.attribute_id,
        required this.family_id,
        this.is_required,
        this.position,
        this.required_channels,
    });

    factory FamilyAttributesCreateRequest.fromMap(Map<String, dynamic> map) {
        return FamilyAttributesCreateRequest(
            attribute_id: map['attribute_id'].toString(),
            family_id: map['family_id'].toString(),
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

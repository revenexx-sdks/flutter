part of '../../models.dart';

/// 
class FamilyAttributes implements Model {
    /// 
    final String? attribute_id;

    /// 
    final String? created_at;

    /// 
    final String? family_id;

    /// 
    final String? id;

    /// 
    final bool? is_required;

    /// 
    final int? position;

    /// 
    final Map? required_channels;

    FamilyAttributes({
        this.attribute_id,
        this.created_at,
        this.family_id,
        this.id,
        this.is_required,
        this.position,
        this.required_channels,
    });

    factory FamilyAttributes.fromMap(Map<String, dynamic> map) {
        return FamilyAttributes(
            attribute_id: map['attribute_id']?.toString(),
            created_at: map['created_at']?.toString(),
            family_id: map['family_id']?.toString(),
            id: map['id']?.toString(),
            is_required: map['is_required'],
            position: map['position'],
            required_channels: map['required_channels'],
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
        };
    }
}

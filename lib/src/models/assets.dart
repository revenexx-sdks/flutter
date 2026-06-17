part of '../../models.dart';

/// 
class Assets implements Model {
    /// 
    final String? asset_family_id;

    /// 
    final Map? attribute_values;

    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final String? media_uuid;

    /// 
    final String? updated_at;

    Assets({
        this.asset_family_id,
        this.attribute_values,
        this.code,
        this.created_at,
        this.id,
        this.media_uuid,
        this.updated_at,
    });

    factory Assets.fromMap(Map<String, dynamic> map) {
        return Assets(
            asset_family_id: map['asset_family_id']?.toString(),
            attribute_values: map['attribute_values'],
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            media_uuid: map['media_uuid']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "asset_family_id": asset_family_id,
            "attribute_values": attribute_values,
            "code": code,
            "created_at": created_at,
            "id": id,
            "media_uuid": media_uuid,
            "updated_at": updated_at,
        };
    }
}

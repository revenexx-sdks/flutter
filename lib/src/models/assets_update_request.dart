part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class AssetsUpdateRequest implements Model {
    /// 
    final String? asset_family_id;

    /// 
    final Map? attribute_values;

    /// 
    final String? code;

    /// 
    final String? media_uuid;

    AssetsUpdateRequest({
        this.asset_family_id,
        this.attribute_values,
        this.code,
        this.media_uuid,
    });

    factory AssetsUpdateRequest.fromMap(Map<String, dynamic> map) {
        return AssetsUpdateRequest(
            asset_family_id: map['asset_family_id']?.toString(),
            attribute_values: map['attribute_values'],
            code: map['code']?.toString(),
            media_uuid: map['media_uuid']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "asset_family_id": asset_family_id,
            "attribute_values": attribute_values,
            "code": code,
            "media_uuid": media_uuid,
        };
    }
}

part of '../../models.dart';

/// 
class AssetsCreateRequest implements Model {
    /// 
    final String asset_family_id;

    /// 
    final Map? attribute_values;

    /// 
    final String code;

    /// 
    final String? media_uuid;

    AssetsCreateRequest({
        required this.asset_family_id,
        this.attribute_values,
        required this.code,
        this.media_uuid,
    });

    factory AssetsCreateRequest.fromMap(Map<String, dynamic> map) {
        return AssetsCreateRequest(
            asset_family_id: map['asset_family_id'].toString(),
            attribute_values: map['attribute_values'],
            code: map['code'].toString(),
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

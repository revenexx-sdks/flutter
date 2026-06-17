part of '../../models.dart';

/// 
class AssetFamiliesCreateRequest implements Model {
    /// 
    final String code;

    /// 
    final Map? labels;

    /// 
    final Map? naming_convention;

    AssetFamiliesCreateRequest({
        required this.code,
        this.labels,
        this.naming_convention,
    });

    factory AssetFamiliesCreateRequest.fromMap(Map<String, dynamic> map) {
        return AssetFamiliesCreateRequest(
            code: map['code'].toString(),
            labels: map['labels'],
            naming_convention: map['naming_convention'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "labels": labels,
            "naming_convention": naming_convention,
        };
    }
}

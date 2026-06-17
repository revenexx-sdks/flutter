part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class AssetFamiliesUpdateRequest implements Model {
    /// 
    final String? code;

    /// 
    final Map? labels;

    /// 
    final Map? naming_convention;

    AssetFamiliesUpdateRequest({
        this.code,
        this.labels,
        this.naming_convention,
    });

    factory AssetFamiliesUpdateRequest.fromMap(Map<String, dynamic> map) {
        return AssetFamiliesUpdateRequest(
            code: map['code']?.toString(),
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

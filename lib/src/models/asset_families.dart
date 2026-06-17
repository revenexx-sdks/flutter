part of '../../models.dart';

/// 
class AssetFamilies implements Model {
    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final Map? labels;

    /// 
    final Map? naming_convention;

    /// 
    final String? updated_at;

    AssetFamilies({
        this.code,
        this.created_at,
        this.id,
        this.labels,
        this.naming_convention,
        this.updated_at,
    });

    factory AssetFamilies.fromMap(Map<String, dynamic> map) {
        return AssetFamilies(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            labels: map['labels'],
            naming_convention: map['naming_convention'],
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "created_at": created_at,
            "id": id,
            "labels": labels,
            "naming_convention": naming_convention,
            "updated_at": updated_at,
        };
    }
}

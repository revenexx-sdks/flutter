part of '../../models.dart';

/// 
class Organization implements Model {
    /// 
    final String? created_at;

    /// 
    final String? external_team_id;

    /// 
    final String? id;

    /// 
    final String? name;

    /// 
    final Map? settings;

    /// 
    final String? status;

    /// 
    final String? updated_at;

    /// 
    final String? vat_id;

    Organization({
        this.created_at,
        this.external_team_id,
        this.id,
        this.name,
        this.settings,
        this.status,
        this.updated_at,
        this.vat_id,
    });

    factory Organization.fromMap(Map<String, dynamic> map) {
        return Organization(
            created_at: map['created_at']?.toString(),
            external_team_id: map['external_team_id']?.toString(),
            id: map['id']?.toString(),
            name: map['name']?.toString(),
            settings: map['settings'],
            status: map['status']?.toString(),
            updated_at: map['updated_at']?.toString(),
            vat_id: map['vat_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "external_team_id": external_team_id,
            "id": id,
            "name": name,
            "settings": settings,
            "status": status,
            "updated_at": updated_at,
            "vat_id": vat_id,
        };
    }
}

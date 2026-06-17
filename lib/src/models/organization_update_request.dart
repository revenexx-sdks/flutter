part of '../../models.dart';

/// Partial update — omitted fields keep their current value; external_team_id is mirror-managed and ignored.
class OrganizationUpdateRequest implements Model {
    /// Company name — mirrored to the platform team.
    final String? name;

    /// Free-form organization settings.
    final Map? settings;

    /// Default &#039;active&#039;.
    final enums.OrganizationStatus? status;

    /// 
    final String? vat_id;

    OrganizationUpdateRequest({
        this.name,
        this.settings,
        this.status,
        this.vat_id,
    });

    factory OrganizationUpdateRequest.fromMap(Map<String, dynamic> map) {
        return OrganizationUpdateRequest(
            name: map['name']?.toString(),
            settings: map['settings'],
            status: map['status'] != null ? enums.OrganizationStatus.values.firstWhere((e) => e.value == map['status']) : null,
            vat_id: map['vat_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "name": name,
            "settings": settings,
            "status": status?.value,
            "vat_id": vat_id,
        };
    }
}

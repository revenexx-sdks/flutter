part of '../../models.dart';

/// 
class OrganizationCreateRequest implements Model {
    /// Company name — mirrored to the platform team.
    final String name;

    /// Free-form organization settings.
    final Map? settings;

    /// Default &#039;active&#039;.
    final enums.OrganizationStatus? status;

    /// 
    final String? vat_id;

    OrganizationCreateRequest({
        required this.name,
        this.settings,
        this.status,
        this.vat_id,
    });

    factory OrganizationCreateRequest.fromMap(Map<String, dynamic> map) {
        return OrganizationCreateRequest(
            name: map['name'].toString(),
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

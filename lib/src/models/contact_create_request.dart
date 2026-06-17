part of '../../models.dart';

/// Creates the contact (system of record) and mirrors it as a platform user (status defaults to invited).
class ContactCreateRequest implements Model {
    /// 
    final String email;

    /// 
    final String? first_name;

    /// The primary contact of its organization.
    final bool? is_primary;

    /// 
    final String? last_name;

    /// BCP 47, e.g. de-DE
    final String? locale;

    /// Owning organization — membership is mirrored to the platform team.
    final String? organization_id;

    /// 
    final String? phone;

    /// Default &#039;buyer&#039; — also the team role on the platform mirror.
    final enums.ContactRole? role;

    /// Default &#039;invited&#039; on create.
    final enums.ContactStatus? status;

    ContactCreateRequest({
        required this.email,
        this.first_name,
        this.is_primary,
        this.last_name,
        this.locale,
        this.organization_id,
        this.phone,
        this.role,
        this.status,
    });

    factory ContactCreateRequest.fromMap(Map<String, dynamic> map) {
        return ContactCreateRequest(
            email: map['email'].toString(),
            first_name: map['first_name']?.toString(),
            is_primary: map['is_primary'],
            last_name: map['last_name']?.toString(),
            locale: map['locale']?.toString(),
            organization_id: map['organization_id']?.toString(),
            phone: map['phone']?.toString(),
            role: map['role'] != null ? enums.ContactRole.values.firstWhere((e) => e.value == map['role']) : null,
            status: map['status'] != null ? enums.ContactStatus.values.firstWhere((e) => e.value == map['status']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "email": email,
            "first_name": first_name,
            "is_primary": is_primary,
            "last_name": last_name,
            "locale": locale,
            "organization_id": organization_id,
            "phone": phone,
            "role": role?.value,
            "status": status?.value,
        };
    }
}

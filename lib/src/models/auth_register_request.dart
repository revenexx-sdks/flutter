part of '../../models.dart';

/// 
class AuthRegisterRequest implements Model {
    /// 
    final String email;

    /// 
    final String? first_name;

    /// 
    final String? last_name;

    /// BCP 47, e.g. de-DE
    final String? locale;

    /// Join an existing organization.
    final String? organization_id;

    /// Found a new organization; the contact becomes its admin.
    final String? organization_name;

    /// 
    final String password;

    AuthRegisterRequest({
        required this.email,
        this.first_name,
        this.last_name,
        this.locale,
        this.organization_id,
        this.organization_name,
        required this.password,
    });

    factory AuthRegisterRequest.fromMap(Map<String, dynamic> map) {
        return AuthRegisterRequest(
            email: map['email'].toString(),
            first_name: map['first_name']?.toString(),
            last_name: map['last_name']?.toString(),
            locale: map['locale']?.toString(),
            organization_id: map['organization_id']?.toString(),
            organization_name: map['organization_name']?.toString(),
            password: map['password'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "email": email,
            "first_name": first_name,
            "last_name": last_name,
            "locale": locale,
            "organization_id": organization_id,
            "organization_name": organization_name,
            "password": password,
        };
    }
}

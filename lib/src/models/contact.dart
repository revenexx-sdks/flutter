part of '../../models.dart';

/// 
class Contact implements Model {
    /// 
    final String? created_at;

    /// 
    final String? email;

    /// 
    final String? external_user_id;

    /// 
    final String? first_name;

    /// 
    final String? id;

    /// 
    final bool? is_primary;

    /// 
    final String? last_name;

    /// 
    final String? locale;

    /// 
    final String? organization_id;

    /// 
    final String? phone;

    /// 
    final String? role;

    /// 
    final String? status;

    /// 
    final String? updated_at;

    Contact({
        this.created_at,
        this.email,
        this.external_user_id,
        this.first_name,
        this.id,
        this.is_primary,
        this.last_name,
        this.locale,
        this.organization_id,
        this.phone,
        this.role,
        this.status,
        this.updated_at,
    });

    factory Contact.fromMap(Map<String, dynamic> map) {
        return Contact(
            created_at: map['created_at']?.toString(),
            email: map['email']?.toString(),
            external_user_id: map['external_user_id']?.toString(),
            first_name: map['first_name']?.toString(),
            id: map['id']?.toString(),
            is_primary: map['is_primary'],
            last_name: map['last_name']?.toString(),
            locale: map['locale']?.toString(),
            organization_id: map['organization_id']?.toString(),
            phone: map['phone']?.toString(),
            role: map['role']?.toString(),
            status: map['status']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "email": email,
            "external_user_id": external_user_id,
            "first_name": first_name,
            "id": id,
            "is_primary": is_primary,
            "last_name": last_name,
            "locale": locale,
            "organization_id": organization_id,
            "phone": phone,
            "role": role,
            "status": status,
            "updated_at": updated_at,
        };
    }
}

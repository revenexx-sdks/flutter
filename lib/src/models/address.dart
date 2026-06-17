part of '../../models.dart';

/// 
class Address implements Model {
    /// 
    final String? city;

    /// 
    final String? company;

    /// 
    final String? contact_id;

    /// 
    final String? country;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final bool? is_default;

    /// 
    final String? name;

    /// 
    final String? organization_id;

    /// 
    final String? phone;

    /// 
    final String? region;

    /// 
    final String? street;

    /// 
    final String? street2;

    /// 
    final String? type;

    /// 
    final String? updated_at;

    /// 
    final String? zip;

    Address({
        this.city,
        this.company,
        this.contact_id,
        this.country,
        this.created_at,
        this.id,
        this.is_default,
        this.name,
        this.organization_id,
        this.phone,
        this.region,
        this.street,
        this.street2,
        this.type,
        this.updated_at,
        this.zip,
    });

    factory Address.fromMap(Map<String, dynamic> map) {
        return Address(
            city: map['city']?.toString(),
            company: map['company']?.toString(),
            contact_id: map['contact_id']?.toString(),
            country: map['country']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            is_default: map['is_default'],
            name: map['name']?.toString(),
            organization_id: map['organization_id']?.toString(),
            phone: map['phone']?.toString(),
            region: map['region']?.toString(),
            street: map['street']?.toString(),
            street2: map['street2']?.toString(),
            type: map['type']?.toString(),
            updated_at: map['updated_at']?.toString(),
            zip: map['zip']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "city": city,
            "company": company,
            "contact_id": contact_id,
            "country": country,
            "created_at": created_at,
            "id": id,
            "is_default": is_default,
            "name": name,
            "organization_id": organization_id,
            "phone": phone,
            "region": region,
            "street": street,
            "street2": street2,
            "type": type,
            "updated_at": updated_at,
            "zip": zip,
        };
    }
}

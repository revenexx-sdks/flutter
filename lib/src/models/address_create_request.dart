part of '../../models.dart';

/// An address needs an owner: &#039;organization_id&#039; or &#039;contact_id&#039;.
class AddressCreateRequest implements Model {
    /// 
    final String city;

    /// 
    final String? company;

    /// Owning contact (personal address).
    final String? contact_id;

    /// ISO 3166-1 alpha-2 code.
    final String country;

    /// The default address of its owner and type.
    final bool? is_default;

    /// Recipient name.
    final String? name;

    /// Owning organization (company address).
    final String? organization_id;

    /// 
    final String? phone;

    /// 
    final String? region;

    /// 
    final String street;

    /// 
    final String? street2;

    /// Default &#039;shipping&#039;.
    final enums.AddressType? type;

    /// 
    final String zip;

    AddressCreateRequest({
        required this.city,
        this.company,
        this.contact_id,
        required this.country,
        this.is_default,
        this.name,
        this.organization_id,
        this.phone,
        this.region,
        required this.street,
        this.street2,
        this.type,
        required this.zip,
    });

    factory AddressCreateRequest.fromMap(Map<String, dynamic> map) {
        return AddressCreateRequest(
            city: map['city'].toString(),
            company: map['company']?.toString(),
            contact_id: map['contact_id']?.toString(),
            country: map['country'].toString(),
            is_default: map['is_default'],
            name: map['name']?.toString(),
            organization_id: map['organization_id']?.toString(),
            phone: map['phone']?.toString(),
            region: map['region']?.toString(),
            street: map['street'].toString(),
            street2: map['street2']?.toString(),
            type: map['type'] != null ? enums.AddressType.values.firstWhere((e) => e.value == map['type']) : null,
            zip: map['zip'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "city": city,
            "company": company,
            "contact_id": contact_id,
            "country": country,
            "is_default": is_default,
            "name": name,
            "organization_id": organization_id,
            "phone": phone,
            "region": region,
            "street": street,
            "street2": street2,
            "type": type?.value,
            "zip": zip,
        };
    }
}

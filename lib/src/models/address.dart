part of '../../models.dart';

/// A postal address belonging to an organization or to a contact, used for billing or shipping. Ownership is exactly one of the two.
class Address implements Model {
  /// City or town.
  final String? city;

  /// Company line on the label. Often the owning organization's name, but not always — a delivery to a construction site carries the site.
  final String? company;

  /// Owning person — a personal address only that contact uses. Exactly one of organization_id / contact_id is set.
  final String? contact_id;

  /// ISO 3166-1 alpha-2 country code, exactly two letters. Uppercase by convention; it is what shipping and tax both key off.
  final String? country;

  /// When the address was created.
  final String? created_at;

  /// Primary key of the address.
  final String? id;

  /// The default address of its owner AND type: one default billing and one default shipping address per owner. Setting it moves the flag off the previous holder.
  final bool? is_default;

  /// Recipient line on the label — the person or department the parcel is addressed to.
  final String? name;

  /// Owning company — a company address, shared by everyone in it. Exactly one of organization_id / contact_id is set.
  final String? organization_id;

  /// Phone number for the carrier to reach at this address — often a different one from the contact's own.
  final String? phone;

  /// State, province or Bundesland. Required by some destinations (US, CA), unused by most European ones.
  final String? region;

  /// Street and house number, on one line, as the local post expects it.
  final String? street;

  /// The second address line: building, floor, gate, c/o. Null when there is none.
  final String? street2;

  /// The tenant this row belongs to — the store slug, not an id. Set by the platform from the authenticated context, never by a caller; a write that carries it is ignored, and no request can read another tenant's rows by sending a different one.
  final String? tenant_id;

  /// What the address is FOR — one of the tenant's own address types (GET /customers/address-types), seeded with billing and shipping. A merchant may add their own (a works entrance, a central accounts office) without a release of this app.
  final String? type;

  /// When any column of this row last changed.
  final String? updated_at;

  /// Postal code, as text — leading zeros are real in most countries.
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
    this.tenant_id,
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
      tenant_id: map['tenant_id']?.toString(),
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
      "tenant_id": tenant_id,
      "type": type,
      "updated_at": updated_at,
      "zip": zip,
    };
  }
}

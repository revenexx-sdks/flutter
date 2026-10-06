part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class AddressUpdateRequest implements Model {
  /// City or town.
  final String? city;

  /// Company line on the label. Often the owning organization's name, but not always — a delivery to a construction site carries the site.
  final String? company;

  /// Owning person — a personal address only that contact uses. Exactly one of organization_id / contact_id is set.
  final String? contact_id;

  /// ISO 3166-1 alpha-2 country code, exactly two letters. Uppercase by convention; it is what shipping and tax both key off.
  final String? country;

  /// The default address of its owner AND type: one default billing and one default shipping address per owner. Setting it moves the flag off the previous holder. Default false.
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

  /// What the address is FOR — one of the tenant's own address types (GET /customers/address-types), seeded with billing and shipping. A merchant may add their own (a works entrance, a central accounts office) without a release of this app. A create without it gets the type flagged as default; a type the tenant does not keep is a 400.
  final String? type;

  /// Postal code, as text — leading zeros are real in most countries.
  final String? zip;

  AddressUpdateRequest({
    this.city,
    this.company,
    this.contact_id,
    this.country,
    this.is_default,
    this.name,
    this.organization_id,
    this.phone,
    this.region,
    this.street,
    this.street2,
    this.type,
    this.zip,
  });

  factory AddressUpdateRequest.fromMap(Map<String, dynamic> map) {
    return AddressUpdateRequest(
      city: map['city']?.toString(),
      company: map['company']?.toString(),
      contact_id: map['contact_id']?.toString(),
      country: map['country']?.toString(),
      is_default: map['is_default'],
      name: map['name']?.toString(),
      organization_id: map['organization_id']?.toString(),
      phone: map['phone']?.toString(),
      region: map['region']?.toString(),
      street: map['street']?.toString(),
      street2: map['street2']?.toString(),
      type: map['type']?.toString(),
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
      "is_default": is_default,
      "name": name,
      "organization_id": organization_id,
      "phone": phone,
      "region": region,
      "street": street,
      "street2": street2,
      "type": type,
      "zip": zip,
    };
  }
}

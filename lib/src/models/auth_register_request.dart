part of '../../models.dart';

///
class AuthRegisterRequest implements Model {
  /// The buyer's address. It becomes the login AND the unique key of the contact, so a second registration with it is a 409 — including while the first one is still waiting for approval.
  final String email;

  /// Given name. Optional: an ERP import often has only a mailbox.
  final String? first_name;

  /// Family name. Optional for the same reason.
  final String? last_name;

  /// The language this person is written to in — BCP 47, and one of the store's configured locales. Null falls back to the store default. One of the store's own locales, or the call is a 400.
  final String? locale;

  /// JOIN an existing company — the invite shape. Neither b2b_registration_enabled nor b2c_registration_enabled applies to it.
  final String? organization_id;

  /// FOUND a new company, with this contact as its admin. This is what makes the registration a B2B one; leaving it out registers a standalone buyer.
  final String? organization_name;

  /// The password the buyer chooses. It is hashed by the identity service at this moment and never travels again: an approval later enables the account, it does not issue a new credential.
  final String password;

  /// Where the welcome mail's button points — the buyer's first stop in this shop. Absent, the mail still goes out and simply carries no button. Ignored when the registration is an APPLICATION: there is no account to send anybody to yet.
  final String? url;

  /// VAT identification number (USt-IdNr. in Germany) — the closest thing a B2B buyer has to a legal identity. Validated against the EU VIES service when the tenant's `organization_vat_id_required` setting is on, and stored verbatim otherwise, including for buyers outside the EU. Required when the tenant's `organization_vat_id_required` is on, and checked BEFORE the company is created so a bad one leaves no half-founded organization behind.
  final String? vat_id;

  /// Where the address-confirmation link points, when the tenant's `email_verification` asks for one on registration. `userId`, `secret` and `expire` are appended, and `PUT /customers/auth/verification` takes the first two. Without it the registration still succeeds and `verification_sent` is false — this app cannot invent a storefront URL, and a link pointing nowhere is worse than none.
  final String? verification_url;

  AuthRegisterRequest({
    required this.email,
    this.first_name,
    this.last_name,
    this.locale,
    this.organization_id,
    this.organization_name,
    required this.password,
    this.url,
    this.vat_id,
    this.verification_url,
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
      url: map['url']?.toString(),
      vat_id: map['vat_id']?.toString(),
      verification_url: map['verification_url']?.toString(),
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
      "url": url,
      "vat_id": vat_id,
      "verification_url": verification_url,
    };
  }
}

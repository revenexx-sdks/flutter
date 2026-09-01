part of '../../models.dart';

/// A PERSON, and the unit that logs in: one platform user, one email, one role inside its organization. A contact without an organization is a standalone buyer, not an error.
class Contact implements Model {
  /// When this person record was created in this app.
  final String? created_at;

  /// Login identity and the unique key of a person within the tenant. Changing it changes the platform login with it. Two people at the same company therefore need two addresses — a shared purchasing mailbox is one contact, not several.
  final String? email;

  /// Id of the platform USER this contact is mirrored as — the account that actually holds the password and the sessions. Written by the mirror and ignored on every write a caller sends.
  final String? external_user_id;

  /// Given name. Optional: an ERP import often has only a mailbox.
  final String? first_name;

  /// Primary key of the person record. What the timeline, the permission routes and the principal resolution all name.
  final String? id;

  /// The main contact of its organization — who a merchant calls first. At most one per company is the intent; the tenant's `primary_contact_required` setting decides whether the last one may be demoted or deleted.
  final bool? is_primary;

  /// What this person does at the company — free text on purpose, because it is a title and not a grant. The permission ladder is `role`; overloading a job title with authority silently un-grants everyone the day the ledger is enforced.
  final String? job_title;

  /// Family name. Optional for the same reason.
  final String? last_name;

  /// The language this person is written to in — BCP 47, and one of the store's configured locales. Null falls back to the store default.
  final String? locale;

  /// Amount ceiling for this person, in the market's currency: with the `orders.approve` permission it is the most they may sign off. Null means no ceiling. An amount, never a grant — the grant comes from the role.
  final double? order_approval_limit;

  /// The company this person belongs to. NULL is a legitimate state, not a defect: a standalone buyer with no company behind them. Deleting the organization sets this null and keeps the person.
  final String? organization_id;

  /// Direct number of this person, as somebody typed it — free text, no format is enforced or normalized. E.164 is what an integration should send.
  final String? phone;

  /// When a merchant approved or rejected the application. Null while nobody has decided.
  final String? registration_decided_at;

  /// Who decided — free text as the deciding client supplied it (an operator id or an email address), not a resolvable user reference.
  final String? registration_decided_by;

  /// Why the application was declined. Always recorded here; whether the APPLICANT is ever told it is the tenant's `registration_reason_disclosed` setting, because that is a legal decision and not a template one.
  final String? registration_reason;

  /// Where this person's own application stands: 'approved' (the default, and what an open store creates), 'pending' while a merchant has yet to decide, 'rejected' once they declined. Only the approve/reject routes move it; it is ignored on an ordinary update.
  final enums.ContactRegistrationStatus? registration_status;

  /// The person's role INSIDE its organization, and the only thing permissions are derived from. One of the tenant's own roles (GET /customers/roles); a tenant that never edited the ledger has viewer, requester, buyer, approver, admin. Also the team role on the platform mirror. There is no global role — the same person in two companies is two contacts.
  final String? role;

  /// Whether this person may act: 'invited' has been created but has not accepted, 'active' works, 'blocked' cannot log in. A create through the API defaults to 'invited'; a self-registration in an open store lands 'active'.
  final enums.ContactStatus? status;

  /// The tenant this row belongs to — the store slug, not an id. Set by the platform from the authenticated context, never by a caller; a write that carries it is ignored, and no request can read another tenant's rows by sending a different one.
  final String? tenant_id;

  /// When any column of this row last changed.
  final String? updated_at;

  Contact({
    this.created_at,
    this.email,
    this.external_user_id,
    this.first_name,
    this.id,
    this.is_primary,
    this.job_title,
    this.last_name,
    this.locale,
    this.order_approval_limit,
    this.organization_id,
    this.phone,
    this.registration_decided_at,
    this.registration_decided_by,
    this.registration_reason,
    this.registration_status,
    this.role,
    this.status,
    this.tenant_id,
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
      job_title: map['job_title']?.toString(),
      last_name: map['last_name']?.toString(),
      locale: map['locale']?.toString(),
      order_approval_limit: map['order_approval_limit']?.toDouble(),
      organization_id: map['organization_id']?.toString(),
      phone: map['phone']?.toString(),
      registration_decided_at: map['registration_decided_at']?.toString(),
      registration_decided_by: map['registration_decided_by']?.toString(),
      registration_reason: map['registration_reason']?.toString(),
      registration_status: map['registration_status'] != null
          ? enums.ContactRegistrationStatus.values
              .firstWhere((e) => e.value == map['registration_status'])
          : null,
      role: map['role']?.toString(),
      status: map['status'] != null
          ? enums.ContactStatus.values
              .firstWhere((e) => e.value == map['status'])
          : null,
      tenant_id: map['tenant_id']?.toString(),
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
      "job_title": job_title,
      "last_name": last_name,
      "locale": locale,
      "order_approval_limit": order_approval_limit,
      "organization_id": organization_id,
      "phone": phone,
      "registration_decided_at": registration_decided_at,
      "registration_decided_by": registration_decided_by,
      "registration_reason": registration_reason,
      "registration_status": registration_status?.value,
      "role": role,
      "status": status?.value,
      "tenant_id": tenant_id,
      "updated_at": updated_at,
    };
  }
}

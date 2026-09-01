part of '../../models.dart';

/// Creates the contact (system of record) and mirrors it as a platform user (status defaults to invited).
class ContactCreateRequest implements Model {
    /// Login identity and the unique key of a person within the tenant. Changing it changes the platform login with it. Two people at the same company therefore need two addresses — a shared purchasing mailbox is one contact, not several.
    final String email;

    /// Given name. Optional: an ERP import often has only a mailbox.
    final String? first_name;

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

    /// The company this person belongs to. NULL is a legitimate state, not a defect: a standalone buyer with no company behind them. Deleting the organization sets this null and keeps the person. Membership is mirrored to the platform team.
    final String? organization_id;

    /// Direct number of this person, as somebody typed it — free text, no format is enforced or normalized. E.164 is what an integration should send.
    final String? phone;

    /// Where this person's own application stands: 'approved' (the default, and what an open store creates), 'pending' while a merchant has yet to decide, 'rejected' once they declined. Only the approve/reject routes move it; it is ignored on an ordinary update. On CREATE only, and only to file the contact as an application: 'pending' creates the platform user disabled and routes the contact through approve/reject. Ignored on update.
    final enums.ContactCreateRequestRegistrationStatus? registration_status;

    /// The person's role INSIDE its organization, and the only thing permissions are derived from. One of the tenant's own roles (GET /customers/roles); a tenant that never edited the ledger has viewer, requester, buyer, approver, admin. Also the team role on the platform mirror. There is no global role — the same person in two companies is two contacts. A tenant that never edited the ledger has viewer, requester, buyer, approver, admin; a create without a role gets the one flagged as default, and a role the tenant does not keep is a 400.
    final String? role;

    /// Whether this person may act: 'invited' has been created but has not accepted, 'active' works, 'blocked' cannot log in. A create through the API defaults to 'invited'; a self-registration in an open store lands 'active'. Default 'invited' on create.
    final enums.ContactStatus? status;

    ContactCreateRequest({
        required this.email,
        this.first_name,
        this.is_primary,
        this.job_title,
        this.last_name,
        this.locale,
        this.order_approval_limit,
        this.organization_id,
        this.phone,
        this.registration_status,
        this.role,
        this.status,
    });

    factory ContactCreateRequest.fromMap(Map<String, dynamic> map) {
        return ContactCreateRequest(
            email: map['email'].toString(),
            first_name: map['first_name']?.toString(),
            is_primary: map['is_primary'],
            job_title: map['job_title']?.toString(),
            last_name: map['last_name']?.toString(),
            locale: map['locale']?.toString(),
            order_approval_limit: map['order_approval_limit']?.toDouble(),
            organization_id: map['organization_id']?.toString(),
            phone: map['phone']?.toString(),
            registration_status: map['registration_status'] != null ? enums.ContactCreateRequestRegistrationStatus.values.firstWhere((e) => e.value == map['registration_status']) : null,
            role: map['role']?.toString(),
            status: map['status'] != null ? enums.ContactStatus.values.firstWhere((e) => e.value == map['status']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "email": email,
            "first_name": first_name,
            "is_primary": is_primary,
            "job_title": job_title,
            "last_name": last_name,
            "locale": locale,
            "order_approval_limit": order_approval_limit,
            "organization_id": organization_id,
            "phone": phone,
            "registration_status": registration_status?.value,
            "role": role,
            "status": status?.value,
        };
    }
}

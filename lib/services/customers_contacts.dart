part of '../revenexx.dart';

  /// The PEOPLE inside the buying companies, and everything that happens to one:
  /// the contact rows, the activity timeline (`contact_events` — a call, a
  /// visit, a note, plus this app&#039;s own registration decisions), the
  /// approve/reject calls that settle a pending registration, and the effective
  /// permissions a contact ends up holding. A contact is the unit that logs in
  /// — one platform user, one email, one role inside its organization — and
  /// a contact without an organization is a standalone buyer, not an error. Both
  /// routes that write a timeline entry are here, including the one addressed by
  /// an organization id, because every row is keyed by a contact.
class CustomersContacts extends Service {
  /// Initializes a [CustomersContacts] service
  CustomersContacts(super.client);

  /// A contact event is one entry on a customer's timeline: an activity somebody
  /// logged (a call, a visit, a meeting, a note) or a registration decision this
  /// app recorded itself. Every entry is keyed by a CONTACT and stamped with the
  /// organization derived from that contact, so a company's history is one
  /// indexed read rather than a join. Append-only — there is no update and no
  /// delete, which is what makes it usable as evidence. The activity feed,
  /// filtered by whichever column the question needs: `contact_id` for one
  /// person, `organization_id` for a whole company, `kind` for one type of
  /// activity. `kind: "system"` is this app's own registration decision trail
  /// (`registration.submitted` / `.approved` / `.rejected`), and no caller may
  /// file one of those. Paged with `limit`/`offset`/`order`; newest first is
  /// `order=occurred_at.desc`.
  Future customersContactEventsList({String? id, String? contactId, String? organizationId, String? kind, String? name, String? subject, String? actor, String? occurredAt, String? createdAt, int? limit, int? offset, String? order}) async {
    const String apiPath = '/v1/customers/contact_events';

        final Map<String, dynamic> apiParams = {
            if (id != null) 'id': id,

            if (contactId != null) 'contact_id': contactId,

            if (organizationId != null) 'organization_id': organizationId,

            if (kind != null) 'kind': kind,

            if (name != null) 'name': name,

            if (subject != null) 'subject': subject,

            if (actor != null) 'actor': actor,

            if (occurredAt != null) 'occurred_at': occurredAt,

            if (createdAt != null) 'created_at': createdAt,

            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// A contact event is one entry on a customer's timeline: an activity somebody
  /// logged (a call, a visit, a meeting, a note) or a registration decision this
  /// app recorded itself. Every entry is keyed by a CONTACT and stamped with the
  /// organization derived from that contact, so a company's history is one
  /// indexed read rather than a join. Append-only — there is no update and no
  /// delete, which is what makes it usable as evidence. One timeline entry by
  /// id, as it was written. Entries are never edited, so what this answers is
  /// what was recorded at the time.
  Future<models.Error> customersContactEventsGet({required String id}) async {
    final String apiPath = '/v1/customers/contact_events/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A contact is a PERSON, and the unit that logs in: one platform user, one
  /// email address, one role held inside its organization. A contact without an
  /// organization is a standalone buyer rather than an error, and two people at
  /// the same company are two contacts sharing an `organization_id`. The people
  /// list, and the read behind an approval queue: `registration_status=pending`
  /// is every application waiting for a decision. Every column is a filter —
  /// `external_user_id` in particular is how a storefront turns a platform auth
  /// id back into a customer — and the page is `limit`/`offset`/`order`.
  Future customersContactsList({String? id, String? organizationId, String? email, String? firstName, String? lastName, String? phone, String? jobTitle, String? role, enums.Status? status, double? orderApprovalLimit, enums.RegistrationStatus? registrationStatus, String? registrationDecidedAt, String? registrationDecidedBy, String? registrationReason, String? locale, bool? isPrimary, String? externalUserId, String? createdAt, String? updatedAt, int? limit, int? offset, String? order}) async {
    const String apiPath = '/v1/customers/contacts';

        final Map<String, dynamic> apiParams = {
            if (id != null) 'id': id,

            if (organizationId != null) 'organization_id': organizationId,

            if (email != null) 'email': email,

            if (firstName != null) 'first_name': firstName,

            if (lastName != null) 'last_name': lastName,

            if (phone != null) 'phone': phone,

            if (jobTitle != null) 'job_title': jobTitle,

            if (role != null) 'role': role,

            if (status != null) 'status': status.value,

            if (orderApprovalLimit != null) 'order_approval_limit': orderApprovalLimit,

            if (registrationStatus != null) 'registration_status': registrationStatus.value,

            if (registrationDecidedAt != null) 'registration_decided_at': registrationDecidedAt,

            if (registrationDecidedBy != null) 'registration_decided_by': registrationDecidedBy,

            if (registrationReason != null) 'registration_reason': registrationReason,

            if (locale != null) 'locale': locale,

            if (isPrimary != null) 'is_primary': isPrimary,

            if (externalUserId != null) 'external_user_id': externalUserId,

            if (createdAt != null) 'created_at': createdAt,

            if (updatedAt != null) 'updated_at': updatedAt,

            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// A contact is a PERSON, and the unit that logs in: one platform user, one
  /// email address, one role held inside its organization. A contact without an
  /// organization is a standalone buyer rather than an error, and two people at
  /// the same company are two contacts sharing an `organization_id`. Creates the
  /// person and their platform login together, so a contact that exists can
  /// always sign in. `role` names one of this tenant's own roles and decides
  /// what they may do; `registration_status` may only be set to `pending` or
  /// `approved` here, because a rejection has to carry a reason and that is the
  /// reject route's job. `email` is the only field a create cannot omit;
  /// everything else is optional or defaulted by the database. Two rows of this
  /// tenant may not share `email` or `external_user_id` (while external_user_id
  /// IS NOT NULL).
  Future<models.Error> customersContactsCreate({required String email, String? firstName, bool? isPrimary, String? jobTitle, String? lastName, String? locale, double? orderApprovalLimit, String? organizationId, String? phone, enums.CustomersContactsCreateRegistrationStatus? registrationStatus, String? role, enums.ContactStatus? status}) async {
    const String apiPath = '/v1/customers/contacts';

        final Map<String, dynamic> apiParams = {
            'email': email,

            'first_name': firstName,

            if (isPrimary != null) 'is_primary': isPrimary,

            'job_title': jobTitle,

            'last_name': lastName,

            'locale': locale,

            'order_approval_limit': orderApprovalLimit,

            'organization_id': organizationId,

            'phone': phone,

            if (registrationStatus != null) 'registration_status': registrationStatus.value,

            if (role != null) 'role': role,

            if (status != null) 'status': status.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// This is how a call, a visit, a meeting, an email or a plain note reaches
  /// one person's timeline. It writes a contact_events row with kind != 'system'
  /// and emits contact_event.created, so an activity travels on the same bus as
  /// a registration decision and a timeline is one query rather than a union.
  /// organization_id is DERIVED from the contact, never taken from the body —
  /// an activity cannot be filed under a company the person does not belong to.
  Future<models.Error> customersContactsEventsCreate({required String contactId, required String subject, String? actor, enums.ContactActivityKind? kind, String? note, String? occurredAt}) async {
    final String apiPath = '/v1/customers/contacts/{contact_id}/events'.replaceAll('{contact_id}', contactId);

        final Map<String, dynamic> apiParams = {
            'actor': actor,

            if (kind != null) 'kind': kind.value,

            'note': note,

            'occurred_at': occurredAt,

            'subject': subject,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Tell somebody they were added to a company. A deliberate act rather than a
  /// side effect of creating the contact: a merchant entering a colleague from a
  /// business card is not always ready to mail them, and "added" and "told" are
  /// different decisions. No secret travels — the platform team membership is
  /// confirmed as it is created, so there is nothing to accept; the message says
  /// "you are in, here is the way in". Unlike the auth mails, a failure here IS
  /// a failure: the identity service sends nothing for this occasion, so this is
  /// the only message the person gets.
  Future<models.Error> customersContactsInvite({required String contactId, required String url, String? invitedBy}) async {
    final String apiPath = '/v1/customers/contacts/{contact_id}/invite'.replaceAll('{contact_id}', contactId);

        final Map<String, dynamic> apiParams = {
            'invited_by': invitedBy,

            'url': url,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Computed from contacts.role on every call — the grants are never
  /// persisted, so this always reflects the role the contact holds right now.
  Future<models.Error> customersContactsPermissions({required String contactId}) async {
    final String apiPath = '/v1/customers/contacts/{contact_id}/permissions'.replaceAll('{contact_id}', contactId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Only reachable for a contact whose registration_status is 'pending' or
  /// 'rejected' (approving a rejection reinstates it). Enables the platform user
  /// FIRST — the password the applicant chose at submit time works
  /// immediately, no new credential is issued — then sets
  /// registration_status='approved' and status='active', and un-blocks the
  /// organization this registration itself founded. Approving an
  /// already-approved registration is a no-op that emits nothing, so a retry is
  /// safe. Writes a contact_events row named 'registration.approved'.
  Future<models.Error> customersRegistrationsApprove({required String contactId, String? decidedBy}) async {
    final String apiPath = '/v1/customers/contacts/{contact_id}/registration/approve'.replaceAll('{contact_id}', contactId);

        final Map<String, dynamic> apiParams = {
            'decided_by': decidedBy,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Only reachable from 'pending'. Sets registration_status='rejected' and
  /// status='blocked', keeps the platform user in place but disabled — the
  /// email must not fall free for a silent second identity, and the merchant
  /// keeps the record. Delete the contact to remove both. 'reason' is mandatory
  /// and is stored on the contact plus carried in the event payload, so the
  /// applicant can be told why. Rejecting an already-rejected registration is a
  /// no-op. Writes a contact_events row named 'registration.rejected'.
  Future<models.Error> customersRegistrationsReject({required String contactId, required String reason, String? decidedBy}) async {
    final String apiPath = '/v1/customers/contacts/{contact_id}/registration/reject'.replaceAll('{contact_id}', contactId);

        final Map<String, dynamic> apiParams = {
            'decided_by': decidedBy,

            'reason': reason,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A contact is a PERSON, and the unit that logs in: one platform user, one
  /// email address, one role held inside its organization. A contact without an
  /// organization is a standalone buyer rather than an error, and two people at
  /// the same company are two contacts sharing an `organization_id`. Removes the
  /// person and their platform login, so they can no longer sign in anywhere.
  /// Their company keeps trading; use `status: "blocked"` instead when the
  /// intent is to stop one person without erasing what they did. Deleting one
  /// takes every `contact_events` and `addresses` row that points at it with it
  /// — the foreign keys decide, not this route.
  Future<models.Error> customersContactsDelete({required String id}) async {
    final String apiPath = '/v1/customers/contacts/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A contact is a PERSON, and the unit that logs in: one platform user, one
  /// email address, one role held inside its organization. A contact without an
  /// organization is a standalone buyer rather than an error, and two people at
  /// the same company are two contacts sharing an `organization_id`. One person
  /// by id. What they are ALLOWED to do is not in here: permissions are derived
  /// from `role` at read time and answered by `GET
  /// /customers/contacts/{contact_id}/permissions`.
  Future<models.Error> customersContactsGet({required String id}) async {
    final String apiPath = '/v1/customers/contacts/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A contact is a PERSON, and the unit that logs in: one platform user, one
  /// email address, one role held inside its organization. A contact without an
  /// organization is a standalone buyer rather than an error, and two people at
  /// the same company are two contacts sharing an `organization_id`. A partial
  /// update — send only what changes. `external_user_id` and every
  /// `registration_*` column are ignored: the link to platform auth is
  /// mirror-managed, and registration state is only ever moved by the approve
  /// and reject routes, which record why. Two rows of this tenant may not share
  /// `email` or `external_user_id` (while external_user_id IS NOT NULL).
  Future<models.Error> customersContactsUpdate({required String id, String? email, String? firstName, bool? isPrimary, String? jobTitle, String? lastName, String? locale, double? orderApprovalLimit, String? organizationId, String? phone, enums.CustomersContactsCreateRegistrationStatus? registrationStatus, String? role, enums.ContactStatus? status}) async {
    final String apiPath = '/v1/customers/contacts/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (email != null) 'email': email,

            'first_name': firstName,

            if (isPrimary != null) 'is_primary': isPrimary,

            'job_title': jobTitle,

            'last_name': lastName,

            'locale': locale,

            'order_approval_limit': orderApprovalLimit,

            'organization_id': organizationId,

            'phone': phone,

            if (registrationStatus != null) 'registration_status': registrationStatus.value,

            if (role != null) 'role': role,

            if (status != null) 'status': status.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Same row as the contact route, reached from the organization. 'contact_id'
  /// is required and must belong to THIS organization — the picker offering
  /// the contacts is not filtered, so the membership check here is what stops a
  /// call with one company being filed under someone else's person.
  Future<models.Error> customersOrganizationsEventsCreate({required String organizationId, required String contactId, required String subject, String? actor, enums.ContactActivityKind? kind, String? note, String? occurredAt}) async {
    final String apiPath = '/v1/customers/organizations/{organization_id}/events'.replaceAll('{organization_id}', organizationId);

        final Map<String, dynamic> apiParams = {
            'actor': actor,

            'contact_id': contactId,

            if (kind != null) 'kind': kind.value,

            'note': note,

            'occurred_at': occurredAt,

            'subject': subject,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }
}
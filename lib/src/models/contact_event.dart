part of '../../models.dart';

/// One entry on a customer's timeline: an activity somebody logged (call, visit, note) or a registration decision this app recorded. Append-only — nothing here is ever edited.
class ContactEvent implements Model {
    /// Who logged the entry — free text as the client supplied it (operator id or email). Null for a row the app wrote itself.
    final String? actor;

    /// The person this entry is about. Always set: even a company-level activity is filed against somebody, so a timeline never has anonymous rows.
    final String? contact_id;

    /// When the row was written. Together with `occurred_at` this is what tells a late entry from a live one.
    final String? created_at;

    /// Primary key of the timeline entry.
    final String? id;

    /// What kind of entry this is — one of the tenant's own activity types (GET /customers/contact-event-kinds), seeded with note, call, email, meeting, visit, task. 'system' is reserved: those rows are this app's own registration decision trail and no caller may file one.
    final String? kind;

    /// The event name, and the one vocabulary here that is THIS APP's rather than the tenant's: `registration.submitted` | `registration.approved` | `registration.rejected` for decisions, `activity.<kind>` for everything somebody logged. It is also what travels on the bus as `contact_event.created`.
    final String? name;

    /// When the thing actually HAPPENED, which is not when it was written down: a call logged on Monday about Friday says Friday. Defaults to now.
    final String? occurred_at;

    /// The company this entry belongs to, DERIVED from the contact and never taken from a request body — which is what stops a call with one company being filed under someone else's person. Null when the contact has no organization.
    final String? organization_id;

    /// The machine-readable body, and its shape follows `name`. `activity.<kind>` carries `{ note }` — the long form of `subject`. `registration.submitted` carries the application itself: email, organization_id, organization_name, role, locale, vat_id, and `notify`, the recipients the approval mail goes to. `registration.approved` carries `{ decided_by }`; `registration.rejected` adds `reason`. Nothing validates it beyond that — a client writing its own entries decides what belongs in here.
    final Map<String, dynamic>? payload;

    /// One line a person can scan in a timeline. Required for an activity; a decision row carries the app's own wording.
    final String? subject;

    /// The tenant this row belongs to — the store slug, not an id. Set by the platform from the authenticated context, never by a caller; a write that carries it is ignored, and no request can read another tenant's rows by sending a different one.
    final String? tenant_id;

    ContactEvent({
        this.actor,
        this.contact_id,
        this.created_at,
        this.id,
        this.kind,
        this.name,
        this.occurred_at,
        this.organization_id,
        this.payload,
        this.subject,
        this.tenant_id,
    });

    factory ContactEvent.fromMap(Map<String, dynamic> map) {
        return ContactEvent(
            actor: map['actor']?.toString(),
            contact_id: map['contact_id']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            kind: map['kind']?.toString(),
            name: map['name']?.toString(),
            occurred_at: map['occurred_at']?.toString(),
            organization_id: map['organization_id']?.toString(),
            payload: map['payload'],
            subject: map['subject']?.toString(),
            tenant_id: map['tenant_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "actor": actor,
            "contact_id": contact_id,
            "created_at": created_at,
            "id": id,
            "kind": kind,
            "name": name,
            "occurred_at": occurred_at,
            "organization_id": organization_id,
            "payload": payload,
            "subject": subject,
            "tenant_id": tenant_id,
        };
    }
}

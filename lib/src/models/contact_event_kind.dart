part of '../../models.dart';

/// One value of the activity types set. What kind of entry lands on a customer timeline. 'system' is the app's own decision trail and a caller may not file one, whatever the set says.
class ContactEventKind implements Model {
    /// What `contact_events.kind` stores, and the only part of this row other data depends on. Immutable once created: renaming it would orphan every record carrying it.
    final String? code;

    /// When the value was added to this set.
    final String? created_at;

    /// One line of help for an operator choosing this value. Null when there is nothing to add. A row seeded before 0.22.0 may hold a serialized locale map here instead (PE-443).
    final String? description;

    /// Localized descriptions, keyed by language tag ({ "en": …, "de": … }). Null when nobody translated this value — a client then falls back to `description`.
    final Map<String, dynamic>? descriptions;

    /// Primary key of this value. What the update and delete routes address it by — the CODE is what records store.
    final String? id;

    /// The value a create falls back to when the caller names none. Exactly one row of the set carries it; promoting another one demotes this.
    final bool? is_default;

    /// True for a value this app seeded on install. Still renameable and still removable — it only records where the value came from.
    final bool? is_system;

    /// Localized titles, keyed by language tag ({ "en": …, "de": … }). Null when nobody translated this value — a client then falls back to `title`.
    final Map<String, dynamic>? labels;

    /// Where this value sits in the set, ascending. It is the order a select should offer.
    final int? position;

    /// The tenant this row belongs to — the store slug, not an id. Set by the platform from the authenticated context, never by a caller; a write that carries it is ignored, and no request can read another tenant's rows by sending a different one.
    final String? tenant_id;

    /// The fallback name — what a client shows when no locale in `labels` matches. A row seeded before 0.22.0 may hold a serialized locale map here instead (PE-443) — those rows were seeded with no `labels` at all.
    final String? title;

    /// Semantic badge colour. The palette stays fixed — it is a render concern, not a merchant decision.
    final enums.ContactEventKindTone? tone;

    /// When it was last edited.
    final String? updated_at;

    ContactEventKind({
        this.code,
        this.created_at,
        this.description,
        this.descriptions,
        this.id,
        this.is_default,
        this.is_system,
        this.labels,
        this.position,
        this.tenant_id,
        this.title,
        this.tone,
        this.updated_at,
    });

    factory ContactEventKind.fromMap(Map<String, dynamic> map) {
        return ContactEventKind(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            description: map['description']?.toString(),
            descriptions: map['descriptions'],
            id: map['id']?.toString(),
            is_default: map['is_default'],
            is_system: map['is_system'],
            labels: map['labels'],
            position: map['position'],
            tenant_id: map['tenant_id']?.toString(),
            title: map['title']?.toString(),
            tone: map['tone'] != null ? enums.ContactEventKindTone.values.firstWhere((e) => e.value == map['tone']) : null,
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "created_at": created_at,
            "description": description,
            "descriptions": descriptions,
            "id": id,
            "is_default": is_default,
            "is_system": is_system,
            "labels": labels,
            "position": position,
            "tenant_id": tenant_id,
            "title": title,
            "tone": tone?.value,
            "updated_at": updated_at,
        };
    }
}

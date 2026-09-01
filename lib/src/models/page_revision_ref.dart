part of '../../models.dart';

/// One publication of this page, without the snapshot — who published, when, and under what name.
class PageRevisionRef implements Model {
    /// When this revision was published.
    final String? created_at;

    /// The user id that published.
    final String? created_by;

    /// That user's display name, copied in at publish time so the history stays readable after the user is gone.
    final String? created_by_name;

    /// The revision id. A page's `published_revision_id` points at one of these, and it is the only thing delivery reads.
    final String? id;

    /// What this publication was called, e.g. "Autumn campaign". It is what turns the history into a list of changes rather than a list of timestamps.
    final String? label;

    /// The page this revision belongs to.
    final String? page_id;

    PageRevisionRef({
        this.created_at,
        this.created_by,
        this.created_by_name,
        this.id,
        this.label,
        this.page_id,
    });

    factory PageRevisionRef.fromMap(Map<String, dynamic> map) {
        return PageRevisionRef(
            created_at: map['created_at']?.toString(),
            created_by: map['created_by']?.toString(),
            created_by_name: map['created_by_name']?.toString(),
            id: map['id']?.toString(),
            label: map['label']?.toString(),
            page_id: map['page_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "created_by": created_by,
            "created_by_name": created_by_name,
            "id": id,
            "label": label,
            "page_id": page_id,
        };
    }
}

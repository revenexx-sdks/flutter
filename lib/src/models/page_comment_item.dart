part of '../../models.dart';

/// One comment, in the shape the editor renders — this is not the stored row: the id is `uuid`, the timestamps are `created`/`updated` and the author is nested under `user`.
class PageCommentItem implements Model {
    /// The blocks this thread hangs on, so the editor can draw a marker next to them. Empty for a comment about the page as a whole.
    final List<String>? blockUuids;

    /// The comment itself, as editor HTML. @mentions are `<span data-type="mention" data-id="…">` — that is what this app reads to decide whom to notify — and task checkboxes are `<li data-type="taskItem" data-checked="…">`.
    final String? body;

    /// When the comment was written.
    final String? created;

    /// The root comment this is a reply to. Absent on a root — and only roots can be resolved.
    final String? parentUuid;

    /// Whether the thread was marked done. Replies inherit nothing: resolving is a property of the root.
    final bool? resolved;

    /// When it was last edited. Absent when it never was.
    final String? updated;

    /// Who wrote it, or `null` when it was written without an identity.
    final Map? user;

    /// The comment id. Every comment route addresses one by it.
    final String? uuid;

    PageCommentItem({
        this.blockUuids,
        this.body,
        this.created,
        this.parentUuid,
        this.resolved,
        this.updated,
        this.user,
        this.uuid,
    });

    factory PageCommentItem.fromMap(Map<String, dynamic> map) {
        return PageCommentItem(
            blockUuids: List.from(map['blockUuids'] ?? []),
            body: map['body']?.toString(),
            created: map['created']?.toString(),
            parentUuid: map['parentUuid']?.toString(),
            resolved: map['resolved'],
            updated: map['updated']?.toString(),
            user: map['user'],
            uuid: map['uuid']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "blockUuids": blockUuids,
            "body": body,
            "created": created,
            "parentUuid": parentUuid,
            "resolved": resolved,
            "updated": updated,
            "user": user,
            "uuid": uuid,
        };
    }
}

part of '../../models.dart';

/// 
class FormDeleteResult implements Model {
    /// True when the policy is 'archive' and submissions exist — the form was archived, not deleted.
    final bool? archived;

    /// The form row was removed — and with it, via the cascade, every submission it had. `submissions` below says how many went, and they are not recoverable.
    final bool? deleted;

    /// The form in the path.
    final String? id;

    /// The form's status after the call. Only present on the archive branch.
    final enums.FormStatus? status;

    /// How many submissions the form had when the call was weighed — and therefore, when `deleted` is true, how many were deleted with it. The whole inbox, across every market: the cascade is a database operation and takes them all, so an active `X-Revenexx-Market` does not narrow this number.
    final int? submissions;

    FormDeleteResult({
        this.archived,
        this.deleted,
        this.id,
        this.status,
        this.submissions,
    });

    factory FormDeleteResult.fromMap(Map<String, dynamic> map) {
        return FormDeleteResult(
            archived: map['archived'],
            deleted: map['deleted'],
            id: map['id']?.toString(),
            status: map['status'] != null ? enums.FormStatus.values.firstWhere((e) => e.value == map['status']) : null,
            submissions: map['submissions'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "archived": archived,
            "deleted": deleted,
            "id": id,
            "status": status?.value,
            "submissions": submissions,
        };
    }
}

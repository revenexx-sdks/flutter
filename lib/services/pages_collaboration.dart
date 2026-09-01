part of '../revenexx.dart';

  /// The review layer over a page: comment threads pinned to blocks, with
  /// @mentions, task checkboxes and resolve/reopen, plus the notification feed
  /// those threads and an ownership handover raise, and the user directory a
  /// mention is picked from. Comments belong to the PAGE, not to a revision or
  /// an edit state, so they outlive publishing and reverting — which is what
  /// makes them usable as a review trail. Every write here answers the page&#039;s
  /// whole comment list rather than the row it touched, so a client can render
  /// from one response.
class PagesCollaboration extends Service {
  /// Initializes a [PagesCollaboration] service
  PagesCollaboration(super.client);

  /// The caller's own notifications, newest first, 20 at a time. Paged by an
  /// opaque cursor rather than by offset, so new arrivals never shift a page
  /// under the reader. It is also the one read in this app that writes:
  /// `?markAsRead=true` flags the notifications on the page it just returned as
  /// read, which is how a feed that has been looked at empties its badge without
  /// a second call — leave it off and reading changes nothing.
  Future pagesEditorNotificationsList({String? after, String? markAsRead}) async {
    const String apiPath = '/v1/pages/editor/notifications';

        final Map<String, dynamic> apiParams = {
            if (after != null) 'after': after,

            if (markAsRead != null) 'markAsRead': markAsRead,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Empties the badge in one call. Every unread notification of the CURRENT
  /// user is flagged read — the user is the one the request's context token
  /// names and there is no body with which to name another. Nothing is deleted:
  /// `GET /pages/editor/notifications` still returns the same feed, just with
  /// `read` set. The answer is the new unread count, so a client can set the
  /// badge straight from it without a second read.
  Future pagesEditorNotificationsMarkAllRead() async {
    const String apiPath = '/v1/pages/editor/notifications/mark-all-read';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// The cheap poll behind the badge.
  Future pagesEditorNotificationsUnreadCount() async {
    const String apiPath = '/v1/pages/editor/notifications/unread-count';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// What the @mention picker is filled from. When the identity service cannot
  /// be reached this degrades to the authors who have already commented on this
  /// tenant's pages rather than answering an error — a mention list that is
  /// short is more useful than one that is missing.
  Future pagesEditorUsers() async {
    const String apiPath = '/v1/pages/editor/users';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Every comment on the page in one flat list, oldest first, roots and replies
  /// together and resolved threads included — there is no filter and no
  /// paging, because the editor nests and filters them itself from `parentUuid`
  /// and pins each root to its blocks with `blockUuids`. Comments hang off the
  /// PAGE, not off a revision or an edit state, so publishing and reverting
  /// leave them standing; that is what makes them usable as a review trail
  /// across several rounds of edits.
  Future<models.PageCommentList> pagesEditorCommentsList({required String pageId}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments'.replaceAll('{page_id}', pageId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PageCommentList.fromMap(res.data);

  }

  /// The same route writes both kinds, and which one you get is decided by the
  /// body: `blockUuids` starts a new thread pinned to those blocks, `parentUuid`
  /// hangs a reply under an existing root. Everyone named with an @mention in
  /// the body is notified, and on a reply so is everybody already in the thread
  /// — the actor never notifies themselves.
  Future<models.PageCommentList> pagesEditorCommentsCreate({required String pageId, required String body, List<String>? blockUuids, String? parentUuid}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments'.replaceAll('{page_id}', pageId);

        final Map<String, dynamic> apiParams = {
            'blockUuids': blockUuids,

            'body': body,

            'parentUuid': parentUuid,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PageCommentList.fromMap(res.data);

  }

  /// A hard delete, and deleting a root takes its replies with it.
  Future<models.PageCommentList> pagesEditorCommentsDelete({required String pageId, required String uuid}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments/{uuid}'.replaceAll('{page_id}', pageId).replaceAll('{uuid}', uuid);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PageCommentList.fromMap(res.data);

  }

  /// Rewrites what a comment says, and only its author may — a comment carries
  /// an `author_id` and anybody else is refused with 403. Only the body moves:
  /// what the comment is pinned to, whether the thread is resolved and who wrote
  /// it are all fixed when it is created. Rewriting a body does NOT re-run the
  /// @mention notifications, so mentioning somebody new by editing will not
  /// reach them. Answers the page's whole comment list rather than the one row,
  /// so a client can re-render from the response.
  Future<models.Error> pagesEditorCommentsUpdate({required String pageId, required String uuid, required String body}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments/{uuid}'.replaceAll('{page_id}', pageId).replaceAll('{uuid}', uuid);

        final Map<String, dynamic> apiParams = {
            'body': body,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Marks a thread handled, so the editor stops surfacing it on the block it is
  /// pinned to. Only a ROOT can be resolved — resolved-ness is a property of
  /// the thread and not of a message in it, so pointing this at a reply is
  /// refused with 400 rather than quietly resolving its parent. Nothing is
  /// deleted, nobody is notified, and the thread stays in the list;
  /// `.../unresolve` is the way back. Answers the page's whole comment list.
  Future<models.Error> pagesEditorCommentsResolve({required String pageId, required String uuid}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments/{uuid}/resolve'.replaceAll('{page_id}', pageId).replaceAll('{uuid}', uuid);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A comment body may carry a task list. This flips one checkbox by rewriting
  /// the body's markup, and answers the single comment rather than the whole
  /// list. A `taskIndex` that names no checkbox is refused and nothing is
  /// written — the comment's `updated_at` is the editor's "edited" marker, so
  /// a call that changes nothing must not move it.
  Future<models.Error> pagesEditorCommentsToggleTask({required String pageId, required String uuid, required int taskIndex}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments/{uuid}/toggle-task'.replaceAll('{page_id}', pageId).replaceAll('{uuid}', uuid);

        final Map<String, dynamic> apiParams = {
            'taskIndex': taskIndex,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Clears the resolved flag and puts the thread back in front of whoever is
  /// editing — the mirror of `.../resolve` in every respect, including that
  /// only a root can be reopened and that a reply answers 400. A thread that was
  /// already open is accepted and stays open. Answers the page's whole comment
  /// list.
  Future<models.Error> pagesEditorCommentsUnresolve({required String pageId, required String uuid}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments/{uuid}/unresolve'.replaceAll('{page_id}', pageId).replaceAll('{uuid}', uuid);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }
}
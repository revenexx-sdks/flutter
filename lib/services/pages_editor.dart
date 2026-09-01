part of '../revenexx.dart';

/// The unpublished side: one page open in the visual editor, held as a
/// server-side mutation log rather than as edited rows. Load the whole editor
/// state in one call, append mutations, walk the undo/redo pointer, disable a
/// single step, then publish — which materializes the log into the canonical
/// blocks and writes a revision — or revert, which throws it away. An edit
/// state has ONE owner at a time and every write asks for it, so taking a page
/// over from a colleague is its own call. Scheduling, share-links for
/// unpublished previews, machine translation and a person&#039;s own editor
/// preferences hang off the same session.
class PagesEditor extends Service {
  /// Initializes a [PagesEditor] service
  PagesEditor(super.client);

  /// The drafts overview — the "what is unpublished right now" list, across
  /// every page: who holds it, since when, and whether it is parked for a date.
  /// Always newest-first — this route does not read `order`. An edit state
  /// whose page has been deleted is dropped from `items` but still counted in
  /// `total`.
  Future pagesEditorEditStates(
      {enums.PageEditStateStatus? status, int? limit, int? offset}) async {
    const String apiPath = '/v1/pages/editor/edit-states';

    final Map<String, dynamic> apiParams = {
      if (status != null) 'status': status.value,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// The translation is the tenant's provider's, not this app's, and a tenant
  /// that has configured none gets no translation at all. The endpoint comes
  /// from the tenant setting `translate_endpoint` (PAGES_TRANSLATE_ENDPOINT
  /// remains a fallback). The bearer token does NOT: the gateway masks every
  /// setting flagged `sensitive`, so a key stored as one could never be read
  /// back — it stays the PAGES_TRANSLATE_KEY function secret. This app does
  /// not translate anything itself; it forwards `items` and hands the answer
  /// back.
  Future<models.Error> pagesEditorTranslate({List<Map>? items}) async {
    const String apiPath = '/v1/pages/editor/translate';

    final Map<String, dynamic> apiParams = {
      'items': items,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Per-user editor preferences — one row per user, scoped to this app. Not
  /// tenant configuration: nothing here changes what the API does, only how one
  /// person's editor looks.
  Future pagesEditorUserSettingsGet() async {
    const String apiPath = '/v1/pages/editor/user-settings';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Replaces the caller's preferences wholesale — this is not a merge, so
  /// send the whole bag.
  Future pagesEditorUserSettingsPut({Map? settings}) async {
    const String apiPath = '/v1/pages/editor/user-settings';

    final Map<String, dynamic> apiParams = {
      'settings': settings,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Undo and redo. The pointer is the edit state's `current_index`, the
  /// position in the mutation log the page is materialized at, and this route is
  /// the only thing that moves it — `GET …/state?index=` looks at another
  /// position without going there. The log itself is never rewritten — only
  /// the pointer moves — so redo stays available until the next change is
  /// appended.
  Future<models.MutationResponse> pagesEditorHistory(
      {required String pageId, required int index, String? langcode}) async {
    final String apiPath =
        '/v1/pages/editor/{page_id}/history'.replaceAll('{page_id}', pageId);

    final Map<String, dynamic> apiParams = {
      'index': index,
      'langcode': langcode,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MutationResponse.fromMap(res.data);
  }

  /// The cheap poll behind "someone else is editing this page": one integer, the
  /// moment the open edit state last moved, in epoch seconds rather than as a
  /// timestamp so a comparison is a subtraction. Compare it with the `updatedAt`
  /// you last saw and re-fetch the state only when it moved.
  Future pagesEditorLastChanged({required String pageId}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/last-changed'
        .replaceAll('{page_id}', pageId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Take one change out of the replay without deleting it — "what would the
  /// page look like without this edit". The entry stays in the history and can
  /// be switched back on.
  Future<models.MutationResponse> pagesEditorMutationStatus(
      {required String pageId,
      required bool enabled,
      required int index,
      String? langcode}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/mutation-status'
        .replaceAll('{page_id}', pageId);

    final Map<String, dynamic> apiParams = {
      'enabled': enabled,
      'index': index,
      'langcode': langcode,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MutationResponse.fromMap(res.data);
  }

  /// The one way page CONTENT changes. Each call appends one entry to the
  /// append-only log and answers the whole re-materialized state, so a client
  /// never re-fetches. A page nobody has opened yet needs no separate call to
  /// open it: the first mutation creates the edit state and takes ownership of
  /// it, and every later one asks for that ownership, so a second person editing
  /// the same page is refused until they take it over. Appending while the
  /// pointer sits mid-history discards the redo branch, exactly as an editor
  /// expects.
  Future<models.MutationResponse> pagesEditorMutate(
      {required String pageId,
      required String plugin,
      String? langcode,
      Map? payload}) async {
    final String apiPath =
        '/v1/pages/editor/{page_id}/mutations'.replaceAll('{page_id}', pageId);

    final Map<String, dynamic> apiParams = {
      'langcode': langcode,
      'payload': payload,
      'plugin': plugin,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MutationResponse.fromMap(res.data);
  }

  /// Mints a link that shows this page's current edit state — the UNPUBLISHED
  /// one — to somebody without an editor account. The token is the whole
  /// credential — anyone holding it sees the page — so it expires, and a new
  /// one is cheap.
  Future pagesEditorPreviewGrant(
      {required String pageId, int? ttlHours}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/preview-grant'
        .replaceAll('{page_id}', pageId);

    final Map<String, dynamic> apiParams = {
      if (ttlHours != null) 'ttlHours': ttlHours,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Four things in one call: the mutation log is replayed into a finished block
  /// tree, that tree is snapshotted into a new revision, the page's canonical
  /// blocks are replaced by it, and the edit state is archived — so the page
  /// comes out of this with nothing unpublished and the working copy behind it
  /// closed rather than deleted. The revision is written FIRST and the canonical
  /// blocks replaced after, so a failure mid-way leaves the page recoverable.
  /// Block uuids survive, which is why comments anchored to a block outlive the
  /// publish.
  Future<models.Error> pagesEditorPublish(
      {required String pageId, bool? force, String? label}) async {
    final String apiPath =
        '/v1/pages/editor/{page_id}/publish'.replaceAll('{page_id}', pageId);

    final Map<String, dynamic> apiParams = {
      'force': force,
      'label': label,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Throws the whole working copy away: the edit state row is deleted and its
  /// mutation log with it, so the history goes too — this is not an undo and
  /// cannot itself be undone. Unlike publishing, which archives the edit state,
  /// nothing of it survives to be reopened. The published page is untouched.
  Future<models.MutationResponse> pagesEditorRevert(
      {required String pageId}) async {
    final String apiPath =
        '/v1/pages/editor/{page_id}/revert'.replaceAll('{page_id}', pageId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MutationResponse.fromMap(res.data);
  }

  /// Gated on the tenant setting `enable_scheduled_publishing`, which is off by
  /// default: nothing in the platform publishes a scheduled edit state yet, so a
  /// date accepted here would be a promise the app cannot keep. Every editor
  /// state carries `features.scheduledPublishing` so the control can be hidden
  /// rather than the refusal discovered.
  Future<models.Error> pagesEditorSchedule(
      {required String pageId, required String scheduledAt}) async {
    final String apiPath =
        '/v1/pages/editor/{page_id}/schedule'.replaceAll('{page_id}', pageId);

    final Map<String, dynamic> apiParams = {
      'scheduledAt': scheduledAt,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The one call the visual editor boots on, and the only place the UNPUBLISHED
  /// page can be seen whole: the canonical blocks with every enabled mutation of
  /// the log replayed over them, the resulting field lists, the mutation history
  /// itself, who owns the edit state and where the undo pointer sits, and the
  /// tenant's editor feature flags. `langcode` decides which language the props
  /// resolve in, falling back to the page's source language. `index` replays the
  /// log up to a given position instead of the current one, which is how the
  /// editor previews an undo without performing it — it changes nothing, so it
  /// is safe to call at any position. Reading this creates nothing either: a
  /// page nobody has opened answers with a null `editState`, an empty history,
  /// and the published blocks as they stand.
  Future<models.EditorState> pagesEditorState(
      {required String pageId, String? langcode, int? index}) async {
    final String apiPath =
        '/v1/pages/editor/{page_id}/state'.replaceAll('{page_id}', pageId);

    final Map<String, dynamic> apiParams = {
      if (langcode != null) 'langcode': langcode,
      if (index != null) 'index': index,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.EditorState.fromMap(res.data);
  }

  /// One page has one writer. This is how the second person gets the pen — the
  /// previous owner is notified rather than silently locked out.
  Future<models.MutationResponse> pagesEditorTakeOwnership(
      {required String pageId}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/take-ownership'
        .replaceAll('{page_id}', pageId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MutationResponse.fromMap(res.data);
  }

  /// Freezes a selection into a reusable starting point. The blocks are read out
  /// of the page's CURRENT edit state rather than out of what is published, so a
  /// template can be cut from work in progress and the uuids you send are the
  /// ones the editor is showing. Unlike making a block reusable, this COPIES:
  /// pages later made from the template are independent of it and of each other.
  Future<models.Error> pagesEditorTemplatesCreate(
      {required String pageId,
      required String label,
      required List<String> uuids,
      String? description,
      String? fieldName,
      bool? isDefault,
      String? pageBundle}) async {
    final String apiPath =
        '/v1/pages/editor/{page_id}/templates'.replaceAll('{page_id}', pageId);

    final Map<String, dynamic> apiParams = {
      'description': description,
      'fieldName': fieldName,
      'isDefault': isDefault,
      'label': label,
      'pageBundle': pageBundle,
      'uuids': uuids,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Takes a parked edit state back to `active` and clears its date, so the
  /// scheduled publication simply does not happen. The work is not touched —
  /// the mutation log, the undo position and the owner all stay as they were —
  /// and the page can then be published by hand or scheduled again for a
  /// different date. Like every other write to an edit state it asks for
  /// ownership, and a page with no open edit state answers 404 rather than
  /// pretending to have cancelled something.
  Future pagesEditorUnschedule({required String pageId}) async {
    final String apiPath =
        '/v1/pages/editor/{page_id}/unschedule'.replaceAll('{page_id}', pageId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }
}

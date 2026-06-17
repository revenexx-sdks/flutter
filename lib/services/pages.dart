part of '../revenexx.dart';

class Pages extends Service {
  /// Initializes a [Pages] service
  Pages(super.client);

  Future pagesDeliveryMenus() async {
    const String apiPath = '/v1/pages/delivery/menus';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.DeliveryPage> pagesDeliveryPage() async {
    const String apiPath = '/v1/pages/delivery/page';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.DeliveryPage.fromMap(res.data);

  }

  Future pagesDeliveryPages() async {
    const String apiPath = '/v1/pages/delivery/pages';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.DeliveryPage> pagesDeliveryPreview({required String token}) async {
    final String apiPath = '/v1/pages/delivery/preview/{token}'.replaceAll('{token}', token);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.DeliveryPage.fromMap(res.data);

  }

  Future pagesEditorEditStates() async {
    const String apiPath = '/v1/pages/editor/edit-states';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesEditorNotificationsList() async {
    const String apiPath = '/v1/pages/editor/notifications';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesEditorNotificationsMarkAllRead() async {
    const String apiPath = '/v1/pages/editor/notifications/mark-all-read';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesEditorNotificationsUnreadCount() async {
    const String apiPath = '/v1/pages/editor/notifications/unread-count';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesEditorTranslate({List<Map>? items}) async {
    const String apiPath = '/v1/pages/editor/translate';

        final Map<String, dynamic> apiParams = {
            'items': items,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesEditorUserSettingsGet() async {
    const String apiPath = '/v1/pages/editor/user-settings';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesEditorUserSettingsPut({Map? settings}) async {
    const String apiPath = '/v1/pages/editor/user-settings';

        final Map<String, dynamic> apiParams = {
            'settings': settings,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesEditorUsers() async {
    const String apiPath = '/v1/pages/editor/users';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesEditorCommentsList({required String pageId}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesEditorCommentsCreate({required String pageId, required String body, List<String>? blockUuids, String? parentUuid}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
            'blockUuids': blockUuids,

            'body': body,

            'parentUuid': parentUuid,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesEditorCommentsDelete({required String pageId, required String uuid}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments/{uuid}'.replaceAll('{pageId}', pageId).replaceAll('{uuid}', uuid);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesEditorCommentsUpdate({required String pageId, required String uuid, required String body}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments/{uuid}'.replaceAll('{pageId}', pageId).replaceAll('{uuid}', uuid);

        final Map<String, dynamic> apiParams = {
            'body': body,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesEditorCommentsResolve({required String pageId, required String uuid}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments/{uuid}/resolve'.replaceAll('{pageId}', pageId).replaceAll('{uuid}', uuid);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Comment> pagesEditorCommentsToggleTask({required String pageId, required String uuid, required int taskIndex}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments/{uuid}/toggle-task'.replaceAll('{pageId}', pageId).replaceAll('{uuid}', uuid);

        final Map<String, dynamic> apiParams = {
            'taskIndex': taskIndex,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Comment.fromMap(res.data);

  }

  Future pagesEditorCommentsUnresolve({required String pageId, required String uuid}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/comments/{uuid}/unresolve'.replaceAll('{pageId}', pageId).replaceAll('{uuid}', uuid);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.MutationResponse> pagesEditorHistory({required String pageId, required int index, String? langcode}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/history'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
            'index': index,

            'langcode': langcode,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MutationResponse.fromMap(res.data);

  }

  Future pagesEditorLastChanged({required String pageId}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/last-changed'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.MutationResponse> pagesEditorMutationStatus({required String pageId, required bool enabled, required int index, String? langcode}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/mutation-status'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
            'enabled': enabled,

            'index': index,

            'langcode': langcode,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MutationResponse.fromMap(res.data);

  }

  Future<models.MutationResponse> pagesEditorMutate({required String pageId, required String plugin, String? langcode, Map? payload}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/mutations'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
            'langcode': langcode,

            'payload': payload,

            'plugin': plugin,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MutationResponse.fromMap(res.data);

  }

  Future pagesEditorPreviewGrant({required String pageId, int? ttlHours}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/preview-grant'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
            if (ttlHours != null) 'ttlHours': ttlHours,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.MutationResponse> pagesEditorPublish({required String pageId, bool? force, String? label}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/publish'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
            'force': force,

            'label': label,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MutationResponse.fromMap(res.data);

  }

  Future<models.MutationResponse> pagesEditorRevert({required String pageId}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/revert'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MutationResponse.fromMap(res.data);

  }

  Future pagesEditorSchedule({required String pageId, required String scheduledAt}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/schedule'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
            'scheduledAt': scheduledAt,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.EditorState> pagesEditorState({required String pageId}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/state'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.EditorState.fromMap(res.data);

  }

  Future<models.MutationResponse> pagesEditorTakeOwnership({required String pageId}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/take-ownership'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MutationResponse.fromMap(res.data);

  }

  Future<models.Template> pagesEditorTemplatesCreate({required String pageId, required String label, required List<String> uuids, String? description, String? fieldName, bool? isDefault, String? pageBundle}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/templates'.replaceAll('{pageId}', pageId);

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

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Template.fromMap(res.data);

  }

  Future pagesEditorUnschedule({required String pageId}) async {
    final String apiPath = '/v1/pages/editor/{page_id}/unschedule'.replaceAll('{pageId}', pageId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesLibraryList() async {
    const String apiPath = '/v1/pages/library';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesLibraryDelete({required String id}) async {
    final String apiPath = '/v1/pages/library/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.LibraryItem> pagesLibraryGet({required String id}) async {
    final String apiPath = '/v1/pages/library/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.LibraryItem.fromMap(res.data);

  }

  Future<models.LibraryItem> pagesLibraryUpdate({required String id, String? bundle, String? label, Map? tree}) async {
    final String apiPath = '/v1/pages/library/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (bundle != null) 'bundle': bundle,

            if (label != null) 'label': label,

            if (tree != null) 'tree': tree,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.LibraryItem.fromMap(res.data);

  }

  Future pagesMenusList() async {
    const String apiPath = '/v1/pages/menus';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Menu> pagesMenusUpsert({required String label, required String menuKey, List<Map>? items}) async {
    const String apiPath = '/v1/pages/menus';

        final Map<String, dynamic> apiParams = {
            if (items != null) 'items': items,

            'label': label,

            'menuKey': menuKey,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Menu.fromMap(res.data);

  }

  Future pagesMenusDelete({required String id}) async {
    final String apiPath = '/v1/pages/menus/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Menu> pagesMenusGet({required String id}) async {
    final String apiPath = '/v1/pages/menus/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Menu.fromMap(res.data);

  }

  Future<models.Menu> pagesMenusUpdate({required String id, List<Map>? items, String? label}) async {
    final String apiPath = '/v1/pages/menus/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (items != null) 'items': items,

            if (label != null) 'label': label,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Menu.fromMap(res.data);

  }

  Future pagesPagesList() async {
    const String apiPath = '/v1/pages/pages';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Page> pagesPagesCreate({required String title, String? bundle, Map? hostOptions, Map? meta, String? slug, String? sourceLanguage}) async {
    const String apiPath = '/v1/pages/pages';

        final Map<String, dynamic> apiParams = {
            'bundle': bundle,

            'hostOptions': hostOptions,

            'meta': meta,

            'slug': slug,

            'sourceLanguage': sourceLanguage,

            'title': title,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Page.fromMap(res.data);

  }

  Future pagesPagesDelete({required String id}) async {
    final String apiPath = '/v1/pages/pages/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Page> pagesPagesGet({required String id}) async {
    final String apiPath = '/v1/pages/pages/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Page.fromMap(res.data);

  }

  Future<models.Page> pagesPagesUpdate({required String id, String? bundle, Map? meta, String? slug, enums.PageStatus? status, String? title}) async {
    final String apiPath = '/v1/pages/pages/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (bundle != null) 'bundle': bundle,

            if (meta != null) 'meta': meta,

            'slug': slug,

            if (status != null) 'status': status.value,

            if (title != null) 'title': title,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Page.fromMap(res.data);

  }

  Future pagesPagesRevisions({required String id}) async {
    final String apiPath = '/v1/pages/pages/{id}/revisions'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesSeed({List<Map>? menus, List<Map>? pages}) async {
    const String apiPath = '/v1/pages/seed';

        final Map<String, dynamic> apiParams = {
            'menus': menus,

            'pages': pages,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesTemplatesList() async {
    const String apiPath = '/v1/pages/templates';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pagesTemplatesDelete({required String id}) async {
    final String apiPath = '/v1/pages/templates/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Template> pagesTemplatesGet({required String id}) async {
    final String apiPath = '/v1/pages/templates/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Template.fromMap(res.data);

  }

  Future<models.Template> pagesTemplatesUpdate({required String id, String? description, String? fieldName, bool? isDefault, String? label, String? pageBundle, List<Map>? tree}) async {
    final String apiPath = '/v1/pages/templates/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'description': description,

            'field_name': fieldName,

            if (isDefault != null) 'is_default': isDefault,

            if (label != null) 'label': label,

            'page_bundle': pageBundle,

            if (tree != null) 'tree': tree,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Template.fromMap(res.data);

  }
}
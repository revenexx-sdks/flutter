part of '../revenexx.dart';

  /// Media storage: assets, folders, quotas (revenexx storage service).
class Storage extends Service {
  /// Initializes a [Storage] service
  Storage(super.client);

  Future assetIndex({String? search}) async {
    const String apiPath = '/v1/storage/assets';

        final Map<String, dynamic> apiParams = {
            if (search != null) 'search': search,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future assetStore({required String file, String? altText, String? description, String? displayName, String? folderId, bool? keepArchive, List<String>? tags, bool? unpack, enums.Visibility? visibility, Function(UploadProgress)? onProgress}) async {
    const String apiPath = '/v1/storage/assets';

        final Map<String, dynamic> apiParams = {


            'alt_text': altText,

            'description': description,

            'display_name': displayName,

            'file': file,

            'folder_id': folderId,

            'keep_archive': keepArchive,

            'tags': tags,

            'unpack': unpack,

            'visibility': visibility?.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'multipart/form-data',
        };

        String idParamName = '';
        final res = await client.chunkedUpload(
            path: apiPath,
            params: apiParams,
            paramName: paramName,
            idParamName: idParamName,
            headers: apiHeaders,
            onProgress: onProgress,
          );

        return  res.data;

  }

  Future assetBulk({String? folderId, String? visibility}) async {
    const String apiPath = '/v1/storage/assets/bulk';

        final Map<String, dynamic> apiParams = {
            if (folderId != null) 'folder_id': folderId,

            if (visibility != null) 'visibility': visibility,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future assetDestroy({required String id}) async {
    final String apiPath = '/v1/storage/assets/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future assetShow({required String id}) async {
    final String apiPath = '/v1/storage/assets/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future assetUpdate({required String id, String? altText, String? description, String? displayName, String? folderId, String? name, List<String>? tags, enums.Visibility? visibility}) async {
    final String apiPath = '/v1/storage/assets/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'alt_text': altText,

            'description': description,

            'display_name': displayName,

            'folder_id': folderId,

            'name': name,

            'tags': tags,

            'visibility': visibility?.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future assetDownload({required String id}) async {
    final String apiPath = '/v1/storage/assets/{id}/download'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future assetPermanent({required String id}) async {
    final String apiPath = '/v1/storage/assets/{id}/permanent'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future assetReprocess({required String id}) async {
    final String apiPath = '/v1/storage/assets/{id}/reprocess'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future assetRestore({required String id}) async {
    final String apiPath = '/v1/storage/assets/{id}/restore'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future assetSign({required String id, int? ttlSeconds}) async {
    final String apiPath = '/v1/storage/assets/{id}/sign'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'ttl_seconds': ttlSeconds,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future assetUnpack({required String id, bool? keepArchive, String? targetFolderId}) async {
    final String apiPath = '/v1/storage/assets/{id}/unpack'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'keep_archive': keepArchive,

            'target_folder_id': targetFolderId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future folderIndex() async {
    const String apiPath = '/v1/storage/folders';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future folderStore({required String name, String? parentId}) async {
    const String apiPath = '/v1/storage/folders';

        final Map<String, dynamic> apiParams = {
            'name': name,

            'parent_id': parentId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future folderDestroy({required String id, bool? recursive}) async {
    final String apiPath = '/v1/storage/folders/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (recursive != null) 'recursive': recursive,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future folderShow({required String id}) async {
    final String apiPath = '/v1/storage/folders/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future folderUpdate({required String id, String? name, String? parentId}) async {
    final String apiPath = '/v1/storage/folders/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'name': name,

            'parent_id': parentId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future syncRuleIndex() async {
    const String apiPath = '/v1/storage/sftp/rules';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future syncRuleStore() async {
    const String apiPath = '/v1/storage/sftp/rules';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future syncRuleDestroy({required String id}) async {
    final String apiPath = '/v1/storage/sftp/rules/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future syncRuleShow({required String id}) async {
    final String apiPath = '/v1/storage/sftp/rules/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future syncRuleUpdate({required String id}) async {
    final String apiPath = '/v1/storage/sftp/rules/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future syncRuleRun({required String id}) async {
    final String apiPath = '/v1/storage/sftp/rules/{id}/run'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future syncRuleRunProtocol({required String id, required String runId}) async {
    final String apiPath = '/v1/storage/sftp/rules/{id}/runs/{runId}'.replaceAll('{id}', id).replaceAll('{runId}', runId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future syncRuleHistory({String? ruleId, String? from, String? to}) async {
    const String apiPath = '/v1/storage/sftp/sync-history';

        final Map<String, dynamic> apiParams = {
            if (ruleId != null) 'rule_id': ruleId,

            if (from != null) 'from': from,

            if (to != null) 'to': to,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future tenantStats() async {
    const String apiPath = '/v1/storage/tenant/stats';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future tenantUsage() async {
    const String apiPath = '/v1/storage/tenant/usage';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }
}
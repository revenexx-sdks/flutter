part of '../revenexx.dart';

/// Bulk data plane: import/export profiles, upload tickets, ad-hoc jobs and
/// the job registry (Baseline).
class Io extends Service {
  /// Initializes a [Io] service
  Io(super.client);

  /// The calling tenant's bulk jobs, newest first. Jobs are created by the
  /// feature blocks (import / export / A/B swap / tenant copy / sample) —
  /// never here; this surface is read-only.
  ///
  Future<models.ValidationFailedResponse> listBulkJobs(
      {dynamic? type,
      dynamic? status,
      String? vendor,
      String? app,
      String? entity,
      int? limit}) async {
    const String apiPath = '/v1/io/bulk-jobs';

    final Map<String, dynamic> apiParams = {
      if (type != null) 'type': type,
      if (status != null) 'status': status,
      if (vendor != null) 'vendor': vendor,
      if (app != null) 'app': app,
      if (entity != null) 'entity': entity,
      if (limit != null) 'limit': limit,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }

  /// Status, row counts, and progress for one bulk job.
  ///
  /// Tenant-scoped: an id belonging to another tenant is filtered out and
  /// is therefore indistinguishable from a non-existent one — which is the
  /// intent.
  ///
  Future<models.ValidationFailedResponse> getBulkJob(
      {required String id}) async {
    final String apiPath = '/v1/io/bulk-jobs/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }

  /// Flat list of the entities the calling tenant's installed apps expose,
  /// sorted by vendor, app, entity. Feeds the entity pickers of the
  /// Integration Studio I/O nodes.
  ///
  /// The app set comes from `baseline.tenant_app_versions`. Per app the
  /// entity list is resolved from the tenant's pinned schema version; when
  /// that pointer is stale (missing or not applied) it falls back to the
  /// latest applied version of `(vendor, app)`. Apps with no applied
  /// schema at all contribute no entities.
  ///
  Future<models.ValidationFailedResponse> listIoEntities() async {
    const String apiPath = '/v1/io/entities';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }

  /// Creates a `bulk_job` and dispatches the engine to export the tenant's
  /// rows for an entity. CSV/XML stream row-by-row into an S3 multipart
  /// upload (flat RAM); JSON/XLSX are buffered. The response carries the
  /// object key the result will be written to.
  ///
  Future<models.ValidationFailedResponse> createExport(
      {required String app,
      required String entity,
      required String vendor,
      enums.Format? format,
      String? profileId}) async {
    const String apiPath = '/v1/io/exports';

    final Map<String, dynamic> apiParams = {
      'app': app,
      'entity': entity,
      if (format != null) 'format': format.value,
      if (profileId != null) 'profile_id': profileId,
      'vendor': vendor,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }

  /// Mints a short-TTL signed S3 `GET` URL for the object a completed
  /// export wrote. Tenant-scoped: an id belonging to another tenant — or
  /// to a job that is not an export — is indistinguishable from a
  /// non-existent one and answers `404`.
  ///
  /// The job must have reached `completed` or `partial`; any earlier
  /// state answers `409` and carries the current `job_status`.
  ///
  Future<models.ValidationFailedResponse> getExportUrl(
      {required String id}) async {
    final String apiPath = '/v1/io/exports/{id}/url'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }

  /// Creates a `bulk_job` and dispatches the engine to import a previously
  /// uploaded object into the named entity. The engine streams CSV
  /// row-by-row (flat RAM at 1M+ rows) and COPYs into the entity's staging
  /// sibling before a merge / content-hash delta into the target.
  ///
  Future<models.ValidationFailedResponse> createImport(
      {required String app,
      required String entity,
      required String objectKey,
      required String vendor,
      enums.Format? format,
      List<String>? keys,
      int? maxRejects,
      enums.Mode? mode,
      String? profileId,
      enums.CreateImportTarget? target}) async {
    const String apiPath = '/v1/io/imports';

    final Map<String, dynamic> apiParams = {
      'app': app,
      'entity': entity,
      if (format != null) 'format': format.value,
      if (keys != null) 'keys': keys,
      if (maxRejects != null) 'max_rejects': maxRejects,
      if (mode != null) 'mode': mode.value,
      'object_key': objectKey,
      if (profileId != null) 'profile_id': profileId,
      if (target != null) 'target': target.value,
      'vendor': vendor,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }

  /// The calling tenant's saved profiles, ordered by name.
  ///
  /// When `X-Revenexx-Market` is present the listing is filtered to the
  /// profiles offered for that market — global profiles (`markets: null`)
  /// plus those whose `markets` contain it. Omit the header to get every
  /// profile, which is what the management view wants.
  ///
  Future<models.ValidationFailedResponse> listProfiles() async {
    const String apiPath = '/v1/io/profiles';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }

  /// A tenant-secured, reusable mapping (field rename + transforms + keys)
  /// for a direction (`import`/`export`), format, and entity. Runnable
  /// on-click via `/io/profiles/{id}/run`.
  ///
  Future<models.ValidationFailedResponse> createProfile(
      {required String app,
      required enums.Direction direction,
      required String entity,
      required String format,
      required String name,
      required String vendor,
      enums.ApplyMode? applyMode,
      Map? mapping,
      List<String>? markets,
      Map? options}) async {
    const String apiPath = '/v1/io/profiles';

    final Map<String, dynamic> apiParams = {
      'app': app,
      if (applyMode != null) 'apply_mode': applyMode.value,
      'direction': direction.value,
      'entity': entity,
      'format': format,
      if (mapping != null) 'mapping': mapping,
      'markets': markets,
      'name': name,
      if (options != null) 'options': options,
      'vendor': vendor,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }

  /// Permanently remove a saved profile owned by the calling tenant.
  ///
  /// Idempotent, and deliberately not a `404` path: deleting an id that
  /// does not belong to the tenant still answers `200`, with `deleted: 0`.
  ///
  Future<models.ValidationFailedResponse> deleteProfile(
      {required String id}) async {
    final String apiPath = '/v1/io/profiles/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }

  /// A single saved profile. Tenant-scoped: an id owned by another tenant
  /// is indistinguishable from a non-existent one and answers `404`.
  ///
  Future<models.ValidationFailedResponse> showProfile(
      {required String id}) async {
    final String apiPath = '/v1/io/profiles/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }

  /// Replace a saved profile's mapping, format, or apply mode (tenant-scoped).
  Future<models.ValidationFailedResponse> updateProfile(
      {required String id,
      required String app,
      required enums.Direction direction,
      required String entity,
      required String format,
      required String name,
      required String vendor,
      enums.ApplyMode? applyMode,
      Map? mapping,
      List<String>? markets,
      Map? options}) async {
    final String apiPath = '/v1/io/profiles/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      'app': app,
      if (applyMode != null) 'apply_mode': applyMode.value,
      'direction': direction.value,
      'entity': entity,
      'format': format,
      if (mapping != null) 'mapping': mapping,
      'markets': markets,
      'name': name,
      if (options != null) 'options': options,
      'vendor': vendor,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }

  /// Dispatches the engine using the saved profile. An import run requires
  /// `object_key` (upload first); an export run writes a generated key.
  ///
  Future<models.ValidationFailedResponse> runProfile(
      {required String id, List<String>? markets, String? objectKey}) async {
    final String apiPath = '/v1/io/profiles/{id}/run'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (markets != null) 'markets': markets,
      if (objectKey != null) 'object_key': objectKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }

  /// Returns a short-lived signed S3 `PUT` URL (+ required headers) and
  /// the `object_key` to reference in a subsequent `/io/imports`. The
  /// client uploads bytes directly to object storage — never through
  /// Baseline.
  ///
  Future<models.ValidationFailedResponse> createUpload(
      {String? extension}) async {
    const String apiPath = '/v1/io/uploads';

    final Map<String, dynamic> apiParams = {
      if (extension != null) 'extension': extension,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ValidationFailedResponse.fromMap(res.data);
  }
}

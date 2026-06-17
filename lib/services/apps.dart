part of '../revenexx.dart';

  /// The Revenexx app runtime (Appwrite functions, extended) and marketplace.
class Apps extends Service {
  /// Initializes a [Apps] service
  Apps(super.client);

  /// List all Apps in the active project. Pass `search` to filter by name.
  Future<models.FunctionList> appsList({List<String>? queries, String? search, bool? total}) async {
    const String apiPath = '/v1/apps';

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (search != null) 'search': search,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.FunctionList.fromMap(res.data);

  }

  /// Create a new revenexx App. An App is the deployment surface for code that
  /// runs on the platform — backend jobs, APIs, integrations. The created App
  /// owns subsequent deployments and executions.
  /// 
  /// Phase 1 mirrors the underlying Functions runtime 1:1; future phases will
  /// add manifest validation, registry coupling and schema migrations.
  Future<models.Func> appsCreate({required String functionId, required String name, required enums.Runtime runtime, String? commands, bool? enabled, String? entrypoint, List<String>? events, List<String>? execute, String? installationId, bool? logging, String? providerBranch, String? providerRepositoryId, String? providerRootDirectory, bool? providerSilentMode, String? schedule, List<enums.Scopes>? scopes, String? specification, int? timeout}) async {
    const String apiPath = '/v1/apps';

        final Map<String, dynamic> apiParams = {
            if (commands != null) 'commands': commands,

            if (enabled != null) 'enabled': enabled,

            if (entrypoint != null) 'entrypoint': entrypoint,

            if (events != null) 'events': events,

            if (execute != null) 'execute': execute,

            'functionId': functionId,

            if (installationId != null) 'installationId': installationId,

            if (logging != null) 'logging': logging,

            'name': name,

            if (providerBranch != null) 'providerBranch': providerBranch,

            if (providerRepositoryId != null) 'providerRepositoryId': providerRepositoryId,

            if (providerRootDirectory != null) 'providerRootDirectory': providerRootDirectory,

            if (providerSilentMode != null) 'providerSilentMode': providerSilentMode,

            'runtime': runtime.value,

            if (schedule != null) 'schedule': schedule,

            if (scopes != null) 'scopes': scopes.map((e) => e.value).toList(),

            if (specification != null) 'specification': specification,

            if (timeout != null) 'timeout': timeout,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Func.fromMap(res.data);

  }

  /// List apps published to the Marketplace. Proxies the App Registry on Console
  /// with `?published=true` filter.
  Future appsListMarketplace({String? search, int? perPage, int? page}) async {
    const String apiPath = '/v1/apps/marketplace';

        final Map<String, dynamic> apiParams = {
            if (search != null) 'search': search,

            if (perPage != null) 'per_page': perPage,

            if (page != null) 'page': page,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Install a Marketplace app on the calling project's tenant. Body: { owner,
  /// name }.
  Future appsInstallFromMarketplace({required String name, required String owner}) async {
    const String apiPath = '/v1/apps/marketplace/install';

        final Map<String, dynamic> apiParams = {
            'name': name,

            'owner': owner,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get a list of all runtimes available for an App. Identical content to
  /// `functions.listRuntimes()`.
  Future<models.RuntimeList> appsListRuntimes() async {
    const String apiPath = '/v1/apps/runtimes';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.RuntimeList.fromMap(res.data);

  }

  /// List the compute specifications (CPU + memory) available to Apps in this
  /// project.
  Future<models.SpecificationList> appsListSpecifications() async {
    const String apiPath = '/v1/apps/specifications';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.SpecificationList.fromMap(res.data);

  }

  /// List the curated catalogue of App templates that can be used as starting
  /// points.
  Future<models.TemplateFunctionList> appsListTemplates({List<enums.Runtimes>? runtimes, List<enums.UseCases>? useCases, int? limit, int? offset, bool? total}) async {
    const String apiPath = '/v1/apps/templates';

        final Map<String, dynamic> apiParams = {
            if (runtimes != null) 'runtimes': runtimes.map((e) => e.value).toList(),

            if (useCases != null) 'useCases': useCases.map((e) => e.value).toList(),

            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.TemplateFunctionList.fromMap(res.data);

  }

  /// Get a single App template by its ID.
  Future<models.TemplateFunction> appsGetTemplate({required String templateId}) async {
    final String apiPath = '/v1/apps/templates/{templateId}'.replaceAll('{templateId}', templateId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.TemplateFunction.fromMap(res.data);

  }

  /// Get aggregated usage stats across all Apps in the project for the requested
  /// time range.
  Future<models.UsageFunctions> appsListUsage({enums.Range? range}) async {
    const String apiPath = '/v1/apps/usage';

        final Map<String, dynamic> apiParams = {
            if (range != null) 'range': range.value,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.UsageFunctions.fromMap(res.data);

  }

  /// Delete an App and all of its deployments. Cascades to the App Registry —
  /// Console removes the matching `RegisteredApp` row.
  Future appsDelete({required String functionId}) async {
    final String apiPath = '/v1/apps/{functionId}'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get an App by its unique ID.
  Future<models.Func> appsGet({required String functionId}) async {
    final String apiPath = '/v1/apps/{functionId}'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Func.fromMap(res.data);

  }

  /// Update an App. Use this endpoint to rename, change runtime, schedule,
  /// environment variables and other configuration.
  Future<models.Func> appsUpdate({required String functionId, required String name, String? commands, bool? enabled, String? entrypoint, List<String>? events, List<String>? execute, String? installationId, bool? logging, String? providerBranch, String? providerRepositoryId, String? providerRootDirectory, bool? providerSilentMode, enums.Runtime? runtime, String? schedule, List<enums.Scopes>? scopes, String? specification, int? timeout}) async {
    final String apiPath = '/v1/apps/{functionId}'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            if (commands != null) 'commands': commands,

            if (enabled != null) 'enabled': enabled,

            if (entrypoint != null) 'entrypoint': entrypoint,

            if (events != null) 'events': events,

            if (execute != null) 'execute': execute,

            if (installationId != null) 'installationId': installationId,

            if (logging != null) 'logging': logging,

            'name': name,

            if (providerBranch != null) 'providerBranch': providerBranch,

            if (providerRepositoryId != null) 'providerRepositoryId': providerRepositoryId,

            if (providerRootDirectory != null) 'providerRootDirectory': providerRootDirectory,

            if (providerSilentMode != null) 'providerSilentMode': providerSilentMode,

            if (runtime != null) 'runtime': runtime.value,

            if (schedule != null) 'schedule': schedule,

            if (scopes != null) 'scopes': scopes.map((e) => e.value).toList(),

            if (specification != null) 'specification': specification,

            if (timeout != null) 'timeout': timeout,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Func.fromMap(res.data);

  }

  /// Set the active deployment for an App. The chosen deployment must already be
  /// `ready`.
  Future<models.Func> appsUpdateDeployment({required String functionId, required String deploymentId}) async {
    final String apiPath = '/v1/apps/{functionId}/deployment'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            'deploymentId': deploymentId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Func.fromMap(res.data);

  }

  /// List the deployment history of an App.
  Future<models.DeploymentList> appsListDeployments({required String functionId, List<String>? queries, String? search, bool? total}) async {
    final String apiPath = '/v1/apps/{functionId}/deployments'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (search != null) 'search': search,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.DeploymentList.fromMap(res.data);

  }

  /// Upload a new code deployment for an App. Accepts a `.tar.gz`
  /// archive containing the App source. Phase 2 will extract the
  /// manifest from this archive and validate it against the App
  /// Registry before kicking off the build.
  Future<models.Deployment> appsCreateDeployment({required String functionId, required bool activate, required String code, String? commands, String? entrypoint, Function(UploadProgress)? onProgress}) async {
    final String apiPath = '/v1/apps/{functionId}/deployments'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {


            'activate': activate,

            'code': code,

            if (commands != null) 'commands': commands,

            if (entrypoint != null) 'entrypoint': entrypoint,

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

        return models.Deployment.fromMap(res.data);

  }

  /// Re-deploy an existing build under a new deployment ID. Useful for promoting
  /// a known-good preview build to production without rebuilding.
  Future<models.Deployment> appsCreateDuplicateDeployment({required String functionId, required String deploymentId, String? buildId}) async {
    final String apiPath = '/v1/apps/{functionId}/deployments/duplicate'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            if (buildId != null) 'buildId': buildId,

            'deploymentId': deploymentId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Deployment.fromMap(res.data);

  }

  /// Create a new App deployment from a template in the App Templates catalogue.
  Future<models.Deployment> appsCreateTemplateDeployment({required String functionId, required String owner, required String reference, required String repository, required String rootDirectory, required enums.Type type, bool? activate}) async {
    final String apiPath = '/v1/apps/{functionId}/deployments/template'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            if (activate != null) 'activate': activate,

            'owner': owner,

            'reference': reference,

            'repository': repository,

            'rootDirectory': rootDirectory,

            'type': type.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Deployment.fromMap(res.data);

  }

  /// Trigger a new deployment from the App's connected Git repository.
  Future<models.Deployment> appsCreateVcsDeployment({required String functionId, required String reference, required enums.Type type, bool? activate}) async {
    final String apiPath = '/v1/apps/{functionId}/deployments/vcs'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            if (activate != null) 'activate': activate,

            'reference': reference,

            'type': type.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Deployment.fromMap(res.data);

  }

  /// Delete a deployment. The active deployment cannot be deleted while it is
  /// active — switch first via the deployment-update endpoint.
  Future appsDeleteDeployment({required String functionId, required String deploymentId}) async {
    final String apiPath = '/v1/apps/{functionId}/deployments/{deploymentId}'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get a deployment by its unique ID.
  Future<models.Deployment> appsGetDeployment({required String functionId, required String deploymentId}) async {
    final String apiPath = '/v1/apps/{functionId}/deployments/{deploymentId}'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Deployment.fromMap(res.data);

  }

  /// Get a redirect URL to download the source archive of an App deployment.
  /// Useful for re-running a build locally or auditing what was deployed.
  Future appsGetDeploymentDownload({required String functionId, required String deploymentId, enums.Type? type}) async {
    final String apiPath = '/v1/apps/{functionId}/deployments/{deploymentId}/download'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
            if (type != null) 'type': type.value,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Cancel an in-progress deployment build. Used by the Cockpit "Cancel build"
  /// affordance.
  Future<models.Deployment> appsUpdateDeploymentStatus({required String functionId, required String deploymentId}) async {
    final String apiPath = '/v1/apps/{functionId}/deployments/{deploymentId}/status'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Deployment.fromMap(res.data);

  }

  /// List the execution history of an App.
  Future<models.ExecutionList> appsListExecutions({required String functionId, List<String>? queries, bool? total}) async {
    final String apiPath = '/v1/apps/{functionId}/executions'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ExecutionList.fromMap(res.data);

  }

  /// Trigger an App execution. Use the optional `body`, `path`, `method` and
  /// `headers` parameters to invoke the App as if from an HTTP request.
  Future<models.Execution> appsCreateExecution({required String functionId, bool? xasync, String? body, Map? headers, enums.Method? method, String? path, String? scheduledAt}) async {
    final String apiPath = '/v1/apps/{functionId}/executions'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            if (xasync != null) 'async': xasync,

            if (body != null) 'body': body,

            if (headers != null) 'headers': headers,

            if (method != null) 'method': method.value,

            if (path != null) 'path': path,

            if (scheduledAt != null) 'scheduledAt': scheduledAt,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Execution.fromMap(res.data);

  }

  /// Delete an App execution by its unique ID.
  Future appsDeleteExecution({required String functionId, required String executionId}) async {
    final String apiPath = '/v1/apps/{functionId}/executions/{executionId}'.replaceAll('{functionId}', functionId).replaceAll('{executionId}', executionId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get an App execution by its unique ID.
  Future<models.Execution> appsGetExecution({required String functionId, required String executionId}) async {
    final String apiPath = '/v1/apps/{functionId}/executions/{executionId}'.replaceAll('{functionId}', functionId).replaceAll('{executionId}', executionId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Execution.fromMap(res.data);

  }

  /// Read-through view of the App's App Registry row — visibility +
  /// Marketplace publish flag. Used by Cockpit to render the Publish/Unpublish
  /// button correctly on cold load.
  Future appsGetMarketplaceStatus({required String functionId}) async {
    final String apiPath = '/v1/apps/{functionId}/marketplace-status'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Remove this App from the Marketplace listing. Existing tenant installations
  /// are unaffected. Idempotent.
  Future appsUnpublish({required String functionId}) async {
    final String apiPath = '/v1/apps/{functionId}/publish'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Publish this App to the Marketplace. The App must have at
  /// least one `ready` deployment with a registered manifest,
  /// and its visibility (derived from `billing.json`) must be
  /// `public` or `included`. Idempotent.
  Future appsPublish({required String functionId}) async {
    final String apiPath = '/v1/apps/{functionId}/publish'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get usage stats for a single App over the requested time range.
  Future<models.UsageFunction> appsGetUsage({required String functionId, enums.Range? range}) async {
    final String apiPath = '/v1/apps/{functionId}/usage'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            if (range != null) 'range': range.value,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.UsageFunction.fromMap(res.data);

  }

  /// List all environment variables defined for the App.
  Future<models.VariableList> appsListVariables({required String functionId}) async {
    final String apiPath = '/v1/apps/{functionId}/variables'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.VariableList.fromMap(res.data);

  }

  /// Create a new App environment variable. These are passed into the App at
  /// runtime as `process.env.*`.
  Future<models.Variable> appsCreateVariable({required String functionId, required String key, required String value, bool? secret}) async {
    final String apiPath = '/v1/apps/{functionId}/variables'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            'key': key,

            if (secret != null) 'secret': secret,

            'value': value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Variable.fromMap(res.data);

  }

  /// Delete an App environment variable.
  Future appsDeleteVariable({required String functionId, required String variableId}) async {
    final String apiPath = '/v1/apps/{functionId}/variables/{variableId}'.replaceAll('{functionId}', functionId).replaceAll('{variableId}', variableId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get an App variable by its unique ID.
  Future<models.Variable> appsGetVariable({required String functionId, required String variableId}) async {
    final String apiPath = '/v1/apps/{functionId}/variables/{variableId}'.replaceAll('{functionId}', functionId).replaceAll('{variableId}', variableId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Variable.fromMap(res.data);

  }

  /// Update an App environment variable.
  Future<models.Variable> appsUpdateVariable({required String functionId, required String variableId, required String key, bool? secret, String? value}) async {
    final String apiPath = '/v1/apps/{functionId}/variables/{variableId}'.replaceAll('{functionId}', functionId).replaceAll('{variableId}', variableId);

        final Map<String, dynamic> apiParams = {
            'key': key,

            if (secret != null) 'secret': secret,

            if (value != null) 'value': value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Variable.fromMap(res.data);

  }
}
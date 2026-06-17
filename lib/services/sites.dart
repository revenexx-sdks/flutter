part of '../revenexx.dart';

  /// Static sites and their deployments.
class Sites extends Service {
  /// Initializes a [Sites] service
  Sites(super.client);

  /// Get a list of all the project's sites. You can use the query params to
  /// filter your results.
  Future<models.SiteList> sitesList({List<String>? queries, String? search, bool? total}) async {
    const String apiPath = '/v1/sites';

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (search != null) 'search': search,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.SiteList.fromMap(res.data);

  }

  /// Create a new site.
  Future<models.Site> sitesCreate({required enums.BuildRuntime buildRuntime, required enums.Framework framework, required String name, required String siteId, enums.Adapter? adapter, String? buildCommand, bool? enabled, String? fallbackFile, String? installCommand, String? installationId, bool? logging, String? outputDirectory, String? providerBranch, String? providerRepositoryId, String? providerRootDirectory, bool? providerSilentMode, String? specification, int? timeout}) async {
    const String apiPath = '/v1/sites';

        final Map<String, dynamic> apiParams = {
            if (adapter != null) 'adapter': adapter.value,

            if (buildCommand != null) 'buildCommand': buildCommand,

            'buildRuntime': buildRuntime.value,

            if (enabled != null) 'enabled': enabled,

            if (fallbackFile != null) 'fallbackFile': fallbackFile,

            'framework': framework.value,

            if (installCommand != null) 'installCommand': installCommand,

            if (installationId != null) 'installationId': installationId,

            if (logging != null) 'logging': logging,

            'name': name,

            if (outputDirectory != null) 'outputDirectory': outputDirectory,

            if (providerBranch != null) 'providerBranch': providerBranch,

            if (providerRepositoryId != null) 'providerRepositoryId': providerRepositoryId,

            if (providerRootDirectory != null) 'providerRootDirectory': providerRootDirectory,

            if (providerSilentMode != null) 'providerSilentMode': providerSilentMode,

            'siteId': siteId,

            if (specification != null) 'specification': specification,

            if (timeout != null) 'timeout': timeout,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Site.fromMap(res.data);

  }

  /// Get a list of all frameworks that are currently available on the server
  /// instance.
  Future<models.FrameworkList> sitesListFrameworks() async {
    const String apiPath = '/v1/sites/frameworks';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.FrameworkList.fromMap(res.data);

  }

  /// List allowed site specifications for this instance.
  Future<models.SpecificationList> sitesListSpecifications() async {
    const String apiPath = '/v1/sites/specifications';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.SpecificationList.fromMap(res.data);

  }

  /// Delete a site by its unique ID.
  Future sitesDelete({required String siteId}) async {
    final String apiPath = '/v1/sites/{siteId}'.replaceAll('{siteId}', siteId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get a site by its unique ID.
  Future<models.Site> sitesGet({required String siteId}) async {
    final String apiPath = '/v1/sites/{siteId}'.replaceAll('{siteId}', siteId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Site.fromMap(res.data);

  }

  /// Update site by its unique ID.
  Future<models.Site> sitesUpdate({required String siteId, required enums.Framework framework, required String name, enums.Adapter? adapter, String? buildCommand, enums.BuildRuntime? buildRuntime, bool? enabled, String? fallbackFile, String? installCommand, String? installationId, bool? logging, String? outputDirectory, String? providerBranch, String? providerRepositoryId, String? providerRootDirectory, bool? providerSilentMode, String? specification, int? timeout}) async {
    final String apiPath = '/v1/sites/{siteId}'.replaceAll('{siteId}', siteId);

        final Map<String, dynamic> apiParams = {
            if (adapter != null) 'adapter': adapter.value,

            if (buildCommand != null) 'buildCommand': buildCommand,

            if (buildRuntime != null) 'buildRuntime': buildRuntime.value,

            if (enabled != null) 'enabled': enabled,

            if (fallbackFile != null) 'fallbackFile': fallbackFile,

            'framework': framework.value,

            if (installCommand != null) 'installCommand': installCommand,

            if (installationId != null) 'installationId': installationId,

            if (logging != null) 'logging': logging,

            'name': name,

            if (outputDirectory != null) 'outputDirectory': outputDirectory,

            if (providerBranch != null) 'providerBranch': providerBranch,

            if (providerRepositoryId != null) 'providerRepositoryId': providerRepositoryId,

            if (providerRootDirectory != null) 'providerRootDirectory': providerRootDirectory,

            if (providerSilentMode != null) 'providerSilentMode': providerSilentMode,

            if (specification != null) 'specification': specification,

            if (timeout != null) 'timeout': timeout,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Site.fromMap(res.data);

  }

  /// Update the site active deployment. Use this endpoint to switch the code
  /// deployment that should be used when visitor opens your site.
  Future<models.Site> sitesUpdateSiteDeployment({required String siteId, required String deploymentId}) async {
    final String apiPath = '/v1/sites/{siteId}/deployment'.replaceAll('{siteId}', siteId);

        final Map<String, dynamic> apiParams = {
            'deploymentId': deploymentId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Site.fromMap(res.data);

  }

  /// Get a list of all the site's code deployments. You can use the query params
  /// to filter your results.
  Future<models.DeploymentList> sitesListDeployments({required String siteId, List<String>? queries, String? search, bool? total}) async {
    final String apiPath = '/v1/sites/{siteId}/deployments'.replaceAll('{siteId}', siteId);

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

  /// Create a new site code deployment. Use this endpoint to upload a new
  /// version of your site code. To activate your newly uploaded code, you'll
  /// need to update the site's deployment to use your new deployment ID.
  Future<models.Deployment> sitesCreateDeployment({required String siteId, required bool activate, required String code, String? buildCommand, String? installCommand, String? outputDirectory, Function(UploadProgress)? onProgress}) async {
    final String apiPath = '/v1/sites/{siteId}/deployments'.replaceAll('{siteId}', siteId);

        final Map<String, dynamic> apiParams = {


            'activate': activate,

            if (buildCommand != null) 'buildCommand': buildCommand,

            'code': code,

            if (installCommand != null) 'installCommand': installCommand,

            if (outputDirectory != null) 'outputDirectory': outputDirectory,

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

  /// Create a new build for an existing site deployment. This endpoint allows
  /// you to rebuild a deployment with the updated site configuration, including
  /// its commands and output directory if they have been modified. The build
  /// process will be queued and executed asynchronously. The original
  /// deployment's code will be preserved and used for the new build.
  Future<models.Deployment> sitesCreateDuplicateDeployment({required String siteId, required String deploymentId}) async {
    final String apiPath = '/v1/sites/{siteId}/deployments/duplicate'.replaceAll('{siteId}', siteId);

        final Map<String, dynamic> apiParams = {
            'deploymentId': deploymentId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Deployment.fromMap(res.data);

  }

  /// Create a deployment based on a template.
  /// 
  /// Use this endpoint with combination of
  /// [listTemplates](https://appwrite.io/docs/products/sites/templates) to find
  /// the template details.
  Future<models.Deployment> sitesCreateTemplateDeployment({required String siteId, required String owner, required String reference, required String repository, required String rootDirectory, required enums.Type type, bool? activate}) async {
    final String apiPath = '/v1/sites/{siteId}/deployments/template'.replaceAll('{siteId}', siteId);

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

  /// Create a deployment when a site is connected to VCS.
  /// 
  /// This endpoint lets you create deployment from a branch, commit, or a tag.
  Future<models.Deployment> sitesCreateVcsDeployment({required String siteId, required String reference, required enums.Type type, bool? activate}) async {
    final String apiPath = '/v1/sites/{siteId}/deployments/vcs'.replaceAll('{siteId}', siteId);

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

  /// Delete a site deployment by its unique ID.
  Future sitesDeleteDeployment({required String siteId, required String deploymentId}) async {
    final String apiPath = '/v1/sites/{siteId}/deployments/{deploymentId}'.replaceAll('{siteId}', siteId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get a site deployment by its unique ID.
  Future<models.Deployment> sitesGetDeployment({required String siteId, required String deploymentId}) async {
    final String apiPath = '/v1/sites/{siteId}/deployments/{deploymentId}'.replaceAll('{siteId}', siteId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Deployment.fromMap(res.data);

  }

  /// Get a site deployment content by its unique ID. The endpoint response
  /// return with a 'Content-Disposition: attachment' header that tells the
  /// browser to start downloading the file to user downloads directory.
  Future sitesGetDeploymentDownload({required String siteId, required String deploymentId, enums.Type? type}) async {
    final String apiPath = '/v1/sites/{siteId}/deployments/{deploymentId}/download'.replaceAll('{siteId}', siteId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
            if (type != null) 'type': type.value,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Cancel an ongoing site deployment build. If the build is already in
  /// progress, it will be stopped and marked as canceled. If the build hasn't
  /// started yet, it will be marked as canceled without executing. You cannot
  /// cancel builds that have already completed (status 'ready') or failed. The
  /// response includes the final build status and details.
  Future<models.Deployment> sitesUpdateDeploymentStatus({required String siteId, required String deploymentId}) async {
    final String apiPath = '/v1/sites/{siteId}/deployments/{deploymentId}/status'.replaceAll('{siteId}', siteId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Deployment.fromMap(res.data);

  }

  /// Get a list of all site logs. You can use the query params to filter your
  /// results.
  Future<models.ExecutionList> sitesListLogs({required String siteId, List<String>? queries, bool? total}) async {
    final String apiPath = '/v1/sites/{siteId}/logs'.replaceAll('{siteId}', siteId);

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ExecutionList.fromMap(res.data);

  }

  /// Delete a site log by its unique ID.
  Future sitesDeleteLog({required String siteId, required String logId}) async {
    final String apiPath = '/v1/sites/{siteId}/logs/{logId}'.replaceAll('{siteId}', siteId).replaceAll('{logId}', logId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get a site request log by its unique ID.
  Future<models.Execution> sitesGetLog({required String siteId, required String logId}) async {
    final String apiPath = '/v1/sites/{siteId}/logs/{logId}'.replaceAll('{siteId}', siteId).replaceAll('{logId}', logId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Execution.fromMap(res.data);

  }

  /// Get a list of all variables of a specific site.
  Future<models.VariableList> sitesListVariables({required String siteId}) async {
    final String apiPath = '/v1/sites/{siteId}/variables'.replaceAll('{siteId}', siteId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.VariableList.fromMap(res.data);

  }

  /// Create a new site variable. These variables can be accessed during build
  /// and runtime (server-side rendering) as environment variables.
  Future<models.Variable> sitesCreateVariable({required String siteId, required String key, required String value, bool? secret}) async {
    final String apiPath = '/v1/sites/{siteId}/variables'.replaceAll('{siteId}', siteId);

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

  /// Delete a variable by its unique ID.
  Future sitesDeleteVariable({required String siteId, required String variableId}) async {
    final String apiPath = '/v1/sites/{siteId}/variables/{variableId}'.replaceAll('{siteId}', siteId).replaceAll('{variableId}', variableId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get a variable by its unique ID.
  Future<models.Variable> sitesGetVariable({required String siteId, required String variableId}) async {
    final String apiPath = '/v1/sites/{siteId}/variables/{variableId}'.replaceAll('{siteId}', siteId).replaceAll('{variableId}', variableId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Variable.fromMap(res.data);

  }

  /// Update variable by its unique ID.
  Future<models.Variable> sitesUpdateVariable({required String siteId, required String variableId, required String key, bool? secret, String? value}) async {
    final String apiPath = '/v1/sites/{siteId}/variables/{variableId}'.replaceAll('{siteId}', siteId).replaceAll('{variableId}', variableId);

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
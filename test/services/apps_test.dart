import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:revenexx/models.dart' as models;
import 'package:revenexx/enums.dart' as enums;
import 'package:revenexx/src/enums.dart';
import 'package:revenexx/src/response.dart';
import 'dart:typed_data';
import 'package:revenexx/revenexx.dart';

class MockClient extends Mock implements Client {
  Map<String, String> config = {'project': 'testproject'};
  String endPoint = 'https://localhost/v1';
  @override
  Future<Response> call(
    HttpMethod? method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  }) async {
    return super.noSuchMethod(Invocation.method(#call, [method]),
        returnValue: Response());
  }

  @override
  Future webAuth(
    Uri? url,
    {
        String? callbackUrlScheme,
    }
  ) async {
    return super.noSuchMethod(Invocation.method(#webAuth, [url]), returnValue: 'done');
  }

  @override
  Future<Response> chunkedUpload({
    String? path,
    Map<String, dynamic>? params,
    String? paramName,
    String? idParamName,
    Map<String, String>? headers,
    Function(UploadProgress)? onProgress,
  }) async {
    return super.noSuchMethod(Invocation.method(#chunkedUpload, [path, params, paramName, idParamName, headers]), returnValue: Response(data: {}));
  }
}

void main() {
    group('Apps test', () {
        late MockClient client;
        late Apps apps;

        setUp(() {
            client = MockClient();
            apps = Apps(client);
        });

        test('test method appsList()', () async {
            final Map<String, dynamic> data = {
                'functions': [],
                'total': 1,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsList(
            );
            expect(response, isA<models.FunctionList>());

        });

        test('test method appsCreate()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'commands': '',
                'deploymentCreatedAt': '',
                'deploymentId': '',
                'enabled': true,
                'entrypoint': '',
                'events': [],
                'execute': [],
                'installationId': '',
                'latestDeploymentCreatedAt': '',
                'latestDeploymentId': '',
                'latestDeploymentStatus': '',
                'live': true,
                'logging': true,
                'name': '',
                'providerBranch': '',
                'providerRepositoryId': '',
                'providerRootDirectory': '',
                'providerSilentMode': true,
                'runtime': '',
                'schedule': '',
                'scopes': [],
                'specification': '',
                'timeout': 1,
                'vars': [],
                'version': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsCreate(
                functionId: '',
                name: '',
                runtime: enums.Runtime.node180,
            );
            expect(response, isA<models.Func>());

        });

        test('test method appsListMarketplace()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsListMarketplace(
            );
        });

        test('test method appsInstallFromMarketplace()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsInstallFromMarketplace(
                name: '',
                owner: '',
            );
        });

        test('test method appsListRuntimes()', () async {
            final Map<String, dynamic> data = {
                'runtimes': [],
                'total': 1,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsListRuntimes(
            );
            expect(response, isA<models.RuntimeList>());

        });

        test('test method appsListSpecifications()', () async {
            final Map<String, dynamic> data = {
                'specifications': [],
                'total': 1,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsListSpecifications(
            );
            expect(response, isA<models.SpecificationList>());

        });

        test('test method appsListTemplates()', () async {
            final Map<String, dynamic> data = {
                'templates': [],
                'total': 1,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsListTemplates(
            );
            expect(response, isA<models.TemplateFunctionList>());

        });

        test('test method appsGetTemplate()', () async {
            final Map<String, dynamic> data = {
                'cron': '',
                'events': [],
                'icon': '',
                'id': '',
                'instructions': '',
                'name': '',
                'permissions': [],
                'providerOwner': '',
                'providerRepositoryId': '',
                'providerVersion': '',
                'runtimes': [],
                'scopes': [],
                'tagline': '',
                'timeout': 1,
                'useCases': [],
                'variables': [],
                'vcsProvider': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsGetTemplate(
                templateId: '',
            );
            expect(response, isA<models.TemplateFunction>());

        });

        test('test method appsListUsage()', () async {
            final Map<String, dynamic> data = {
                'builds': [],
                'buildsFailed': [],
                'buildsFailedTotal': 1,
                'buildsMbSeconds': [],
                'buildsMbSecondsTotal': 1,
                'buildsStorage': [],
                'buildsStorageTotal': 1,
                'buildsSuccess': [],
                'buildsSuccessTotal': 1,
                'buildsTime': [],
                'buildsTimeTotal': 1,
                'buildsTotal': 1,
                'deployments': [],
                'deploymentsStorage': [],
                'deploymentsStorageTotal': 1,
                'deploymentsTotal': 1,
                'executions': [],
                'executionsMbSeconds': [],
                'executionsMbSecondsTotal': 1,
                'executionsTime': [],
                'executionsTimeTotal': 1,
                'executionsTotal': 1,
                'functions': [],
                'functionsTotal': 1,
                'range': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsListUsage(
            );
            expect(response, isA<models.UsageFunctions>());

        });

        test('test method appsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsDelete(
                functionId: '',
            );
        });

        test('test method appsGet()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'commands': '',
                'deploymentCreatedAt': '',
                'deploymentId': '',
                'enabled': true,
                'entrypoint': '',
                'events': [],
                'execute': [],
                'installationId': '',
                'latestDeploymentCreatedAt': '',
                'latestDeploymentId': '',
                'latestDeploymentStatus': '',
                'live': true,
                'logging': true,
                'name': '',
                'providerBranch': '',
                'providerRepositoryId': '',
                'providerRootDirectory': '',
                'providerSilentMode': true,
                'runtime': '',
                'schedule': '',
                'scopes': [],
                'specification': '',
                'timeout': 1,
                'vars': [],
                'version': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsGet(
                functionId: '',
            );
            expect(response, isA<models.Func>());

        });

        test('test method appsUpdate()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'commands': '',
                'deploymentCreatedAt': '',
                'deploymentId': '',
                'enabled': true,
                'entrypoint': '',
                'events': [],
                'execute': [],
                'installationId': '',
                'latestDeploymentCreatedAt': '',
                'latestDeploymentId': '',
                'latestDeploymentStatus': '',
                'live': true,
                'logging': true,
                'name': '',
                'providerBranch': '',
                'providerRepositoryId': '',
                'providerRootDirectory': '',
                'providerSilentMode': true,
                'runtime': '',
                'schedule': '',
                'scopes': [],
                'specification': '',
                'timeout': 1,
                'vars': [],
                'version': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsUpdate(
                functionId: '',
                name: '',
            );
            expect(response, isA<models.Func>());

        });

        test('test method appsUpdateDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'commands': '',
                'deploymentCreatedAt': '',
                'deploymentId': '',
                'enabled': true,
                'entrypoint': '',
                'events': [],
                'execute': [],
                'installationId': '',
                'latestDeploymentCreatedAt': '',
                'latestDeploymentId': '',
                'latestDeploymentStatus': '',
                'live': true,
                'logging': true,
                'name': '',
                'providerBranch': '',
                'providerRepositoryId': '',
                'providerRootDirectory': '',
                'providerSilentMode': true,
                'runtime': '',
                'schedule': '',
                'scopes': [],
                'specification': '',
                'timeout': 1,
                'vars': [],
                'version': '',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsUpdateDeployment(
                functionId: '',
                deploymentId: '',
            );
            expect(response, isA<models.Func>());

        });

        test('test method appsListDeployments()', () async {
            final Map<String, dynamic> data = {
                'deployments': [],
                'total': 1,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsListDeployments(
                functionId: '',
            );
            expect(response, isA<models.DeploymentList>());

        });

        test('test method appsCreateDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'activate': true,
                'billingJson': '',
                'buildDuration': 1,
                'buildId': '',
                'buildLogs': '',
                'buildSize': 1,
                'entrypoint': '',
                'manifestJson': '',
                'providerBranch': '',
                'providerBranchUrl': '',
                'providerCommitAuthor': '',
                'providerCommitAuthorUrl': '',
                'providerCommitHash': '',
                'providerCommitMessage': '',
                'providerCommitUrl': '',
                'providerRepositoryName': '',
                'providerRepositoryOwner': '',
                'providerRepositoryUrl': '',
                'resourceId': '',
                'resourceType': '',
                'screenshotDark': '',
                'screenshotLight': '',
                'sourceSize': 1,
                'status': 'waiting',
                'totalSize': 1,
                'type': '',};


            when(client.chunkedUpload(
                path: argThat(isNotNull),
                params: argThat(isNotNull),
                paramName: argThat(isNotNull),
                idParamName: argThat(isNotNull),
                headers: argThat(isNotNull),
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsCreateDeployment(
                functionId: '',
                activate: true,
                code: InputFile.fromPath(path: './image.png'),
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method appsCreateDuplicateDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'activate': true,
                'billingJson': '',
                'buildDuration': 1,
                'buildId': '',
                'buildLogs': '',
                'buildSize': 1,
                'entrypoint': '',
                'manifestJson': '',
                'providerBranch': '',
                'providerBranchUrl': '',
                'providerCommitAuthor': '',
                'providerCommitAuthorUrl': '',
                'providerCommitHash': '',
                'providerCommitMessage': '',
                'providerCommitUrl': '',
                'providerRepositoryName': '',
                'providerRepositoryOwner': '',
                'providerRepositoryUrl': '',
                'resourceId': '',
                'resourceType': '',
                'screenshotDark': '',
                'screenshotLight': '',
                'sourceSize': 1,
                'status': 'waiting',
                'totalSize': 1,
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsCreateDuplicateDeployment(
                functionId: '',
                deploymentId: '',
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method appsCreateTemplateDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'activate': true,
                'billingJson': '',
                'buildDuration': 1,
                'buildId': '',
                'buildLogs': '',
                'buildSize': 1,
                'entrypoint': '',
                'manifestJson': '',
                'providerBranch': '',
                'providerBranchUrl': '',
                'providerCommitAuthor': '',
                'providerCommitAuthorUrl': '',
                'providerCommitHash': '',
                'providerCommitMessage': '',
                'providerCommitUrl': '',
                'providerRepositoryName': '',
                'providerRepositoryOwner': '',
                'providerRepositoryUrl': '',
                'resourceId': '',
                'resourceType': '',
                'screenshotDark': '',
                'screenshotLight': '',
                'sourceSize': 1,
                'status': 'waiting',
                'totalSize': 1,
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsCreateTemplateDeployment(
                functionId: '',
                owner: '',
                reference: '',
                repository: '',
                rootDirectory: '',
                type: enums.Type.commit,
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method appsCreateVcsDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'activate': true,
                'billingJson': '',
                'buildDuration': 1,
                'buildId': '',
                'buildLogs': '',
                'buildSize': 1,
                'entrypoint': '',
                'manifestJson': '',
                'providerBranch': '',
                'providerBranchUrl': '',
                'providerCommitAuthor': '',
                'providerCommitAuthorUrl': '',
                'providerCommitHash': '',
                'providerCommitMessage': '',
                'providerCommitUrl': '',
                'providerRepositoryName': '',
                'providerRepositoryOwner': '',
                'providerRepositoryUrl': '',
                'resourceId': '',
                'resourceType': '',
                'screenshotDark': '',
                'screenshotLight': '',
                'sourceSize': 1,
                'status': 'waiting',
                'totalSize': 1,
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsCreateVcsDeployment(
                functionId: '',
                reference: 'main',
                type: enums.AppsCreateVcsDeploymentType.branch,
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method appsDeleteDeployment()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsDeleteDeployment(
                functionId: '',
                deploymentId: '',
            );
        });

        test('test method appsGetDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'activate': true,
                'billingJson': '',
                'buildDuration': 1,
                'buildId': '',
                'buildLogs': '',
                'buildSize': 1,
                'entrypoint': '',
                'manifestJson': '',
                'providerBranch': '',
                'providerBranchUrl': '',
                'providerCommitAuthor': '',
                'providerCommitAuthorUrl': '',
                'providerCommitHash': '',
                'providerCommitMessage': '',
                'providerCommitUrl': '',
                'providerRepositoryName': '',
                'providerRepositoryOwner': '',
                'providerRepositoryUrl': '',
                'resourceId': '',
                'resourceType': '',
                'screenshotDark': '',
                'screenshotLight': '',
                'sourceSize': 1,
                'status': 'waiting',
                'totalSize': 1,
                'type': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsGetDeployment(
                functionId: '',
                deploymentId: '',
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method appsGetDeploymentDownload()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsGetDeploymentDownload(
                functionId: '',
                deploymentId: '',
            );
        });

        test('test method appsUpdateDeploymentStatus()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'activate': true,
                'billingJson': '',
                'buildDuration': 1,
                'buildId': '',
                'buildLogs': '',
                'buildSize': 1,
                'entrypoint': '',
                'manifestJson': '',
                'providerBranch': '',
                'providerBranchUrl': '',
                'providerCommitAuthor': '',
                'providerCommitAuthorUrl': '',
                'providerCommitHash': '',
                'providerCommitMessage': '',
                'providerCommitUrl': '',
                'providerRepositoryName': '',
                'providerRepositoryOwner': '',
                'providerRepositoryUrl': '',
                'resourceId': '',
                'resourceType': '',
                'screenshotDark': '',
                'screenshotLight': '',
                'sourceSize': 1,
                'status': 'waiting',
                'totalSize': 1,
                'type': '',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsUpdateDeploymentStatus(
                functionId: '',
                deploymentId: '',
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method appsListExecutions()', () async {
            final Map<String, dynamic> data = {
                'executions': [],
                'total': 1,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsListExecutions(
                functionId: '',
            );
            expect(response, isA<models.ExecutionList>());

        });

        test('test method appsCreateExecution()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$permissions': [],
                '\$updatedAt': '',
                'deploymentId': '',
                'duration': 9.99,
                'errors': '',
                'functionId': '',
                'logs': '',
                'requestHeaders': [],
                'requestMethod': '',
                'requestPath': '',
                'responseBody': '',
                'responseHeaders': [],
                'responseStatusCode': 1,
                'status': 'waiting',
                'trigger': 'http',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsCreateExecution(
                functionId: '',
            );
            expect(response, isA<models.Execution>());

        });

        test('test method appsDeleteExecution()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsDeleteExecution(
                functionId: '',
                executionId: '',
            );
        });

        test('test method appsGetExecution()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$permissions': [],
                '\$updatedAt': '',
                'deploymentId': '',
                'duration': 9.99,
                'errors': '',
                'functionId': '',
                'logs': '',
                'requestHeaders': [],
                'requestMethod': '',
                'requestPath': '',
                'responseBody': '',
                'responseHeaders': [],
                'responseStatusCode': 1,
                'status': 'waiting',
                'trigger': 'http',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsGetExecution(
                functionId: '',
                executionId: '',
            );
            expect(response, isA<models.Execution>());

        });

        test('test method appsGetMarketplaceStatus()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsGetMarketplaceStatus(
                functionId: '',
            );
        });

        test('test method appsUnpublish()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsUnpublish(
                functionId: '',
            );
        });

        test('test method appsPublish()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsPublish(
                functionId: '',
            );
        });

        test('test method appsGetUsage()', () async {
            final Map<String, dynamic> data = {
                'builds': [],
                'buildsFailed': [],
                'buildsFailedTotal': 1,
                'buildsMbSeconds': [],
                'buildsMbSecondsTotal': 1,
                'buildsStorage': [],
                'buildsStorageTotal': 1,
                'buildsSuccess': [],
                'buildsSuccessTotal': 1,
                'buildsTime': [],
                'buildsTimeAverage': 1,
                'buildsTimeTotal': 1,
                'buildsTotal': 1,
                'deployments': [],
                'deploymentsStorage': [],
                'deploymentsStorageTotal': 1,
                'deploymentsTotal': 1,
                'executions': [],
                'executionsMbSeconds': [],
                'executionsMbSecondsTotal': 1,
                'executionsTime': [],
                'executionsTimeTotal': 1,
                'executionsTotal': 1,
                'range': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsGetUsage(
                functionId: '',
            );
            expect(response, isA<models.UsageFunction>());

        });

        test('test method appsListVariables()', () async {
            final Map<String, dynamic> data = {
                'total': 1,
                'variables': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsListVariables(
                functionId: '',
            );
            expect(response, isA<models.VariableList>());

        });

        test('test method appsCreateVariable()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'key': '',
                'resourceId': '',
                'resourceType': '',
                'secret': true,
                'value': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsCreateVariable(
                functionId: '',
                key: '',
                value: '',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method appsDeleteVariable()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsDeleteVariable(
                functionId: '',
                variableId: '',
            );
        });

        test('test method appsGetVariable()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'key': '',
                'resourceId': '',
                'resourceType': '',
                'secret': true,
                'value': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsGetVariable(
                functionId: '',
                variableId: '',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method appsUpdateVariable()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'key': '',
                'resourceId': '',
                'resourceType': '',
                'secret': true,
                'value': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await apps.appsUpdateVariable(
                functionId: '',
                variableId: '',
                key: '',
            );
            expect(response, isA<models.Variable>());

        });

    });
}
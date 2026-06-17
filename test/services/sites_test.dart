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
    group('Sites test', () {
        late MockClient client;
        late Sites sites;

        setUp(() {
            client = MockClient();
            sites = Sites(client);
        });

        test('test method sitesList()', () async {
            final Map<String, dynamic> data = {
                'sites': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesList(
            );
            expect(response, isA<models.SiteList>());

        });

        test('test method sitesCreate()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'adapter': '',
                'buildCommand': '',
                'buildRuntime': '',
                'deploymentCreatedAt': '',
                'deploymentId': '',
                'deploymentScreenshotDark': '',
                'deploymentScreenshotLight': '',
                'enabled': true,
                'fallbackFile': '',
                'framework': '',
                'installCommand': '',
                'installationId': '',
                'latestDeploymentCreatedAt': '',
                'latestDeploymentId': '',
                'latestDeploymentStatus': '',
                'live': true,
                'logging': true,
                'name': '',
                'outputDirectory': '',
                'providerBranch': '',
                'providerRepositoryId': '',
                'providerRootDirectory': '',
                'providerSilentMode': true,
                'specification': '',
                'timeout': ,
                'vars': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesCreate(
                buildRuntime: enums.BuildRuntime.node180,
                framework: enums.Framework.analog,
                name: '',
                siteId: '',
            );
            expect(response, isA<models.Site>());

        });

        test('test method sitesListFrameworks()', () async {
            final Map<String, dynamic> data = {
                'frameworks': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesListFrameworks(
            );
            expect(response, isA<models.FrameworkList>());

        });

        test('test method sitesListSpecifications()', () async {
            final Map<String, dynamic> data = {
                'specifications': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesListSpecifications(
            );
            expect(response, isA<models.SpecificationList>());

        });

        test('test method sitesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesDelete(
                siteId: '',
            );
        });

        test('test method sitesGet()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'adapter': '',
                'buildCommand': '',
                'buildRuntime': '',
                'deploymentCreatedAt': '',
                'deploymentId': '',
                'deploymentScreenshotDark': '',
                'deploymentScreenshotLight': '',
                'enabled': true,
                'fallbackFile': '',
                'framework': '',
                'installCommand': '',
                'installationId': '',
                'latestDeploymentCreatedAt': '',
                'latestDeploymentId': '',
                'latestDeploymentStatus': '',
                'live': true,
                'logging': true,
                'name': '',
                'outputDirectory': '',
                'providerBranch': '',
                'providerRepositoryId': '',
                'providerRootDirectory': '',
                'providerSilentMode': true,
                'specification': '',
                'timeout': ,
                'vars': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesGet(
                siteId: '',
            );
            expect(response, isA<models.Site>());

        });

        test('test method sitesUpdate()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'adapter': '',
                'buildCommand': '',
                'buildRuntime': '',
                'deploymentCreatedAt': '',
                'deploymentId': '',
                'deploymentScreenshotDark': '',
                'deploymentScreenshotLight': '',
                'enabled': true,
                'fallbackFile': '',
                'framework': '',
                'installCommand': '',
                'installationId': '',
                'latestDeploymentCreatedAt': '',
                'latestDeploymentId': '',
                'latestDeploymentStatus': '',
                'live': true,
                'logging': true,
                'name': '',
                'outputDirectory': '',
                'providerBranch': '',
                'providerRepositoryId': '',
                'providerRootDirectory': '',
                'providerSilentMode': true,
                'specification': '',
                'timeout': ,
                'vars': [],};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesUpdate(
                siteId: '',
                framework: enums.Framework.analog,
                name: '',
            );
            expect(response, isA<models.Site>());

        });

        test('test method sitesUpdateSiteDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'adapter': '',
                'buildCommand': '',
                'buildRuntime': '',
                'deploymentCreatedAt': '',
                'deploymentId': '',
                'deploymentScreenshotDark': '',
                'deploymentScreenshotLight': '',
                'enabled': true,
                'fallbackFile': '',
                'framework': '',
                'installCommand': '',
                'installationId': '',
                'latestDeploymentCreatedAt': '',
                'latestDeploymentId': '',
                'latestDeploymentStatus': '',
                'live': true,
                'logging': true,
                'name': '',
                'outputDirectory': '',
                'providerBranch': '',
                'providerRepositoryId': '',
                'providerRootDirectory': '',
                'providerSilentMode': true,
                'specification': '',
                'timeout': ,
                'vars': [],};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesUpdateSiteDeployment(
                siteId: '',
                deploymentId: '',
            );
            expect(response, isA<models.Site>());

        });

        test('test method sitesListDeployments()', () async {
            final Map<String, dynamic> data = {
                'deployments': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesListDeployments(
                siteId: '',
            );
            expect(response, isA<models.DeploymentList>());

        });

        test('test method sitesCreateDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'activate': true,
                'billingJson': '',
                'buildDuration': ,
                'buildId': '',
                'buildLogs': '',
                'buildSize': ,
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
                'sourceSize': ,
                'status': '',
                'totalSize': ,
                'type': '',};


            when(client.chunkedUpload(
                path: argThat(isNotNull),
                params: argThat(isNotNull),
                paramName: argThat(isNotNull),
                idParamName: argThat(isNotNull),
                headers: argThat(isNotNull),
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesCreateDeployment(
                siteId: '',
                activate: true,
                code: '',
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method sitesCreateDuplicateDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'activate': true,
                'billingJson': '',
                'buildDuration': ,
                'buildId': '',
                'buildLogs': '',
                'buildSize': ,
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
                'sourceSize': ,
                'status': '',
                'totalSize': ,
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesCreateDuplicateDeployment(
                siteId: '',
                deploymentId: '',
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method sitesCreateTemplateDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'activate': true,
                'billingJson': '',
                'buildDuration': ,
                'buildId': '',
                'buildLogs': '',
                'buildSize': ,
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
                'sourceSize': ,
                'status': '',
                'totalSize': ,
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesCreateTemplateDeployment(
                siteId: '',
                owner: '',
                reference: '',
                repository: '',
                rootDirectory: '',
                type: enums.Type.branch,
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method sitesCreateVcsDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'activate': true,
                'billingJson': '',
                'buildDuration': ,
                'buildId': '',
                'buildLogs': '',
                'buildSize': ,
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
                'sourceSize': ,
                'status': '',
                'totalSize': ,
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesCreateVcsDeployment(
                siteId: '',
                reference: '',
                type: enums.Type.branch,
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method sitesDeleteDeployment()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesDeleteDeployment(
                siteId: '',
                deploymentId: '',
            );
        });

        test('test method sitesGetDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'activate': true,
                'billingJson': '',
                'buildDuration': ,
                'buildId': '',
                'buildLogs': '',
                'buildSize': ,
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
                'sourceSize': ,
                'status': '',
                'totalSize': ,
                'type': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesGetDeployment(
                siteId: '',
                deploymentId: '',
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method sitesGetDeploymentDownload()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesGetDeploymentDownload(
                siteId: '',
                deploymentId: '',
            );
        });

        test('test method sitesUpdateDeploymentStatus()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'activate': true,
                'billingJson': '',
                'buildDuration': ,
                'buildId': '',
                'buildLogs': '',
                'buildSize': ,
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
                'sourceSize': ,
                'status': '',
                'totalSize': ,
                'type': '',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesUpdateDeploymentStatus(
                siteId: '',
                deploymentId: '',
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method sitesListLogs()', () async {
            final Map<String, dynamic> data = {
                'executions': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesListLogs(
                siteId: '',
            );
            expect(response, isA<models.ExecutionList>());

        });

        test('test method sitesDeleteLog()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesDeleteLog(
                siteId: '',
                logId: '',
            );
        });

        test('test method sitesGetLog()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$permissions': [],
                '\$updatedAt': '',
                'deploymentId': '',
                'duration': ,
                'errors': '',
                'functionId': '',
                'logs': '',
                'requestHeaders': [],
                'requestMethod': '',
                'requestPath': '',
                'responseBody': '',
                'responseHeaders': [],
                'responseStatusCode': ,
                'status': '',
                'trigger': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesGetLog(
                siteId: '',
                logId: '',
            );
            expect(response, isA<models.Execution>());

        });

        test('test method sitesListVariables()', () async {
            final Map<String, dynamic> data = {
                'total': ,
                'variables': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesListVariables(
                siteId: '',
            );
            expect(response, isA<models.VariableList>());

        });

        test('test method sitesCreateVariable()', () async {
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


            final response = await sites.sitesCreateVariable(
                siteId: '',
                key: '',
                value: '',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method sitesDeleteVariable()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await sites.sitesDeleteVariable(
                siteId: '',
                variableId: '',
            );
        });

        test('test method sitesGetVariable()', () async {
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


            final response = await sites.sitesGetVariable(
                siteId: '',
                variableId: '',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method sitesUpdateVariable()', () async {
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


            final response = await sites.sitesUpdateVariable(
                siteId: '',
                variableId: '',
                key: '',
            );
            expect(response, isA<models.Variable>());

        });

    });
}
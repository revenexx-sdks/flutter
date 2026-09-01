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
    group('Storage test', () {
        late MockClient client;
        late Storage storage;

        setUp(() {
            client = MockClient();
            storage = Storage(client);
        });

        test('test method assetIndex()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.assetIndex(
            );
        });

        test('test method assetStore()', () async {
            final data = '';

            when(client.chunkedUpload(
                path: argThat(isNotNull),
                params: argThat(isNotNull),
                paramName: argThat(isNotNull),
                idParamName: argThat(isNotNull),
                headers: argThat(isNotNull),
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.assetStore(
                file: InputFile.fromPath(path: './image.png'),
            );
        });

        test('test method assetBulk()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.assetBulk(
            );
        });

        test('test method assetDestroy()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.assetDestroy(
                id: '',
            );
        });

        test('test method assetShow()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.assetShow(
                id: '',
            );
        });

        test('test method assetUpdate()', () async {
            final data = '';

            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.assetUpdate(
                id: '',
            );
        });

        test('test method assetDownload()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.assetDownload(
                id: '',
            );
        });

        test('test method assetPermanent()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.assetPermanent(
                id: '',
            );
        });

        test('test method assetReprocess()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.assetReprocess(
                id: '',
            );
        });

        test('test method assetRestore()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.assetRestore(
                id: '',
            );
        });

        test('test method assetSign()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.assetSign(
                id: '',
            );
        });

        test('test method assetUnpack()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.assetUnpack(
                id: '',
            );
        });

        test('test method folderIndex()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.folderIndex(
            );
        });

        test('test method folderStore()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.folderStore(
                name: '',
            );
        });

        test('test method folderDestroy()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.folderDestroy(
                id: '',
            );
        });

        test('test method folderShow()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.folderShow(
                id: '',
            );
        });

        test('test method folderUpdate()', () async {
            final data = '';

            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.folderUpdate(
                id: '',
            );
        });

        test('test method syncRuleIndex()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.syncRuleIndex(
            );
        });

        test('test method syncRuleStore()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.syncRuleStore(
                sftpAccountId: '',
                sourcePath: '/uploads',
            );
        });

        test('test method syncRuleDestroy()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.syncRuleDestroy(
                id: '',
            );
        });

        test('test method syncRuleShow()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.syncRuleShow(
                id: '',
            );
        });

        test('test method syncRuleUpdate()', () async {
            final data = '';

            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.syncRuleUpdate(
                id: '',
            );
        });

        test('test method syncRuleRun()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.syncRuleRun(
                id: '',
            );
        });

        test('test method syncRuleRunProtocol()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.syncRuleRunProtocol(
                id: '',
                runId: '',
            );
        });

        test('test method syncRuleHistory()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.syncRuleHistory(
            );
        });

        test('test method tenantStats()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.tenantStats(
            );
        });

        test('test method tenantUsage()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await storage.tenantUsage(
            );
        });

    });
}
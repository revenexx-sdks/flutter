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
    group('Io test', () {
        late MockClient client;
        late Io io;

        setUp(() {
            client = MockClient();
            io = Io(client);
        });

        test('test method listBulkJobs()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.listBulkJobs(
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

        test('test method getBulkJob()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.getBulkJob(
                id: '',
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

        test('test method listIoEntities()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.listIoEntities(
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

        test('test method createExport()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.createExport(
                app: '',
                entity: '',
                vendor: '',
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

        test('test method getExportUrl()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.getExportUrl(
                id: '',
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

        test('test method createImport()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.createImport(
                app: '',
                entity: '',
                objectKey: '',
                vendor: '',
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

        test('test method listProfiles()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.listProfiles(
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

        test('test method createProfile()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.createProfile(
                app: '',
                direction: enums.Direction.ximport,
                entity: '',
                format: '',
                name: '',
                vendor: '',
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

        test('test method deleteProfile()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.deleteProfile(
                id: '',
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

        test('test method showProfile()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.showProfile(
                id: '',
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

        test('test method updateProfile()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.updateProfile(
                id: '',
                app: '',
                direction: enums.Direction.ximport,
                entity: '',
                format: '',
                name: '',
                vendor: '',
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

        test('test method runProfile()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.runProfile(
                id: '',
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

        test('test method createUpload()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await io.createUpload(
            );
            expect(response, isA<models.ValidationFailedResponse>());

        });

    });
}
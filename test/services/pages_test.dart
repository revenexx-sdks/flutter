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
    group('Pages test', () {
        late MockClient client;
        late Pages pages;

        setUp(() {
            client = MockClient();
            pages = Pages(client);
        });

        test('test method pagesLibraryList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesLibraryList(
            );
        });

        test('test method pagesLibraryDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesLibraryDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesLibraryGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesLibraryGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesLibraryUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesLibraryUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesMenusList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesMenusList(
            );
        });

        test('test method pagesMenusUpsert()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesMenusUpsert(
                label: 'Main navigation',
                menuKey: 'main',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesMenusDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesMenusDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesMenusGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesMenusGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesMenusUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesMenusUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesPagesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesPagesList(
            );
        });

        test('test method pagesPagesCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesPagesCreate(
                title: 'About us',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesPagesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesPagesDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesPagesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesPagesGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesPagesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesPagesUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesPagesRevisions()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesPagesRevisions(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesSeed()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesSeed(
            );
            expect(response, isA<models.SeedResult>());

        });

        test('test method pagesTemplatesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesTemplatesList(
            );
        });

        test('test method pagesTemplatesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesTemplatesDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesTemplatesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesTemplatesGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesTemplatesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesTemplatesUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pagesVocabulariesList()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesVocabulariesList(
            );
            expect(response, isA<models.PagesVocabularyIndex>());

        });

        test('test method pagesVocabulariesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesVocabulariesGet(
                name: enums.PagesVocabulariesGetName.editStateStatuses,
            );
            expect(response, isA<models.Error>());

        });

    });
}
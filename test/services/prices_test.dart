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
    group('Prices test', () {
        late MockClient client;
        late Prices prices;

        setUp(() {
            client = MockClient();
            prices = Prices(client);
        });

        test('test method pricesListsList()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsList(
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesListsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsCreate(
                code: 'dealer-de',
                name: 'Dealer prices',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesListsDefaults()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsDefaults(
            );
            expect(response, isA<models.PriceListDefaultsResponse>());

        });

        test('test method pricesListsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesListsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesListsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesEntriesList()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesList(
                listId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesEntriesCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesCreate(
                listId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesEntriesReplace()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesReplace(
                listId: '',
                entries: [],
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesEntriesAdjust()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesAdjust(
                listId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesEntriesBulk()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesBulk(
                listId: '',
                entries: [],
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesEntriesLadder()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesLadder(
                listId: '',
                basePrice: 1.0,
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesEntriesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesDelete(
                listId: '',
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesEntriesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesGet(
                listId: '',
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesEntriesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesUpdate(
                listId: '',
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesListsMakeDefault()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsMakeDefault(
                listId: '',
                data: {},
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesResolve()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesResolve(
                items: [],
            );
            expect(response, isA<models.Error>());

        });

        test('test method pricesVocabulariesList()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesVocabulariesList(
            );
            expect(response, isA<models.PriceVocabularyIndex>());

        });

        test('test method pricesVocabulariesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesVocabulariesGet(
                name: enums.PricesVocabulariesGetName.listStatuses,
            );
            expect(response, isA<models.Error>());

        });

    });
}
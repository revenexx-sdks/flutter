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
    group('Orderlists test', () {
        late MockClient client;
        late Orderlists orderlists;

        setUp(() {
            client = MockClient();
            orderlists = Orderlists(client);
        });

        test('test method orderlistsList()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsList(
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsCreate(
                name: 'Weekly office supplies',
                ownerId: '',
                ownerName: 'Jamie Rivera',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsDefaults()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsDefaults(
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsKindsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsKindsList(
            );
        });

        test('test method orderlistsKindsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsKindsCreate(
                code: 'reagents',
                title: 'Reagent list',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsKindsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsKindsDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsKindsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsKindsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsKindsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsKindsUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsKindsMakeDefault()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsKindsMakeDefault(
                id: '',
                data: {},
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsVocabulariesList()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsVocabulariesList(
            );
            expect(response, isA<models.OrderListVocabularyIndex>());

        });

        test('test method orderlistsVocabulariesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsVocabulariesGet(
                name: enums.OrderlistsVocabulariesGetName.kinds,
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsToCart()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsToCart(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsToOrder()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsToOrder(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsItemsList()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsItemsList(
                listId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsItemsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsItemsCreate(
                listId: '',
                name: 'Copy paper A4, 80 g/m², white',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsItemsReplace()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsItemsReplace(
                listId: '',
                items: [],
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsItemsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsItemsDelete(
                listId: '',
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsItemsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsItemsGet(
                listId: '',
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method orderlistsItemsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await orderlists.orderlistsItemsUpdate(
                listId: '',
                id: '',
            );
            expect(response, isA<models.Error>());

        });

    });
}
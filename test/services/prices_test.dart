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
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsList(
            );
        });

        test('test method pricesListsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsCreate(
                code: '',
                name: '',
            );
            expect(response, isA<models.PriceList>());

        });

        test('test method pricesListsDefaults()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsDefaults(
            );
        });

        test('test method pricesListsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsDelete(
                id: '',
            );
        });

        test('test method pricesListsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsGet(
                id: '',
            );
            expect(response, isA<models.PriceList>());

        });

        test('test method pricesListsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesListsUpdate(
                id: '',
            );
            expect(response, isA<models.PriceList>());

        });

        test('test method pricesEntriesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesList(
                listId: '',
            );
        });

        test('test method pricesEntriesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesCreate(
                listId: '',
            );
            expect(response, isA<models.PriceEntry>());

        });

        test('test method pricesEntriesReplace()', () async {
            final data = '';

            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesReplace(
                listId: '',
                entries: [],
            );
        });

        test('test method pricesEntriesBulk()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesBulk(
                listId: '',
                entries: [],
            );
        });

        test('test method pricesEntriesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesDelete(
                listId: '',
                id: '',
            );
        });

        test('test method pricesEntriesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesGet(
                listId: '',
                id: '',
            );
            expect(response, isA<models.PriceEntry>());

        });

        test('test method pricesEntriesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesEntriesUpdate(
                listId: '',
                id: '',
            );
            expect(response, isA<models.PriceEntry>());

        });

        test('test method pricesResolve()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await prices.pricesResolve(
                items: [],
            );
        });

    });
}
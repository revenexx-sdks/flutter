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
    group('Carts test', () {
        late MockClient client;
        late Carts carts;

        setUp(() {
            client = MockClient();
            carts = Carts(client);
        });

        test('test method cartsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsList(
            );
        });

        test('test method cartsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsCreate(
            );
            expect(response, isA<models.Cart>());

        });

        test('test method cartsClaim()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsClaim(
                contactId: '',
                sessionKey: '',
            );
        });

        test('test method cartsImport()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsImport(
            );
        });

        test('test method cartsIoProfilesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsIoProfilesList(
            );
        });

        test('test method cartsIoProfilesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsIoProfilesCreate(
                direction: enums.CartIoDirection.import,
                name: '',
            );
            expect(response, isA<models.IoProfile>());

        });

        test('test method cartsIoProfilesDefaults()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsIoProfilesDefaults(
            );
        });

        test('test method cartsIoProfilesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsIoProfilesDelete(
                id: '',
            );
        });

        test('test method cartsIoProfilesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsIoProfilesGet(
                id: '',
            );
            expect(response, isA<models.IoProfile>());

        });

        test('test method cartsIoProfilesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsIoProfilesUpdate(
                id: '',
            );
            expect(response, isA<models.IoProfile>());

        });

        test('test method cartsMerge()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsMerge(
                sourceCartId: '',
                targetCartId: '',
            );
        });

        test('test method cartsItemsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsItemsList(
                cartId: '',
            );
        });

        test('test method cartsItemsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsItemsCreate(
                cartId: '',
            );
            expect(response, isA<models.CartItem>());

        });

        test('test method cartsItemsReplace()', () async {
            final data = '';

            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsItemsReplace(
                cartId: '',
                items: [],
            );
        });

        test('test method cartsItemsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsItemsDelete(
                cartId: '',
                id: '',
            );
        });

        test('test method cartsItemsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsItemsGet(
                cartId: '',
                id: '',
            );
            expect(response, isA<models.CartItem>());

        });

        test('test method cartsItemsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsItemsUpdate(
                cartId: '',
                id: '',
            );
            expect(response, isA<models.CartItem>());

        });

        test('test method cartsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsDelete(
                id: '',
            );
        });

        test('test method cartsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsGet(
                id: '',
            );
            expect(response, isA<models.Cart>());

        });

        test('test method cartsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsUpdate(
                id: '',
            );
            expect(response, isA<models.Cart>());

        });

        test('test method cartsAbandon()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsAbandon(
                id: '',
            );
            expect(response, isA<models.Cart>());

        });

        test('test method cartsActivate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsActivate(
                id: '',
            );
            expect(response, isA<models.Cart>());

        });

        test('test method cartsExport()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsExport(
                id: '',
            );
        });

        test('test method cartsOrder()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsOrder(
                id: '',
            );
            expect(response, isA<models.Cart>());

        });

        test('test method cartsReopen()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await carts.cartsReopen(
                id: '',
            );
            expect(response, isA<models.Cart>());

        });

    });
}
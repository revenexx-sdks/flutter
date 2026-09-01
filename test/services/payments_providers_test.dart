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
    group('PaymentsProviders test', () {
        late MockClient client;
        late PaymentsProviders paymentsProviders;

        setUp(() {
            client = MockClient();
            paymentsProviders = PaymentsProviders(client);
        });

        test('test method paymentsLogosGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await paymentsProviders.paymentsLogosGet(
                slug: 'stripe',
            );
            expect(response, isA<models.Error>());

        });

        test('test method paymentsProvidersList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await paymentsProviders.paymentsProvidersList(
            );
        });

        test('test method paymentsProvidersCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await paymentsProviders.paymentsProvidersCreate(
                provider: 'stripe',
            );
            expect(response, isA<models.Error>());

        });

        test('test method paymentsProvidersCatalog()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await paymentsProviders.paymentsProvidersCatalog(
            );
        });

        test('test method paymentsProvidersDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await paymentsProviders.paymentsProvidersDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method paymentsProvidersGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await paymentsProviders.paymentsProvidersGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method paymentsProvidersUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await paymentsProviders.paymentsProvidersUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

    });
}
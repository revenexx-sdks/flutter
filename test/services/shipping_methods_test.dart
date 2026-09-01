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
    group('ShippingMethods test', () {
        late MockClient client;
        late ShippingMethods shippingMethods;

        setUp(() {
            client = MockClient();
            shippingMethods = ShippingMethods(client);
        });

        test('test method shippingMethodsList()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingMethodsList(
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingMethodsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingMethodsCreate(
                code: 'express',
                name: 'Express delivery',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingMethodsDefaults()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingMethodsDefaults(
            );
        });

        test('test method shippingMethodsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingMethodsDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingMethodsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingMethodsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingMethodsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingMethodsUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingTiersList()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingTiersList(
                methodId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingTiersCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingTiersCreate(
                methodId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingTiersReplace()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingTiersReplace(
                methodId: '',
                tiers: [],
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingTiersLadder()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingTiersLadder(
                methodId: '',
                basePrice: 1.0,
                step: 1.0,
                toValue: 1.0,
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingTiersDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingTiersDelete(
                methodId: '',
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingTiersGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingTiersGet(
                methodId: '',
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingTiersUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingTiersUpdate(
                methodId: '',
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingRates()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingRates(
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingTaxClassesUsage()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingMethods.shippingTaxClassesUsage(
                code: 'reduced',
            );
            expect(response, isA<models.ShippingTaxClassUsage>());

        });

    });
}
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
    group('Shipping test', () {
        late MockClient client;
        late Shipping shipping;

        setUp(() {
            client = MockClient();
            shipping = Shipping(client);
        });

        test('test method shippingMethodsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingMethodsList(
            );
        });

        test('test method shippingMethodsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingMethodsCreate(
                code: '',
                name: '',
            );
            expect(response, isA<models.ShippingMethod>());

        });

        test('test method shippingMethodsDefaults()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingMethodsDefaults(
            );
        });

        test('test method shippingMethodsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingMethodsDelete(
                id: '',
            );
        });

        test('test method shippingMethodsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingMethodsGet(
                id: '',
            );
            expect(response, isA<models.ShippingMethod>());

        });

        test('test method shippingMethodsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingMethodsUpdate(
                id: '',
            );
            expect(response, isA<models.ShippingMethod>());

        });

        test('test method shippingTiersList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingTiersList(
                methodId: '',
            );
        });

        test('test method shippingTiersCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingTiersCreate(
                methodId: '',
            );
            expect(response, isA<models.ShippingRateTier>());

        });

        test('test method shippingTiersReplace()', () async {
            final data = '';

            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingTiersReplace(
                methodId: '',
                tiers: [],
            );
        });

        test('test method shippingTiersDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingTiersDelete(
                methodId: '',
                id: '',
            );
        });

        test('test method shippingTiersGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingTiersGet(
                methodId: '',
                id: '',
            );
            expect(response, isA<models.ShippingRateTier>());

        });

        test('test method shippingTiersUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingTiersUpdate(
                methodId: '',
                id: '',
            );
            expect(response, isA<models.ShippingRateTier>());

        });

        test('test method shippingRates()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shipping.shippingRates(
            );
        });

    });
}
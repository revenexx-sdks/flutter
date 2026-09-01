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
    group('ShippingCarriers test', () {
        late MockClient client;
        late ShippingCarriers shippingCarriers;

        setUp(() {
            client = MockClient();
            shippingCarriers = ShippingCarriers(client);
        });

        test('test method shippingCarriersList()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingCarriers.shippingCarriersList(
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingCarriersCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingCarriers.shippingCarriersCreate(
                code: 'acme-parcel',
                name: 'Acme Parcel',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingCarriersCatalog()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingCarriers.shippingCarriersCatalog(
            );
        });

        test('test method shippingCarriersDefaults()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingCarriers.shippingCarriersDefaults(
            );
        });

        test('test method shippingCarriersDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingCarriers.shippingCarriersDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingCarriersGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingCarriers.shippingCarriersGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingCarriersUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingCarriers.shippingCarriersUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingTracking()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingCarriers.shippingTracking(
                carrier: 'acme-parcel',
            );
            expect(response, isA<models.Error>());

        });

    });
}
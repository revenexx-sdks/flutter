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
    group('ShippingValueLists test', () {
        late MockClient client;
        late ShippingValueLists shippingValueLists;

        setUp(() {
            client = MockClient();
            shippingValueLists = ShippingValueLists(client);
        });

        test('test method shippingServiceLevelsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingServiceLevelsList(
            );
        });

        test('test method shippingServiceLevelsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingServiceLevelsCreate(
                code: 'night_courier',
                title: 'Night courier',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingServiceLevelsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingServiceLevelsDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingServiceLevelsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingServiceLevelsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingServiceLevelsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingServiceLevelsUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingServiceLevelsMakeDefault()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingServiceLevelsMakeDefault(
                id: '',
                data: {},
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingVocabulariesList()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingVocabulariesList(
            );
            expect(response, isA<models.ShippingVocabularyIndex>());

        });

        test('test method shippingVocabulariesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingVocabulariesGet(
                name: enums.ShippingVocabulariesGetName.carrierStatuses,
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingWeightUnitsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingWeightUnitsList(
            );
        });

        test('test method shippingWeightUnitsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingWeightUnitsCreate(
                code: 't',
                factor: 1.0,
                title: 'Tonne',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingWeightUnitsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingWeightUnitsDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingWeightUnitsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingWeightUnitsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingWeightUnitsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingWeightUnitsUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method shippingWeightUnitsMakeDefault()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await shippingValueLists.shippingWeightUnitsMakeDefault(
                id: '',
                data: {},
            );
            expect(response, isA<models.Error>());

        });

    });
}
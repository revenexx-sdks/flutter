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
    Uri? url, {
    String? callbackUrlScheme,
  }) async {
    return super
        .noSuchMethod(Invocation.method(#webAuth, [url]), returnValue: 'done');
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
    return super.noSuchMethod(
        Invocation.method(
            #chunkedUpload, [path, params, paramName, idParamName, headers]),
        returnValue: Response(data: {}));
  }
}

void main() {
  group('ProductsReferences test', () {
    late MockClient client;
    late ProductsReferences productsReferences;

    setUp(() {
      client = MockClient();
      productsReferences = ProductsReferences(client);
    });

    test('test method productsReferenceEntitiesList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await productsReferences.productsReferenceEntitiesList();
    });

    test('test method productsReferenceEntitiesCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await productsReferences.productsReferenceEntitiesCreate(
        code: 'brand',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsReferenceEntitiesDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await productsReferences.productsReferenceEntitiesDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsReferenceEntitiesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await productsReferences.productsReferenceEntitiesGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsReferenceEntitiesUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await productsReferences.productsReferenceEntitiesUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsReferenceEntityRecordsList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await productsReferences.productsReferenceEntityRecordsList();
    });

    test('test method productsReferenceEntityRecordsCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await productsReferences.productsReferenceEntityRecordsCreate(
        code: 'acme_tools',
        referenceEntityId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsReferenceEntityRecordsDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await productsReferences.productsReferenceEntityRecordsDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsReferenceEntityRecordsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await productsReferences.productsReferenceEntityRecordsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsReferenceEntityRecordsUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await productsReferences.productsReferenceEntityRecordsUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });
  });
}

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
  group('Products test', () {
    late MockClient client;
    late Products products;

    setUp(() {
      client = MockClient();
      products = Products(client);
    });

    test('test method productsList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsList();
    });

    test('test method productsCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsCreate(
        sku: 'ACME-4711-BLK',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsBatch()', () async {
      final data = '';

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsBatch();
    });

    test('test method productsGrid()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsGrid();
      expect(response, isA<models.Error>());
    });

    test('test method productsLabels()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsLabels();
      expect(response, isA<models.Error>());
    });

    test('test method productsProductAssociationsList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsProductAssociationsList();
    });

    test('test method productsProductAssociationsCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsProductAssociationsCreate(
        associationTypeId: '',
        productId: '',
        targetProductId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsProductAssociationsDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsProductAssociationsDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsProductAssociationsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsProductAssociationsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsProductAssociationsUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsProductAssociationsUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsVocabulariesList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsVocabulariesList();
    });

    test('test method productsVocabulariesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsVocabulariesGet(
        name: 'product-kinds',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsCompleteness()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsCompleteness(
        id: '',
        data: {},
      );
      expect(response, isA<models.Error>());
    });

    test('test method productsFamilyAssign()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await products.productsFamilyAssign(
        id: '',
      );
      expect(response, isA<models.Error>());
    });
  });
}

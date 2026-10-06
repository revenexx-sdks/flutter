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
  group('Carts test', () {
    late MockClient client;
    late Carts carts;

    setUp(() {
      client = MockClient();
      carts = Carts(client);
    });

    test('test method cartsList()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsList();
      expect(response, isA<models.Error>());
    });

    test('test method cartsCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsCreate();
      expect(response, isA<models.Error>());
    });

    test('test method cartsClaim()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsClaim(
        contactId: '',
        sessionKey: 'a1b2c3d4e5f6',
      );
      expect(response, isA<models.Error>());
    });

    test('test method cartsMaintenanceRun()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsMaintenanceRun();
      expect(response, isA<models.CartMaintenanceResult>());
    });

    test('test method cartsMerge()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsMerge(
        sourceCartId: '',
        targetCartId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method cartsVocabulariesList()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsVocabulariesList();
      expect(response, isA<models.CartVocabularyIndex>());
    });

    test('test method cartsVocabulariesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsVocabulariesGet(
        name: enums.Name.ioApplyModes,
      );
      expect(response, isA<models.Error>());
    });

    test('test method cartsDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method cartsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method cartsUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method cartsAbandon()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsAbandon(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method cartsActivate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsActivate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method cartsMergeInto()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsMergeInto(
        id: '',
        targetCartId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method cartsOrder()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsOrder(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method cartsReopen()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await carts.cartsReopen(
        id: '',
      );
      expect(response, isA<models.Error>());
    });
  });
}

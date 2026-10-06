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
  group('InventoriesStock test', () {
    late MockClient client;
    late InventoriesStock inventoriesStock;

    setUp(() {
      client = MockClient();
      inventoriesStock = InventoriesStock(client);
    });

    test('test method inventoriesAdjust()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesAdjust();
      expect(response, isA<models.Error>());
    });

    test('test method inventoriesAvailability()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesAvailability();
      expect(response, isA<models.Error>());
    });

    test('test method inventoriesMovementsList()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesMovementsList();
      expect(response, isA<models.Error>());
    });

    test('test method inventoriesMovementsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesMovementsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method inventoriesReceive()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesReceive();
      expect(response, isA<models.Error>());
    });

    test('test method inventoriesReorderAlerts()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesReorderAlerts();
      expect(response, isA<models.ReorderAlerts>());
    });

    test('test method inventoriesReorderScan()', () async {
      final Map<String, dynamic> data = {
        'emitted': [],
        'enabled': true,
        'scanned': 2,
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesReorderScan(
        data: {},
      );
      expect(response, isA<models.ReorderScan>());
    });

    test('test method inventoriesRestock()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesRestock();
      expect(response, isA<models.Error>());
    });

    test('test method inventoriesStockList()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesStockList();
      expect(response, isA<models.Error>());
    });

    test('test method inventoriesStockCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesStockCreate(
        locationId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method inventoriesStockDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesStockDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method inventoriesStockGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesStockGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method inventoriesStockUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesStockUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method inventoriesStockAdjust()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesStockAdjust(
        id: '',
        quantity: 1.0,
      );
      expect(response, isA<models.Error>());
    });

    test('test method inventoriesVocabulariesList()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesVocabulariesList();
      expect(response, isA<models.InventoryVocabularyIndex>());
    });

    test('test method inventoriesVocabulariesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await inventoriesStock.inventoriesVocabulariesGet(
        name: enums.InventoriesVocabulariesGetName.locationTypes,
      );
      expect(response, isA<models.Error>());
    });
  });
}

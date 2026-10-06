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
  group('Orders test', () {
    late MockClient client;
    late Orders orders;

    setUp(() {
      client = MockClient();
      orders = Orders(client);
    });

    test('test method ordersList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersList();
    });

    test('test method ordersNumberRangesList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersNumberRangesList();
    });

    test('test method ordersNumberRangesCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersNumberRangesCreate(
        code: 'order',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersNumberRangesDefaults()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersNumberRangesDefaults();
      expect(response, isA<models.OrderNumberRangesSeeded>());
    });

    test('test method ordersNumberRangesDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersNumberRangesDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersNumberRangesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersNumberRangesGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersNumberRangesUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersNumberRangesUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersPlace()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersPlace(
        items: [],
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersReportsCustomerRollup()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersReportsCustomerRollup();
      expect(response, isA<models.OrderCustomerRollupResponse>());
    });

    test('test method ordersVocabulariesList()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersVocabulariesList();
      expect(response, isA<models.OrderVocabularyIndex>());
    });

    test('test method ordersVocabulariesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersVocabulariesGet(
        name: enums.OrdersVocabulariesGetName.cancellationScopes,
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersAcknowledge()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersAcknowledge(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersCancel()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersCancel(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersCommentsList()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersCommentsList(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersCommentsCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersCommentsCreate(
        id: '',
        body: 'Called the customer, delivery agreed for next week.',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersComplete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersComplete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersEventsList()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersEventsList(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersHold()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersHold(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersItemsCancel()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersItemsCancel(
        id: '',
        positions: [],
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersPaymentStatusUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersPaymentStatusUpdate(
        id: '',
        status: enums.OrderPaymentStatus.open,
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersReturn()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersReturn(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersReturnsComplete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersReturnsComplete(
        id: '',
        rid: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersReturnsReceive()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersReturnsReceive(
        id: '',
        rid: '',
        data: {},
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersReturnsReject()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersReturnsReject(
        id: '',
        rid: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersShip()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersShip(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersShippable()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersShippable(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method ordersUnhold()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await orders.ordersUnhold(
        id: '',
        data: {},
      );
      expect(response, isA<models.Error>());
    });
  });
}

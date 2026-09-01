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
  group('PaymentsLedger test', () {
    late MockClient client;
    late PaymentsLedger paymentsLedger;

    setUp(() {
      client = MockClient();
      paymentsLedger = PaymentsLedger(client);
    });

    test('test method paymentsList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsList();
    });

    test('test method paymentsCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsCreate(
        amount: 1.0,
        methodCode: 'invoice',
      );
      expect(response, isA<models.Error>());
    });

    test('test method paymentsDunningScan()', () async {
      final data = '';

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsDunningScan();
    });

    test('test method paymentsErrorsRedact()', () async {
      final data = '';

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsErrorsRedact();
    });

    test('test method paymentsOrdersCapture()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsOrdersCapture(
        orderRef: 'ORD-10042',
      );
      expect(response, isA<models.Error>());
    });

    test('test method paymentsVocabulariesList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsVocabulariesList();
    });

    test('test method paymentsVocabulariesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsVocabulariesGet(
        name: enums.PaymentsVocabulariesGetName.dunningStages,
      );
      expect(response, isA<models.Error>());
    });

    test('test method paymentsWebhooksIngest()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsWebhooksIngest(
        provider: 'stripe',
      );
      expect(response, isA<models.Error>());
    });

    test('test method paymentsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method paymentsCancel()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsCancel(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method paymentsCapture()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsCapture(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method paymentsConfirm()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsConfirm(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method paymentsRefund()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await paymentsLedger.paymentsRefund(
        id: '',
      );
      expect(response, isA<models.Error>());
    });
  });
}

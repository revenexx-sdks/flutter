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
    group('Payments test', () {
        late MockClient client;
        late Payments payments;

        setUp(() {
            client = MockClient();
            payments = Payments(client);
        });

        test('test method paymentsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsList(
            );
        });

        test('test method paymentsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsCreate(
                amount: 1.0,
                methodCode: '',
            );
            expect(response, isA<models.Payment>());

        });

        test('test method paymentsMethodsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsMethodsList(
            );
        });

        test('test method paymentsMethodsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsMethodsCreate(
                code: '',
                name: '',
            );
            expect(response, isA<models.PaymentMethod>());

        });

        test('test method paymentsMethodsDefaults()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsMethodsDefaults(
            );
        });

        test('test method paymentsMethodsEligible()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsMethodsEligible(
            );
        });

        test('test method paymentsMethodsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsMethodsDelete(
                id: '',
            );
        });

        test('test method paymentsMethodsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsMethodsGet(
                id: '',
            );
            expect(response, isA<models.PaymentMethod>());

        });

        test('test method paymentsMethodsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsMethodsUpdate(
                id: '',
            );
            expect(response, isA<models.PaymentMethod>());

        });

        test('test method paymentsProvidersList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsProvidersList(
            );
        });

        test('test method paymentsProvidersCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsProvidersCreate(
                provider: '',
            );
            expect(response, isA<models.PaymentProvider>());

        });

        test('test method paymentsProvidersCatalog()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsProvidersCatalog(
            );
        });

        test('test method paymentsProvidersDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsProvidersDelete(
                id: '',
            );
        });

        test('test method paymentsProvidersGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsProvidersGet(
                id: '',
            );
            expect(response, isA<models.PaymentProvider>());

        });

        test('test method paymentsProvidersUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsProvidersUpdate(
                id: '',
            );
            expect(response, isA<models.PaymentProvider>());

        });

        test('test method paymentsWebhooksIngest()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsWebhooksIngest(
                provider: '',
                data: {},
            );
        });

        test('test method paymentsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsGet(
                id: '',
            );
            expect(response, isA<models.Payment>());

        });

        test('test method paymentsCancel()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsCancel(
                id: '',
            );
            expect(response, isA<models.Payment>());

        });

        test('test method paymentsCapture()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsCapture(
                id: '',
            );
            expect(response, isA<models.Payment>());

        });

        test('test method paymentsConfirm()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsConfirm(
                id: '',
            );
            expect(response, isA<models.Payment>());

        });

        test('test method paymentsRefund()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await payments.paymentsRefund(
                id: '',
            );
            expect(response, isA<models.Payment>());

        });

    });
}
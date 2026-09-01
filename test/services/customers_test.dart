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
    group('Customers test', () {
        late MockClient client;
        late Customers customers;

        setUp(() {
            client = MockClient();
            customers = Customers(client);
        });

        test('test method customersAuthLogin()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthLogin(
                email: 'einkauf@example.com',
                password: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthLogout()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthLogout(
                sessionId: '',
                userId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthMagicLink()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthMagicLink(
                email: 'einkauf@example.com',
                url: 'https://example.com',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthMagicLinkConfirm()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthMagicLinkConfirm(
                secret: '',
                userId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthMe()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthMe(
                userId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthMfaChallenge()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthMfaChallenge(
                userId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthMfaChallengeConfirm()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthMfaChallengeConfirm(
                challengeId: '',
                code: '',
                sessionSecret: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthOtp()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthOtp(
                email: 'einkauf@example.com',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthOtpConfirm()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthOtpConfirm(
                secret: '',
                userId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthRecovery()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthRecovery(
                email: 'einkauf@example.com',
                url: 'https://example.com',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthRecoveryConfirm()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthRecoveryConfirm(
                password: '',
                secret: '',
                userId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthRegister()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthRegister(
                email: 'einkauf@example.com',
                password: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthVerification()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthVerification(
                url: 'https://example.com',
                userId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersAuthVerificationConfirm()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthVerificationConfirm(
                secret: '',
                userId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersPrincipalResolve()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersPrincipalResolve(
                contactId: '',
            );
            expect(response, isA<models.Error>());

        });

    });
}
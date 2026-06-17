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

        test('test method customersAddressesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAddressesList(
            );
        });

        test('test method customersAddressesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAddressesCreate(
                city: '',
                country: '',
                street: '',
                zip: '',
            );
            expect(response, isA<models.Address>());

        });

        test('test method customersAddressesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAddressesDelete(
                id: '',
            );
        });

        test('test method customersAddressesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAddressesGet(
                id: '',
            );
            expect(response, isA<models.Address>());

        });

        test('test method customersAddressesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAddressesUpdate(
                id: '',
            );
            expect(response, isA<models.Address>());

        });

        test('test method customersAuthLogin()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthLogin(
                email: '',
                password: '',
            );
            expect(response, isA<models.AuthLoginResponse>());

        });

        test('test method customersAuthLogout()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthLogout(
                sessionId: '',
                userId: '',
            );
        });

        test('test method customersAuthMe()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthMe(
                userId: '',
            );
            expect(response, isA<models.AuthMeResponse>());

        });

        test('test method customersAuthRecovery()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthRecovery(
                email: '',
                url: '',
            );
        });

        test('test method customersAuthRecoveryConfirm()', () async {
            final data = '';

            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthRecoveryConfirm(
                password: '',
                secret: '',
                userId: '',
            );
        });

        test('test method customersAuthRegister()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersAuthRegister(
                email: '',
                password: '',
            );
            expect(response, isA<models.AuthRegisterResponse>());

        });

        test('test method customersContactsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersContactsList(
            );
        });

        test('test method customersContactsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersContactsCreate(
                email: '',
            );
            expect(response, isA<models.Contact>());

        });

        test('test method customersContactsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersContactsDelete(
                id: '',
            );
        });

        test('test method customersContactsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersContactsGet(
                id: '',
            );
            expect(response, isA<models.Contact>());

        });

        test('test method customersContactsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersContactsUpdate(
                id: '',
            );
            expect(response, isA<models.Contact>());

        });

        test('test method customersOrganizationsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersOrganizationsList(
            );
        });

        test('test method customersOrganizationsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersOrganizationsCreate(
                name: '',
            );
            expect(response, isA<models.Organization>());

        });

        test('test method customersOrganizationsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersOrganizationsDelete(
                id: '',
            );
        });

        test('test method customersOrganizationsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersOrganizationsGet(
                id: '',
            );
            expect(response, isA<models.Organization>());

        });

        test('test method customersOrganizationsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customers.customersOrganizationsUpdate(
                id: '',
            );
            expect(response, isA<models.Organization>());

        });

    });
}
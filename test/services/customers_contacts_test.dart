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
    group('CustomersContacts test', () {
        late MockClient client;
        late CustomersContacts customersContacts;

        setUp(() {
            client = MockClient();
            customersContacts = CustomersContacts(client);
        });

        test('test method customersContactEventsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersContactEventsList(
            );
        });

        test('test method customersContactEventsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersContactEventsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersContactsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersContactsList(
            );
        });

        test('test method customersContactsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersContactsCreate(
                email: 'einkauf@example.com',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersContactsEventsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersContactsEventsCreate(
                contactId: '',
                subject: 'Called about the annual requirement',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersContactsInvite()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersContactsInvite(
                contactId: '',
                url: 'https://shop.example.com/anmelden',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersContactsPermissions()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersContactsPermissions(
                contactId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersRegistrationsApprove()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersRegistrationsApprove(
                contactId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersRegistrationsReject()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersRegistrationsReject(
                contactId: '',
                reason: 'Could not be verified as a commercial buyer.',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersContactsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersContactsDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersContactsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersContactsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersContactsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersContactsUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersOrganizationsEventsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersContacts.customersOrganizationsEventsCreate(
                organizationId: '',
                contactId: '',
                subject: 'Called about the annual requirement',
            );
            expect(response, isA<models.Error>());

        });

    });
}
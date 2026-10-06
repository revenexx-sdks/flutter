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
  group('CustomersOrganizations test', () {
    late MockClient client;
    late CustomersOrganizations customersOrganizations;

    setUp(() {
      client = MockClient();
      customersOrganizations = CustomersOrganizations(client);
    });

    test('test method customersAddressesList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersOrganizations.customersAddressesList();
    });

    test('test method customersAddressesCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersOrganizations.customersAddressesCreate(
        city: 'Berlin',
        country: 'DE',
        street: 'Musterstraße 12',
        zip: '10115',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersAddressesDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersOrganizations.customersAddressesDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersAddressesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersOrganizations.customersAddressesGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersAddressesUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersOrganizations.customersAddressesUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersOrganizationMetricsList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await customersOrganizations.customersOrganizationMetricsList();
    });

    test('test method customersOrganizationMetricsFreshness()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await customersOrganizations.customersOrganizationMetricsFreshness();
      expect(response, isA<models.OrganizationMetricsFreshness>());
    });

    test('test method customersOrganizationMetricsRefresh()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await customersOrganizations.customersOrganizationMetricsRefresh();
      expect(response, isA<models.Error>());
    });

    test('test method customersOrganizationMetricsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await customersOrganizations.customersOrganizationMetricsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersOrganizationsList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await customersOrganizations.customersOrganizationsList();
    });

    test('test method customersOrganizationsCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await customersOrganizations.customersOrganizationsCreate(
        name: 'Beispiel Industrietechnik GmbH',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersOrganizationsDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await customersOrganizations.customersOrganizationsDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersOrganizationsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersOrganizations.customersOrganizationsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersOrganizationsUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await customersOrganizations.customersOrganizationsUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });
  });
}

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
  group('CustomersValueLists test', () {
    late MockClient client;
    late CustomersValueLists customersValueLists;

    setUp(() {
      client = MockClient();
      customersValueLists = CustomersValueLists(client);
    });

    test('test method customersAddressTypesList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersAddressTypesList();
    });

    test('test method customersAddressTypesCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersAddressTypesCreate(
        code: '',
        title: 'Shipping address',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersAddressTypesDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersAddressTypesDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersAddressTypesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersAddressTypesGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersAddressTypesUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersAddressTypesUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersContactEventKindsList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await customersValueLists.customersContactEventKindsList();
    });

    test('test method customersContactEventKindsCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await customersValueLists.customersContactEventKindsCreate(
        code: '',
        title: 'Phone call',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersContactEventKindsDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await customersValueLists.customersContactEventKindsDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersContactEventKindsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersContactEventKindsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersContactEventKindsUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await customersValueLists.customersContactEventKindsUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersDefaults()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersDefaults(
        data: {},
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersLifecycleStagesList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersLifecycleStagesList();
    });

    test('test method customersLifecycleStagesCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersLifecycleStagesCreate(
        code: '',
        title: 'Customer',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersLifecycleStagesDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersLifecycleStagesDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersLifecycleStagesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersLifecycleStagesGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersLifecycleStagesUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersLifecycleStagesUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersPaymentTermsList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersPaymentTermsList();
    });

    test('test method customersPaymentTermsCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersPaymentTermsCreate(
        code: '',
        title: 'Net 30 days',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersPaymentTermsDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersPaymentTermsDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersPaymentTermsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersPaymentTermsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersPaymentTermsUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersPaymentTermsUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method customersVocabulariesList()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersVocabulariesList();
      expect(response, isA<models.VocabularyIndex>());
    });

    test('test method customersVocabulariesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await customersValueLists.customersVocabulariesGet(
        name: enums.CustomersVocabulariesGetName.addressTypes,
      );
      expect(response, isA<models.Error>());
    });
  });
}

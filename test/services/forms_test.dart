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
  group('Forms test', () {
    late MockClient client;
    late Forms forms;

    setUp(() {
      client = MockClient();
      forms = Forms(client);
    });

    test('test method formsList()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsList();
      expect(response, isA<models.Error>());
    });

    test('test method formsCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsCreate(
        name: 'Price request',
        slug: 'price-request',
      );
      expect(response, isA<models.Error>());
    });

    test('test method formsDefaults()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsDefaults();
      expect(response, isA<models.FormDefaultsResult>());
    });

    test('test method formsSubmissionsList()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsSubmissionsList();
      expect(response, isA<models.Error>());
    });

    test('test method formsSubmissionsCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsSubmissionsCreate(
        data: {},
        formId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method formsSubmissionsPrune()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsSubmissionsPrune();
      expect(response, isA<models.Error>());
    });

    test('test method formsSubmissionsDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsSubmissionsDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method formsSubmissionsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsSubmissionsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method formsSubmissionsUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsSubmissionsUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method formsVocabulariesList()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsVocabulariesList();
      expect(response, isA<models.FormsVocabularyIndex>());
    });

    test('test method formsVocabulariesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsVocabulariesGet(
        name: enums.FormsVocabulariesGetName.formStatuses,
      );
      expect(response, isA<models.Error>());
    });

    test('test method formsDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method formsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method formsUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await forms.formsUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });
  });
}

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
  group('PagesEditor test', () {
    late MockClient client;
    late PagesEditor pagesEditor;

    setUp(() {
      client = MockClient();
      pagesEditor = PagesEditor(client);
    });

    test('test method pagesEditorEditStates()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorEditStates();
    });

    test('test method pagesEditorTranslate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorTranslate();
      expect(response, isA<models.Error>());
    });

    test('test method pagesEditorUserSettingsGet()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorUserSettingsGet();
    });

    test('test method pagesEditorUserSettingsPut()', () async {
      final data = '';

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorUserSettingsPut();
    });

    test('test method pagesEditorHistory()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorHistory(
        pageId: '',
        index: 1,
      );
      expect(response, isA<models.MutationResponse>());
    });

    test('test method pagesEditorLastChanged()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorLastChanged(
        pageId: '',
      );
    });

    test('test method pagesEditorMutationStatus()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorMutationStatus(
        pageId: '',
        enabled: true,
        index: 1,
      );
      expect(response, isA<models.MutationResponse>());
    });

    test('test method pagesEditorMutate()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorMutate(
        pageId: '',
        plugin: 'add',
      );
      expect(response, isA<models.MutationResponse>());
    });

    test('test method pagesEditorPreviewGrant()', () async {
      final data = '';

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorPreviewGrant(
        pageId: '',
      );
    });

    test('test method pagesEditorPublish()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorPublish(
        pageId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method pagesEditorRevert()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorRevert(
        pageId: '',
      );
      expect(response, isA<models.MutationResponse>());
    });

    test('test method pagesEditorSchedule()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorSchedule(
        pageId: '',
        scheduledAt: '2026-01-01T12:00:00Z',
      );
      expect(response, isA<models.Error>());
    });

    test('test method pagesEditorState()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorState(
        pageId: '',
      );
      expect(response, isA<models.EditorState>());
    });

    test('test method pagesEditorTakeOwnership()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorTakeOwnership(
        pageId: '',
      );
      expect(response, isA<models.MutationResponse>());
    });

    test('test method pagesEditorTemplatesCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorTemplatesCreate(
        pageId: '',
        label: 'Hero with two teasers',
        uuids: [],
      );
      expect(response, isA<models.Error>());
    });

    test('test method pagesEditorUnschedule()', () async {
      final data = '';

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesEditor.pagesEditorUnschedule(
        pageId: '',
      );
    });
  });
}

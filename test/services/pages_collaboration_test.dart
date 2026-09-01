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
  group('PagesCollaboration test', () {
    late MockClient client;
    late PagesCollaboration pagesCollaboration;

    setUp(() {
      client = MockClient();
      pagesCollaboration = PagesCollaboration(client);
    });

    test('test method pagesEditorNotificationsList()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesCollaboration.pagesEditorNotificationsList();
    });

    test('test method pagesEditorNotificationsMarkAllRead()', () async {
      final data = '';

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await pagesCollaboration.pagesEditorNotificationsMarkAllRead();
    });

    test('test method pagesEditorNotificationsUnreadCount()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response =
          await pagesCollaboration.pagesEditorNotificationsUnreadCount();
    });

    test('test method pagesEditorUsers()', () async {
      final data = '';

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesCollaboration.pagesEditorUsers();
    });

    test('test method pagesEditorCommentsList()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesCollaboration.pagesEditorCommentsList(
        pageId: '',
      );
      expect(response, isA<models.PageCommentList>());
    });

    test('test method pagesEditorCommentsCreate()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesCollaboration.pagesEditorCommentsCreate(
        pageId: '',
        body: '<p>Please shorten this headline.</p>',
      );
      expect(response, isA<models.PageCommentList>());
    });

    test('test method pagesEditorCommentsDelete()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesCollaboration.pagesEditorCommentsDelete(
        pageId: '',
        uuid: '',
      );
      expect(response, isA<models.PageCommentList>());
    });

    test('test method pagesEditorCommentsUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesCollaboration.pagesEditorCommentsUpdate(
        pageId: '',
        uuid: '',
        body: '<p>Please shorten this headline.</p>',
      );
      expect(response, isA<models.Error>());
    });

    test('test method pagesEditorCommentsResolve()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesCollaboration.pagesEditorCommentsResolve(
        pageId: '',
        uuid: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method pagesEditorCommentsToggleTask()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesCollaboration.pagesEditorCommentsToggleTask(
        pageId: '',
        uuid: '',
        taskIndex: 1,
      );
      expect(response, isA<models.Error>());
    });

    test('test method pagesEditorCommentsUnresolve()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await pagesCollaboration.pagesEditorCommentsUnresolve(
        pageId: '',
        uuid: '',
      );
      expect(response, isA<models.Error>());
    });
  });
}

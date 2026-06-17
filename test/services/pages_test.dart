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
    group('Pages test', () {
        late MockClient client;
        late Pages pages;

        setUp(() {
            client = MockClient();
            pages = Pages(client);
        });

        test('test method pagesDeliveryMenus()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesDeliveryMenus(
            );
        });

        test('test method pagesDeliveryPage()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesDeliveryPage(
            );
            expect(response, isA<models.DeliveryPage>());

        });

        test('test method pagesDeliveryPages()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesDeliveryPages(
            );
        });

        test('test method pagesDeliveryPreview()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesDeliveryPreview(
                token: '',
            );
            expect(response, isA<models.DeliveryPage>());

        });

        test('test method pagesEditorEditStates()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorEditStates(
            );
        });

        test('test method pagesEditorNotificationsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorNotificationsList(
            );
        });

        test('test method pagesEditorNotificationsMarkAllRead()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorNotificationsMarkAllRead(
            );
        });

        test('test method pagesEditorNotificationsUnreadCount()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorNotificationsUnreadCount(
            );
        });

        test('test method pagesEditorTranslate()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorTranslate(
            );
        });

        test('test method pagesEditorUserSettingsGet()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorUserSettingsGet(
            );
        });

        test('test method pagesEditorUserSettingsPut()', () async {
            final data = '';

            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorUserSettingsPut(
            );
        });

        test('test method pagesEditorUsers()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorUsers(
            );
        });

        test('test method pagesEditorCommentsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorCommentsList(
                pageId: '',
            );
        });

        test('test method pagesEditorCommentsCreate()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorCommentsCreate(
                pageId: '',
                body: '',
            );
        });

        test('test method pagesEditorCommentsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorCommentsDelete(
                pageId: '',
                uuid: '',
            );
        });

        test('test method pagesEditorCommentsUpdate()', () async {
            final data = '';

            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorCommentsUpdate(
                pageId: '',
                uuid: '',
                body: '',
            );
        });

        test('test method pagesEditorCommentsResolve()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorCommentsResolve(
                pageId: '',
                uuid: '',
            );
        });

        test('test method pagesEditorCommentsToggleTask()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorCommentsToggleTask(
                pageId: '',
                uuid: '',
                taskIndex: 1,
            );
            expect(response, isA<models.Comment>());

        });

        test('test method pagesEditorCommentsUnresolve()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorCommentsUnresolve(
                pageId: '',
                uuid: '',
            );
        });

        test('test method pagesEditorHistory()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorHistory(
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


            final response = await pages.pagesEditorLastChanged(
                pageId: '',
            );
        });

        test('test method pagesEditorMutationStatus()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorMutationStatus(
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


            final response = await pages.pagesEditorMutate(
                pageId: '',
                plugin: '',
            );
            expect(response, isA<models.MutationResponse>());

        });

        test('test method pagesEditorPreviewGrant()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorPreviewGrant(
                pageId: '',
            );
        });

        test('test method pagesEditorPublish()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorPublish(
                pageId: '',
            );
            expect(response, isA<models.MutationResponse>());

        });

        test('test method pagesEditorRevert()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorRevert(
                pageId: '',
            );
            expect(response, isA<models.MutationResponse>());

        });

        test('test method pagesEditorSchedule()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorSchedule(
                pageId: '',
                scheduledAt: '',
            );
        });

        test('test method pagesEditorState()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorState(
                pageId: '',
            );
            expect(response, isA<models.EditorState>());

        });

        test('test method pagesEditorTakeOwnership()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorTakeOwnership(
                pageId: '',
            );
            expect(response, isA<models.MutationResponse>());

        });

        test('test method pagesEditorTemplatesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorTemplatesCreate(
                pageId: '',
                label: '',
                uuids: [],
            );
            expect(response, isA<models.Template>());

        });

        test('test method pagesEditorUnschedule()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesEditorUnschedule(
                pageId: '',
            );
        });

        test('test method pagesLibraryList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesLibraryList(
            );
        });

        test('test method pagesLibraryDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesLibraryDelete(
                id: '',
            );
        });

        test('test method pagesLibraryGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesLibraryGet(
                id: '',
            );
            expect(response, isA<models.LibraryItem>());

        });

        test('test method pagesLibraryUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesLibraryUpdate(
                id: '',
            );
            expect(response, isA<models.LibraryItem>());

        });

        test('test method pagesMenusList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesMenusList(
            );
        });

        test('test method pagesMenusUpsert()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesMenusUpsert(
                label: '',
                menuKey: '',
            );
            expect(response, isA<models.Menu>());

        });

        test('test method pagesMenusDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesMenusDelete(
                id: '',
            );
        });

        test('test method pagesMenusGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesMenusGet(
                id: '',
            );
            expect(response, isA<models.Menu>());

        });

        test('test method pagesMenusUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesMenusUpdate(
                id: '',
            );
            expect(response, isA<models.Menu>());

        });

        test('test method pagesPagesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesPagesList(
            );
        });

        test('test method pagesPagesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesPagesCreate(
                title: '',
            );
            expect(response, isA<models.Page>());

        });

        test('test method pagesPagesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesPagesDelete(
                id: '',
            );
        });

        test('test method pagesPagesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesPagesGet(
                id: '',
            );
            expect(response, isA<models.Page>());

        });

        test('test method pagesPagesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesPagesUpdate(
                id: '',
            );
            expect(response, isA<models.Page>());

        });

        test('test method pagesPagesRevisions()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesPagesRevisions(
                id: '',
            );
        });

        test('test method pagesSeed()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesSeed(
            );
        });

        test('test method pagesTemplatesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesTemplatesList(
            );
        });

        test('test method pagesTemplatesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesTemplatesDelete(
                id: '',
            );
        });

        test('test method pagesTemplatesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesTemplatesGet(
                id: '',
            );
            expect(response, isA<models.Template>());

        });

        test('test method pagesTemplatesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await pages.pagesTemplatesUpdate(
                id: '',
            );
            expect(response, isA<models.Template>());

        });

    });
}
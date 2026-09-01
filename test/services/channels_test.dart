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
    group('Channels test', () {
        late MockClient client;
        late Channels channels;

        setUp(() {
            client = MockClient();
            channels = Channels(client);
        });

        test('test method channelsList()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsList(
            );
            expect(response, isA<models.Error>());

        });

        test('test method channelsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsCreate(
                code: 'shop',
                name: 'Shop',
            );
            expect(response, isA<models.Error>());

        });

        test('test method channelsContext()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsContext(
            );
            expect(response, isA<models.ChannelContext>());

        });

        test('test method channelsDefaults()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsDefaults(
            );
            expect(response, isA<models.Error>());

        });

        test('test method channelsTypesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsTypesList(
            );
        });

        test('test method channelsTypesCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsTypesCreate(
                code: 'feed',
                title: 'Product feed',
            );
            expect(response, isA<models.Error>());

        });

        test('test method channelsTypesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsTypesDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method channelsTypesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsTypesGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method channelsTypesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsTypesUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method channelsVisibility()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsVisibility(
                items: [],
            );
            expect(response, isA<models.Error>());

        });

        test('test method channelsVocabulariesList()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsVocabulariesList(
            );
            expect(response, isA<models.ChannelVocabularyIndex>());

        });

        test('test method channelsVocabulariesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsVocabulariesGet(
                name: enums.ChannelsVocabulariesGetName.statuses,
            );
            expect(response, isA<models.Error>());

        });

        test('test method channelsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method channelsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method channelsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await channels.channelsUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

    });
}
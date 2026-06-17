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
    group('Messaging test', () {
        late MockClient client;
        late Messaging messaging;

        setUp(() {
            client = MockClient();
            messaging = Messaging(client);
        });

        test('test method messagingListMessages()', () async {
            final Map<String, dynamic> data = {
                'messages': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingListMessages(
            );
            expect(response, isA<models.MessageList>());

        });

        test('test method messagingCreateEmail()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'data': <String, dynamic>{},
                'deliveredTotal': ,
                'providerType': '',
                'status': '',
                'targets': [],
                'topics': [],
                'users': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingCreateEmail(
                content: '',
                messageId: '',
                subject: '',
            );
            expect(response, isA<models.Message>());

        });

        test('test method messagingUpdateEmail()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'data': <String, dynamic>{},
                'deliveredTotal': ,
                'providerType': '',
                'status': '',
                'targets': [],
                'topics': [],
                'users': [],};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingUpdateEmail(
                messageId: '',
            );
            expect(response, isA<models.Message>());

        });

        test('test method messagingCreatePush()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'data': <String, dynamic>{},
                'deliveredTotal': ,
                'providerType': '',
                'status': '',
                'targets': [],
                'topics': [],
                'users': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingCreatePush(
                messageId: '',
            );
            expect(response, isA<models.Message>());

        });

        test('test method messagingUpdatePush()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'data': <String, dynamic>{},
                'deliveredTotal': ,
                'providerType': '',
                'status': '',
                'targets': [],
                'topics': [],
                'users': [],};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingUpdatePush(
                messageId: '',
            );
            expect(response, isA<models.Message>());

        });

        test('test method messagingDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingDelete(
                messageId: '',
            );
        });

        test('test method messagingGetMessage()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'data': <String, dynamic>{},
                'deliveredTotal': ,
                'providerType': '',
                'status': '',
                'targets': [],
                'topics': [],
                'users': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingGetMessage(
                messageId: '',
            );
            expect(response, isA<models.Message>());

        });

        test('test method messagingListMessageLogs()', () async {
            final Map<String, dynamic> data = {
                'logs': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingListMessageLogs(
                messageId: '',
            );
            expect(response, isA<models.LogList>());

        });

        test('test method messagingListTargets()', () async {
            final Map<String, dynamic> data = {
                'targets': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingListTargets(
                messageId: '',
            );
            expect(response, isA<models.TargetList>());

        });

        test('test method messagingListProviders()', () async {
            final Map<String, dynamic> data = {
                'providers': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingListProviders(
            );
            expect(response, isA<models.ProviderList>());

        });

        test('test method messagingCreateMailgunProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingCreateMailgunProvider(
                name: '',
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingUpdateMailgunProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingUpdateMailgunProvider(
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingCreateMsg91Provider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingCreateMsg91Provider(
                name: '',
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingUpdateMsg91Provider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingUpdateMsg91Provider(
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingCreateResendProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingCreateResendProvider(
                name: '',
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingUpdateResendProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingUpdateResendProvider(
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingCreateSendgridProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingCreateSendgridProvider(
                name: '',
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingUpdateSendgridProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingUpdateSendgridProvider(
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingCreateTelesignProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingCreateTelesignProvider(
                name: '',
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingUpdateTelesignProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingUpdateTelesignProvider(
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingCreateTextmagicProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingCreateTextmagicProvider(
                name: '',
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingUpdateTextmagicProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingUpdateTextmagicProvider(
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingCreateTwilioProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingCreateTwilioProvider(
                name: '',
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingUpdateTwilioProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingUpdateTwilioProvider(
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingCreateVonageProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingCreateVonageProvider(
                name: '',
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingUpdateVonageProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingUpdateVonageProvider(
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingDeleteProvider()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingDeleteProvider(
                providerId: '',
            );
        });

        test('test method messagingGetProvider()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'credentials': <String, dynamic>{},
                'enabled': true,
                'name': '',
                'provider': '',
                'type': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingGetProvider(
                providerId: '',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method messagingListProviderLogs()', () async {
            final Map<String, dynamic> data = {
                'logs': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingListProviderLogs(
                providerId: '',
            );
            expect(response, isA<models.LogList>());

        });

        test('test method messagingListSubscriberLogs()', () async {
            final Map<String, dynamic> data = {
                'logs': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingListSubscriberLogs(
                subscriberId: '',
            );
            expect(response, isA<models.LogList>());

        });

        test('test method messagingListTopics()', () async {
            final Map<String, dynamic> data = {
                'topics': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingListTopics(
            );
            expect(response, isA<models.TopicList>());

        });

        test('test method messagingCreateTopic()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'emailTotal': ,
                'name': '',
                'pushTotal': ,
                'smsTotal': ,
                'subscribe': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingCreateTopic(
                name: '',
                topicId: '',
            );
            expect(response, isA<models.Topic>());

        });

        test('test method messagingDeleteTopic()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingDeleteTopic(
                topicId: '',
            );
        });

        test('test method messagingGetTopic()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'emailTotal': ,
                'name': '',
                'pushTotal': ,
                'smsTotal': ,
                'subscribe': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingGetTopic(
                topicId: '',
            );
            expect(response, isA<models.Topic>());

        });

        test('test method messagingUpdateTopic()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'emailTotal': ,
                'name': '',
                'pushTotal': ,
                'smsTotal': ,
                'subscribe': [],};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingUpdateTopic(
                topicId: '',
            );
            expect(response, isA<models.Topic>());

        });

        test('test method messagingListTopicLogs()', () async {
            final Map<String, dynamic> data = {
                'logs': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingListTopicLogs(
                topicId: '',
            );
            expect(response, isA<models.LogList>());

        });

        test('test method messagingListSubscribers()', () async {
            final Map<String, dynamic> data = {
                'subscribers': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingListSubscribers(
                topicId: '',
            );
            expect(response, isA<models.SubscriberList>());

        });

        test('test method messagingCreateSubscriber()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'providerType': '',
                'target': <String, dynamic>{
    '\$createdAt': '',
    '\$id': '',
    '\$updatedAt': '',
    'expired': true,
    'identifier': '',
    'name': '',
    'providerType': '',
    'userId': '',
  },
                'targetId': '',
                'topicId': '',
                'userId': '',
                'userName': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingCreateSubscriber(
                topicId: '',
                subscriberId: '',
                targetId: '',
            );
            expect(response, isA<models.Subscriber>());

        });

        test('test method messagingDeleteSubscriber()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingDeleteSubscriber(
                topicId: '',
                subscriberId: '',
            );
        });

        test('test method messagingGetSubscriber()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                '\$updatedAt': '',
                'providerType': '',
                'target': <String, dynamic>{
    '\$createdAt': '',
    '\$id': '',
    '\$updatedAt': '',
    'expired': true,
    'identifier': '',
    'name': '',
    'providerType': '',
    'userId': '',
  },
                'targetId': '',
                'topicId': '',
                'userId': '',
                'userName': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.messagingGetSubscriber(
                topicId: '',
                subscriberId: '',
            );
            expect(response, isA<models.Subscriber>());

        });

    });
}
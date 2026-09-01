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
  group('Messaging test', () {
    late MockClient client;
    late Messaging messaging;

    setUp(() {
      client = MockClient();
      messaging = Messaging(client);
    });

    test('test method auditIndex()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.auditIndex();
      expect(response, isA<models.Error>());
    });

    test('test method bindingIndex()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.bindingIndex();
      expect(response, isA<models.Error>());
    });

    test('test method bindingStore()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.bindingStore(
        channel: '',
        eventTopic: '',
        recipient: '',
        templateKey: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method bindingDestroy()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.bindingDestroy(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method bindingShow()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.bindingShow(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method bindingUpdatePatch()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.bindingUpdatePatch(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method bindingUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.bindingUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method channelCredentialIndex()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.channelCredentialIndex();
      expect(response, isA<models.Error>());
    });

    test('test method channelCredentialDestroy()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.channelCredentialDestroy(
        channel: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method channelCredentialUpdatePatch()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.channelCredentialUpdatePatch(
        channel: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method channelCredentialUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.channelCredentialUpdate(
        channel: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method channelCredentialVerify()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.channelCredentialVerify(
        channel: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method channelIndex()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.channelIndex();
      expect(response, isA<models.Error>());
    });

    test('test method configShow()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.configShow();
      expect(response, isA<models.Error>());
    });

    test('test method configUpdatePatch()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.configUpdatePatch();
      expect(response, isA<models.Error>());
    });

    test('test method configUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.configUpdate();
      expect(response, isA<models.Error>());
    });

    test('test method layoutIndex()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.layoutIndex();
      expect(response, isA<models.Error>());
    });

    test('test method layoutStore()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.layoutStore();
      expect(response, isA<models.Error>());
    });

    test('test method layoutDestroy()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.layoutDestroy(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method layoutShow()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.layoutShow(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method layoutUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.layoutUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method libraryIndex()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.libraryIndex();
      expect(response, isA<models.Error>());
    });

    test('test method messageIndex()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.messageIndex();
      expect(response, isA<models.Error>());
    });

    test('test method messageShow()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.messageShow(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method sendPreview()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.sendPreview(
        channel: '',
        template: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method erasureStore()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.erasureStore(
        address: '',
        channel: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method pushSubscriptionDestroy()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.pushSubscriptionDestroy(
        endpoint: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method pushSubscriptionIndex()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.pushSubscriptionIndex(
        subscriberId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method pushSubscriptionStore()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.pushSubscriptionStore(
        endpoint: 'https://example.com',
        keys: {},
        subscriberId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method sendSend()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.sendSend(
        channel: '',
        template: '',
        to: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method statsIndex()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.statsIndex();
      expect(response, isA<models.Error>());
    });

    test('test method suppressionIndex()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.suppressionIndex();
      expect(response, isA<models.Error>());
    });

    test('test method suppressionStore()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.suppressionStore(
        address: '',
        channel: '',
        reason: enums.Reason.hardBounce,
      );
      expect(response, isA<models.Error>());
    });

    test('test method suppressionDestroy()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.suppressionDestroy(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method suppressionShow()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.suppressionShow(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method templateIndex()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.templateIndex();
      expect(response, isA<models.Error>());
    });

    test('test method templateStore()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.templateStore(
        channel: '',
        key: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method templateDestroy()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.templateDestroy(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method templateShow()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.templateShow(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method templateUpdatePatch()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.templateUpdatePatch(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method templateUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.templateUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method templateVersionStore()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.templateVersionStore(
        templateId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method templateVersionIndex()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.templateVersionIndex(
        templateId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method templateVersionShow()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.templateVersionShow(
        templateId: '',
        version: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method templateVersionRestore()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await messaging.templateVersionRestore(
        templateId: '',
        version: '',
      );
      expect(response, isA<models.Error>());
    });
  });
}

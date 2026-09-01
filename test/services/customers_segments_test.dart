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
    group('CustomersSegments test', () {
        late MockClient client;
        late CustomersSegments customersSegments;

        setUp(() {
            client = MockClient();
            customersSegments = CustomersSegments(client);
        });

        test('test method customersSegmentMembersList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentMembersList(
            );
        });

        test('test method customersSegmentMembersCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentMembersCreate(
                organizationId: '',
                segmentId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersSegmentMembersDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentMembersDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersSegmentMembersGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentMembersGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersSegmentMembersUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentMembersUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersSegmentsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentsList(
            );
        });

        test('test method customersSegmentsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentsCreate(
                code: 'key_accounts',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersSegmentsRulesRecomputeAll()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentsRulesRecomputeAll(
                data: {},
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersSegmentsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentsDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersSegmentsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersSegmentsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentsUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersSegmentsRulesPreview()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentsRulesPreview(
                segmentId: '',
                conditions: [],
            );
            expect(response, isA<models.Error>());

        });

        test('test method customersSegmentsRulesRecompute()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await customersSegments.customersSegmentsRulesRecompute(
                segmentId: '',
            );
            expect(response, isA<models.Error>());

        });

    });
}
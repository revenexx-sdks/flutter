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
    group('Tokens test', () {
        late MockClient client;
        late Tokens tokens;

        setUp(() {
            client = MockClient();
            tokens = Tokens(client);
        });

        test('test method tokensList()', () async {
            final Map<String, dynamic> data = {
                'tokens': [],
                'total': ,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tokens.tokensList(
                bucketId: '',
                fileId: '',
            );
            expect(response, isA<models.ResourceTokenList>());

        });

        test('test method tokensCreateFileToken()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                'accessedAt': '',
                'expire': '',
                'resourceId': '',
                'resourceType': '',
                'secret': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tokens.tokensCreateFileToken(
                bucketId: '',
                fileId: '',
            );
            expect(response, isA<models.ResourceToken>());

        });

        test('test method tokensDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tokens.tokensDelete(
                tokenId: '',
            );
        });

        test('test method tokensGet()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                'accessedAt': '',
                'expire': '',
                'resourceId': '',
                'resourceType': '',
                'secret': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tokens.tokensGet(
                tokenId: '',
            );
            expect(response, isA<models.ResourceToken>());

        });

        test('test method tokensUpdate()', () async {
            final Map<String, dynamic> data = {
                '\$createdAt': '',
                '\$id': '',
                'accessedAt': '',
                'expire': '',
                'resourceId': '',
                'resourceType': '',
                'secret': '',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tokens.tokensUpdate(
                tokenId: '',
            );
            expect(response, isA<models.ResourceToken>());

        });

    });
}
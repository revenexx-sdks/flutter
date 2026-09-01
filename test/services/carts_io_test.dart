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
    group('CartsIo test', () {
        late MockClient client;
        late CartsIo cartsIo;

        setUp(() {
            client = MockClient();
            cartsIo = CartsIo(client);
        });

        test('test method cartsImport()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await cartsIo.cartsImport(
            );
            expect(response, isA<models.Error>());

        });

        test('test method cartsIoProfilesList()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await cartsIo.cartsIoProfilesList(
            );
            expect(response, isA<models.Error>());

        });

        test('test method cartsIoProfilesCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await cartsIo.cartsIoProfilesCreate(
                direction: enums.CartIoDirection.ximport,
                name: 'cart-export-csv',
            );
            expect(response, isA<models.Error>());

        });

        test('test method cartsIoProfilesDefaults()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await cartsIo.cartsIoProfilesDefaults(
            );
        });

        test('test method cartsIoProfilesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await cartsIo.cartsIoProfilesDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method cartsIoProfilesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await cartsIo.cartsIoProfilesGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method cartsIoProfilesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await cartsIo.cartsIoProfilesUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method cartsExport()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await cartsIo.cartsExport(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

    });
}
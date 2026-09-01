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
    group('InventoriesReservations test', () {
        late MockClient client;
        late InventoriesReservations inventoriesReservations;

        setUp(() {
            client = MockClient();
            inventoriesReservations = InventoriesReservations(client);
        });

        test('test method inventoriesCommit()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventoriesReservations.inventoriesCommit(
                orderRef: 'SO-2026-000123',
            );
            expect(response, isA<models.Error>());

        });

        test('test method inventoriesRelease()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventoriesReservations.inventoriesRelease(
                orderRef: 'SO-2026-000123',
            );
            expect(response, isA<models.Error>());

        });

        test('test method inventoriesReservationsList()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventoriesReservations.inventoriesReservationsList(
            );
            expect(response, isA<models.Error>());

        });

        test('test method inventoriesReservationsSweep()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventoriesReservations.inventoriesReservationsSweep(
                data: {},
            );
            expect(response, isA<models.ReservationSweepResult>());

        });

        test('test method inventoriesReservationsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventoriesReservations.inventoriesReservationsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method inventoriesReserve()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventoriesReservations.inventoriesReserve(
                orderRef: 'SO-2026-000123',
            );
            expect(response, isA<models.Error>());

        });

    });
}
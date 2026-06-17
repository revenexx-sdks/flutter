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
    group('Inventories test', () {
        late MockClient client;
        late Inventories inventories;

        setUp(() {
            client = MockClient();
            inventories = Inventories(client);
        });

        test('test method inventoriesAdjust()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesAdjust(
                items: [],
                reason: '',
            );
        });

        test('test method inventoriesAvailability()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesAvailability(
                items: [],
            );
        });

        test('test method inventoriesCommit()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesCommit(
                orderRef: '',
            );
        });

        test('test method inventoriesLocationsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesLocationsList(
            );
        });

        test('test method inventoriesLocationsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesLocationsCreate(
                code: '',
                name: '',
            );
            expect(response, isA<models.Location>());

        });

        test('test method inventoriesLocationsDefaults()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesLocationsDefaults(
            );
        });

        test('test method inventoriesLocationsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesLocationsDelete(
                id: '',
            );
        });

        test('test method inventoriesLocationsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesLocationsGet(
                id: '',
            );
            expect(response, isA<models.Location>());

        });

        test('test method inventoriesLocationsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesLocationsUpdate(
                id: '',
            );
            expect(response, isA<models.Location>());

        });

        test('test method inventoriesMovementsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesMovementsList(
            );
        });

        test('test method inventoriesMovementsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesMovementsGet(
                id: '',
            );
            expect(response, isA<models.StockMovement>());

        });

        test('test method inventoriesReceive()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesReceive(
                items: [],
            );
        });

        test('test method inventoriesRelease()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesRelease(
                orderRef: '',
            );
        });

        test('test method inventoriesReservationsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesReservationsList(
            );
        });

        test('test method inventoriesReservationsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesReservationsGet(
                id: '',
            );
            expect(response, isA<models.Reservation>());

        });

        test('test method inventoriesReserve()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesReserve(
                items: [],
                orderRef: '',
            );
        });

        test('test method inventoriesRestock()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesRestock(
                items: [],
            );
        });

        test('test method inventoriesStockList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesStockList(
            );
        });

        test('test method inventoriesStockCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesStockCreate(
                locationId: '',
            );
            expect(response, isA<models.StockLevel>());

        });

        test('test method inventoriesStockDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesStockDelete(
                id: '',
            );
        });

        test('test method inventoriesStockGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesStockGet(
                id: '',
            );
            expect(response, isA<models.StockLevel>());

        });

        test('test method inventoriesStockUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await inventories.inventoriesStockUpdate(
                id: '',
            );
            expect(response, isA<models.StockLevel>());

        });

    });
}
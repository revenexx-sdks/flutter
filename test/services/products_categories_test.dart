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
    group('ProductsCategories test', () {
        late MockClient client;
        late ProductsCategories productsCategories;

        setUp(() {
            client = MockClient();
            productsCategories = ProductsCategories(client);
        });

        test('test method productsCategoriesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsCategoriesList(
            );
        });

        test('test method productsCategoriesCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsCategoriesCreate(
                code: 'cordless_drills',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsCategoriesRulesRecomputeAll()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsCategoriesRulesRecomputeAll(
                data: {},
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsCategoriesRulesPreview()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsCategoriesRulesPreview(
                categoryId: '',
                conditions: [],
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsCategoriesRulesRecompute()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsCategoriesRulesRecompute(
                categoryId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsCategoriesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsCategoriesDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsCategoriesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsCategoriesGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsCategoriesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsCategoriesUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsProductCategoriesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsProductCategoriesList(
            );
        });

        test('test method productsProductCategoriesCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsProductCategoriesCreate(
                categoryId: '',
                productId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsProductCategoriesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsProductCategoriesDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsProductCategoriesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsProductCategoriesGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsProductCategoriesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsProductCategoriesUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsCategoriesAssign()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsCategories.productsCategoriesAssign(
                id: '',
                categoryId: '',
            );
            expect(response, isA<models.Error>());

        });

    });
}
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
    group('ProductsDataModel test', () {
        late MockClient client;
        late ProductsDataModel productsDataModel;

        setUp(() {
            client = MockClient();
            productsDataModel = ProductsDataModel(client);
        });

        test('test method productsAssetFamiliesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAssetFamiliesList(
            );
        });

        test('test method productsAssetFamiliesCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAssetFamiliesCreate(
                code: 'packshots',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAssetFamiliesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAssetFamiliesDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAssetFamiliesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAssetFamiliesGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAssetFamiliesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAssetFamiliesUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAssociationTypesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAssociationTypesList(
            );
        });

        test('test method productsAssociationTypesCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAssociationTypesCreate(
                code: 'cross_sell',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAssociationTypesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAssociationTypesDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAssociationTypesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAssociationTypesGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAssociationTypesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAssociationTypesUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributeSchema()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributeSchema(
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributeGroupsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributeGroupsList(
            );
        });

        test('test method productsAttributeGroupsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributeGroupsCreate(
                code: 'technical_attributes',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributeGroupsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributeGroupsDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributeGroupsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributeGroupsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributeGroupsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributeGroupsUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributeOptionsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributeOptionsList(
            );
        });

        test('test method productsAttributeOptionsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributeOptionsCreate(
                attributeId: '',
                code: 'stainless_steel',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributeOptionsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributeOptionsDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributeOptionsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributeOptionsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributeOptionsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributeOptionsUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributesList(
            );
        });

        test('test method productsAttributesCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributesCreate(
                code: 'net_weight',
                type: 'select',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributesDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributesGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsAttributesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsAttributesUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsFamiliesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamiliesList(
            );
        });

        test('test method productsFamiliesCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamiliesCreate(
                code: 'power_tools',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsFamiliesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamiliesDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsFamiliesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamiliesGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsFamiliesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamiliesUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsFamilyAttributesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamilyAttributesList(
            );
        });

        test('test method productsFamilyAttributesCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamilyAttributesCreate(
                attributeId: '',
                familyId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsFamilyAttributesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamilyAttributesDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsFamilyAttributesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamilyAttributesGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsFamilyAttributesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamilyAttributesUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsFamilyVariantsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamilyVariantsList(
            );
        });

        test('test method productsFamilyVariantsCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamilyVariantsCreate(
                code: 'clothing_by_colour_size',
                familyId: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsFamilyVariantsDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamilyVariantsDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsFamilyVariantsGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamilyVariantsGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsFamilyVariantsUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsFamilyVariantsUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsMeasurementFamiliesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsMeasurementFamiliesList(
            );
        });

        test('test method productsMeasurementFamiliesCreate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsMeasurementFamiliesCreate(
                code: 'weight',
                standardUnit: 'kilogram',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsMeasurementFamiliesDelete()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsMeasurementFamiliesDelete(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsMeasurementFamiliesGet()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsMeasurementFamiliesGet(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

        test('test method productsMeasurementFamiliesUpdate()', () async {
            final Map<String, dynamic> data = {
                'error': '',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await productsDataModel.productsMeasurementFamiliesUpdate(
                id: '',
            );
            expect(response, isA<models.Error>());

        });

    });
}
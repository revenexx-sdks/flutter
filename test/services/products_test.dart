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
    group('Products test', () {
        late MockClient client;
        late Products products;

        setUp(() {
            client = MockClient();
            products = Products(client);
        });

        test('test method productsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsList(
            );
        });

        test('test method productsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsCreate(
                sku: '',
            );
            expect(response, isA<models.Products>());

        });

        test('test method productsAssetFamiliesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssetFamiliesList(
            );
        });

        test('test method productsAssetFamiliesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssetFamiliesCreate(
                code: '',
            );
            expect(response, isA<models.AssetFamilies>());

        });

        test('test method productsAssetFamiliesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssetFamiliesDelete(
                id: '',
            );
        });

        test('test method productsAssetFamiliesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssetFamiliesGet(
                id: '',
            );
            expect(response, isA<models.AssetFamilies>());

        });

        test('test method productsAssetFamiliesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssetFamiliesUpdate(
                id: '',
            );
            expect(response, isA<models.AssetFamilies>());

        });

        test('test method productsAssetsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssetsList(
            );
        });

        test('test method productsAssetsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssetsCreate(
                assetFamilyId: '',
                code: '',
            );
            expect(response, isA<models.Assets>());

        });

        test('test method productsAssetsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssetsDelete(
                id: '',
            );
        });

        test('test method productsAssetsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssetsGet(
                id: '',
            );
            expect(response, isA<models.Assets>());

        });

        test('test method productsAssetsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssetsUpdate(
                id: '',
            );
            expect(response, isA<models.Assets>());

        });

        test('test method productsAssociationTypesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssociationTypesList(
            );
        });

        test('test method productsAssociationTypesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssociationTypesCreate(
                code: '',
            );
            expect(response, isA<models.AssociationTypes>());

        });

        test('test method productsAssociationTypesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssociationTypesDelete(
                id: '',
            );
        });

        test('test method productsAssociationTypesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssociationTypesGet(
                id: '',
            );
            expect(response, isA<models.AssociationTypes>());

        });

        test('test method productsAssociationTypesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAssociationTypesUpdate(
                id: '',
            );
            expect(response, isA<models.AssociationTypes>());

        });

        test('test method productsAttributeGroupsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributeGroupsList(
            );
        });

        test('test method productsAttributeGroupsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributeGroupsCreate(
                code: '',
            );
            expect(response, isA<models.AttributeGroups>());

        });

        test('test method productsAttributeGroupsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributeGroupsDelete(
                id: '',
            );
        });

        test('test method productsAttributeGroupsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributeGroupsGet(
                id: '',
            );
            expect(response, isA<models.AttributeGroups>());

        });

        test('test method productsAttributeGroupsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributeGroupsUpdate(
                id: '',
            );
            expect(response, isA<models.AttributeGroups>());

        });

        test('test method productsAttributeOptionsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributeOptionsList(
            );
        });

        test('test method productsAttributeOptionsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributeOptionsCreate(
                attributeId: '',
                code: '',
            );
            expect(response, isA<models.AttributeOptions>());

        });

        test('test method productsAttributeOptionsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributeOptionsDelete(
                id: '',
            );
        });

        test('test method productsAttributeOptionsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributeOptionsGet(
                id: '',
            );
            expect(response, isA<models.AttributeOptions>());

        });

        test('test method productsAttributeOptionsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributeOptionsUpdate(
                id: '',
            );
            expect(response, isA<models.AttributeOptions>());

        });

        test('test method productsAttributesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributesList(
            );
        });

        test('test method productsAttributesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributesCreate(
                code: '',
                type: '',
            );
            expect(response, isA<models.Attributes>());

        });

        test('test method productsAttributesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributesDelete(
                id: '',
            );
        });

        test('test method productsAttributesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributesGet(
                id: '',
            );
            expect(response, isA<models.Attributes>());

        });

        test('test method productsAttributesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsAttributesUpdate(
                id: '',
            );
            expect(response, isA<models.Attributes>());

        });

        test('test method productsBatch()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsBatch(
            );
        });

        test('test method productsCategoriesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsCategoriesList(
            );
        });

        test('test method productsCategoriesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsCategoriesCreate(
                code: '',
            );
            expect(response, isA<models.Categories>());

        });

        test('test method productsCategoriesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsCategoriesDelete(
                id: '',
            );
        });

        test('test method productsCategoriesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsCategoriesGet(
                id: '',
            );
            expect(response, isA<models.Categories>());

        });

        test('test method productsCategoriesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsCategoriesUpdate(
                id: '',
            );
            expect(response, isA<models.Categories>());

        });

        test('test method productsFamiliesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamiliesList(
            );
        });

        test('test method productsFamiliesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamiliesCreate(
                code: '',
            );
            expect(response, isA<models.Families>());

        });

        test('test method productsFamiliesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamiliesDelete(
                id: '',
            );
        });

        test('test method productsFamiliesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamiliesGet(
                id: '',
            );
            expect(response, isA<models.Families>());

        });

        test('test method productsFamiliesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamiliesUpdate(
                id: '',
            );
            expect(response, isA<models.Families>());

        });

        test('test method productsFamilyAttributesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamilyAttributesList(
            );
        });

        test('test method productsFamilyAttributesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamilyAttributesCreate(
                attributeId: '',
                familyId: '',
            );
            expect(response, isA<models.FamilyAttributes>());

        });

        test('test method productsFamilyAttributesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamilyAttributesDelete(
                id: '',
            );
        });

        test('test method productsFamilyAttributesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamilyAttributesGet(
                id: '',
            );
            expect(response, isA<models.FamilyAttributes>());

        });

        test('test method productsFamilyAttributesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamilyAttributesUpdate(
                id: '',
            );
            expect(response, isA<models.FamilyAttributes>());

        });

        test('test method productsFamilyVariantsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamilyVariantsList(
            );
        });

        test('test method productsFamilyVariantsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamilyVariantsCreate(
                code: '',
                familyId: '',
            );
            expect(response, isA<models.FamilyVariants>());

        });

        test('test method productsFamilyVariantsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamilyVariantsDelete(
                id: '',
            );
        });

        test('test method productsFamilyVariantsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamilyVariantsGet(
                id: '',
            );
            expect(response, isA<models.FamilyVariants>());

        });

        test('test method productsFamilyVariantsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsFamilyVariantsUpdate(
                id: '',
            );
            expect(response, isA<models.FamilyVariants>());

        });

        test('test method productsMeasurementFamiliesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsMeasurementFamiliesList(
            );
        });

        test('test method productsMeasurementFamiliesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsMeasurementFamiliesCreate(
                code: '',
                standardUnit: '',
            );
            expect(response, isA<models.MeasurementFamilies>());

        });

        test('test method productsMeasurementFamiliesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsMeasurementFamiliesDelete(
                id: '',
            );
        });

        test('test method productsMeasurementFamiliesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsMeasurementFamiliesGet(
                id: '',
            );
            expect(response, isA<models.MeasurementFamilies>());

        });

        test('test method productsMeasurementFamiliesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsMeasurementFamiliesUpdate(
                id: '',
            );
            expect(response, isA<models.MeasurementFamilies>());

        });

        test('test method productsProductAssociationsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsProductAssociationsList(
            );
        });

        test('test method productsProductAssociationsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsProductAssociationsCreate(
                associationTypeId: '',
                productId: '',
                targetProductId: '',
            );
            expect(response, isA<models.ProductAssociations>());

        });

        test('test method productsProductAssociationsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsProductAssociationsDelete(
                id: '',
            );
        });

        test('test method productsProductAssociationsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsProductAssociationsGet(
                id: '',
            );
            expect(response, isA<models.ProductAssociations>());

        });

        test('test method productsProductAssociationsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsProductAssociationsUpdate(
                id: '',
            );
            expect(response, isA<models.ProductAssociations>());

        });

        test('test method productsProductCategoriesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsProductCategoriesList(
            );
        });

        test('test method productsProductCategoriesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsProductCategoriesCreate(
                categoryId: '',
                productId: '',
            );
            expect(response, isA<models.ProductCategories>());

        });

        test('test method productsProductCategoriesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsProductCategoriesDelete(
                id: '',
            );
        });

        test('test method productsProductCategoriesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsProductCategoriesGet(
                id: '',
            );
            expect(response, isA<models.ProductCategories>());

        });

        test('test method productsProductCategoriesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsProductCategoriesUpdate(
                id: '',
            );
            expect(response, isA<models.ProductCategories>());

        });

        test('test method productsReferenceEntitiesList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsReferenceEntitiesList(
            );
        });

        test('test method productsReferenceEntitiesCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsReferenceEntitiesCreate(
                code: '',
            );
            expect(response, isA<models.ReferenceEntities>());

        });

        test('test method productsReferenceEntitiesDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsReferenceEntitiesDelete(
                id: '',
            );
        });

        test('test method productsReferenceEntitiesGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsReferenceEntitiesGet(
                id: '',
            );
            expect(response, isA<models.ReferenceEntities>());

        });

        test('test method productsReferenceEntitiesUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsReferenceEntitiesUpdate(
                id: '',
            );
            expect(response, isA<models.ReferenceEntities>());

        });

        test('test method productsReferenceEntityRecordsList()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsReferenceEntityRecordsList(
            );
        });

        test('test method productsReferenceEntityRecordsCreate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsReferenceEntityRecordsCreate(
                code: '',
                referenceEntityId: '',
            );
            expect(response, isA<models.ReferenceEntityRecords>());

        });

        test('test method productsReferenceEntityRecordsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsReferenceEntityRecordsDelete(
                id: '',
            );
        });

        test('test method productsReferenceEntityRecordsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsReferenceEntityRecordsGet(
                id: '',
            );
            expect(response, isA<models.ReferenceEntityRecords>());

        });

        test('test method productsReferenceEntityRecordsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsReferenceEntityRecordsUpdate(
                id: '',
            );
            expect(response, isA<models.ReferenceEntityRecords>());

        });

        test('test method productsDelete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsDelete(
                id: '',
            );
        });

        test('test method productsGet()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsGet(
                id: '',
            );
            expect(response, isA<models.Products>());

        });

        test('test method productsUpdate()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await products.productsUpdate(
                id: '',
            );
            expect(response, isA<models.Products>());

        });

    });
}
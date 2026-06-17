part of '../revenexx.dart';

class Products extends Service {
  /// Initializes a [Products] service
  Products(super.client);

  Future productsList() async {
    const String apiPath = '/v1/products';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Products> productsCreate({required String sku, Map? attributeValues, Map? completeness, String? deletedAt, bool? enabled, String? familyId, String? familyVariantId, String? kind, String? parentId, Map? quantifiedAssociations, String? taxClass}) async {
    const String apiPath = '/v1/products';

        final Map<String, dynamic> apiParams = {
            if (attributeValues != null) 'attribute_values': attributeValues,

            'completeness': completeness,

            'deleted_at': deletedAt,

            if (enabled != null) 'enabled': enabled,

            'family_id': familyId,

            'family_variant_id': familyVariantId,

            if (kind != null) 'kind': kind,

            'parent_id': parentId,

            'quantified_associations': quantifiedAssociations,

            'sku': sku,

            'tax_class': taxClass,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Products.fromMap(res.data);

  }

  Future productsAssetFamiliesList() async {
    const String apiPath = '/v1/products/asset_families';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.AssetFamilies> productsAssetFamiliesCreate({required String code, Map? labels, Map? namingConvention}) async {
    const String apiPath = '/v1/products/asset_families';

        final Map<String, dynamic> apiParams = {
            'code': code,

            'labels': labels,

            'naming_convention': namingConvention,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AssetFamilies.fromMap(res.data);

  }

  Future productsAssetFamiliesDelete({required String id}) async {
    final String apiPath = '/v1/products/asset_families/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.AssetFamilies> productsAssetFamiliesGet({required String id}) async {
    final String apiPath = '/v1/products/asset_families/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AssetFamilies.fromMap(res.data);

  }

  Future<models.AssetFamilies> productsAssetFamiliesUpdate({required String id, String? code, Map? labels, Map? namingConvention}) async {
    final String apiPath = '/v1/products/asset_families/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            'labels': labels,

            'naming_convention': namingConvention,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AssetFamilies.fromMap(res.data);

  }

  Future productsAssetsList() async {
    const String apiPath = '/v1/products/assets';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Assets> productsAssetsCreate({required String assetFamilyId, required String code, Map? attributeValues, String? mediaUuid}) async {
    const String apiPath = '/v1/products/assets';

        final Map<String, dynamic> apiParams = {
            'asset_family_id': assetFamilyId,

            if (attributeValues != null) 'attribute_values': attributeValues,

            'code': code,

            'media_uuid': mediaUuid,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Assets.fromMap(res.data);

  }

  Future productsAssetsDelete({required String id}) async {
    final String apiPath = '/v1/products/assets/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Assets> productsAssetsGet({required String id}) async {
    final String apiPath = '/v1/products/assets/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Assets.fromMap(res.data);

  }

  Future<models.Assets> productsAssetsUpdate({required String id, String? assetFamilyId, Map? attributeValues, String? code, String? mediaUuid}) async {
    final String apiPath = '/v1/products/assets/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (assetFamilyId != null) 'asset_family_id': assetFamilyId,

            if (attributeValues != null) 'attribute_values': attributeValues,

            if (code != null) 'code': code,

            'media_uuid': mediaUuid,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Assets.fromMap(res.data);

  }

  Future productsAssociationTypesList() async {
    const String apiPath = '/v1/products/association_types';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.AssociationTypes> productsAssociationTypesCreate({required String code, bool? isQuantified, bool? isTwoWay, Map? labels}) async {
    const String apiPath = '/v1/products/association_types';

        final Map<String, dynamic> apiParams = {
            'code': code,

            if (isQuantified != null) 'is_quantified': isQuantified,

            if (isTwoWay != null) 'is_two_way': isTwoWay,

            'labels': labels,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AssociationTypes.fromMap(res.data);

  }

  Future productsAssociationTypesDelete({required String id}) async {
    final String apiPath = '/v1/products/association_types/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.AssociationTypes> productsAssociationTypesGet({required String id}) async {
    final String apiPath = '/v1/products/association_types/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AssociationTypes.fromMap(res.data);

  }

  Future<models.AssociationTypes> productsAssociationTypesUpdate({required String id, String? code, bool? isQuantified, bool? isTwoWay, Map? labels}) async {
    final String apiPath = '/v1/products/association_types/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            if (isQuantified != null) 'is_quantified': isQuantified,

            if (isTwoWay != null) 'is_two_way': isTwoWay,

            'labels': labels,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AssociationTypes.fromMap(res.data);

  }

  Future productsAttributeGroupsList() async {
    const String apiPath = '/v1/products/attribute_groups';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.AttributeGroups> productsAttributeGroupsCreate({required String code, Map? labels, int? position}) async {
    const String apiPath = '/v1/products/attribute_groups';

        final Map<String, dynamic> apiParams = {
            'code': code,

            'labels': labels,

            if (position != null) 'position': position,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeGroups.fromMap(res.data);

  }

  Future productsAttributeGroupsDelete({required String id}) async {
    final String apiPath = '/v1/products/attribute_groups/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.AttributeGroups> productsAttributeGroupsGet({required String id}) async {
    final String apiPath = '/v1/products/attribute_groups/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeGroups.fromMap(res.data);

  }

  Future<models.AttributeGroups> productsAttributeGroupsUpdate({required String id, String? code, Map? labels, int? position}) async {
    final String apiPath = '/v1/products/attribute_groups/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            'labels': labels,

            if (position != null) 'position': position,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeGroups.fromMap(res.data);

  }

  Future productsAttributeOptionsList() async {
    const String apiPath = '/v1/products/attribute_options';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.AttributeOptions> productsAttributeOptionsCreate({required String attributeId, required String code, Map? labels, int? position, Map? swatch}) async {
    const String apiPath = '/v1/products/attribute_options';

        final Map<String, dynamic> apiParams = {
            'attribute_id': attributeId,

            'code': code,

            'labels': labels,

            if (position != null) 'position': position,

            'swatch': swatch,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeOptions.fromMap(res.data);

  }

  Future productsAttributeOptionsDelete({required String id}) async {
    final String apiPath = '/v1/products/attribute_options/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.AttributeOptions> productsAttributeOptionsGet({required String id}) async {
    final String apiPath = '/v1/products/attribute_options/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeOptions.fromMap(res.data);

  }

  Future<models.AttributeOptions> productsAttributeOptionsUpdate({required String id, String? attributeId, String? code, Map? labels, int? position, Map? swatch}) async {
    final String apiPath = '/v1/products/attribute_options/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (attributeId != null) 'attribute_id': attributeId,

            if (code != null) 'code': code,

            'labels': labels,

            if (position != null) 'position': position,

            'swatch': swatch,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeOptions.fromMap(res.data);

  }

  Future productsAttributesList() async {
    const String apiPath = '/v1/products/attributes';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Attributes> productsAttributesCreate({required String code, required String type, Map? config, String? entityRef, String? entityType, String? groupId, bool? isFilterable, bool? isUnique, Map? labels, bool? localizable, int? position, bool? scopable, bool? usableInGrid, Map? validation}) async {
    const String apiPath = '/v1/products/attributes';

        final Map<String, dynamic> apiParams = {
            'code': code,

            'config': config,

            'entity_ref': entityRef,

            if (entityType != null) 'entity_type': entityType,

            'group_id': groupId,

            if (isFilterable != null) 'is_filterable': isFilterable,

            if (isUnique != null) 'is_unique': isUnique,

            'labels': labels,

            if (localizable != null) 'localizable': localizable,

            if (position != null) 'position': position,

            if (scopable != null) 'scopable': scopable,

            'type': type,

            if (usableInGrid != null) 'usable_in_grid': usableInGrid,

            'validation': validation,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Attributes.fromMap(res.data);

  }

  Future productsAttributesDelete({required String id}) async {
    final String apiPath = '/v1/products/attributes/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Attributes> productsAttributesGet({required String id}) async {
    final String apiPath = '/v1/products/attributes/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Attributes.fromMap(res.data);

  }

  Future<models.Attributes> productsAttributesUpdate({required String id, String? code, Map? config, String? entityRef, String? entityType, String? groupId, bool? isFilterable, bool? isUnique, Map? labels, bool? localizable, int? position, bool? scopable, String? type, bool? usableInGrid, Map? validation}) async {
    final String apiPath = '/v1/products/attributes/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            'config': config,

            'entity_ref': entityRef,

            if (entityType != null) 'entity_type': entityType,

            'group_id': groupId,

            if (isFilterable != null) 'is_filterable': isFilterable,

            if (isUnique != null) 'is_unique': isUnique,

            'labels': labels,

            if (localizable != null) 'localizable': localizable,

            if (position != null) 'position': position,

            if (scopable != null) 'scopable': scopable,

            if (type != null) 'type': type,

            if (usableInGrid != null) 'usable_in_grid': usableInGrid,

            'validation': validation,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Attributes.fromMap(res.data);

  }

  Future productsBatch({List<String>? ids, List<String>? skus}) async {
    const String apiPath = '/v1/products/batch';

        final Map<String, dynamic> apiParams = {
            if (ids != null) 'ids': ids,

            if (skus != null) 'skus': skus,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future productsCategoriesList() async {
    const String apiPath = '/v1/products/categories';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Categories> productsCategoriesCreate({required String code, Map? labels, String? parentId, String? path, int? position, Map? values}) async {
    const String apiPath = '/v1/products/categories';

        final Map<String, dynamic> apiParams = {
            'code': code,

            'labels': labels,

            'parent_id': parentId,

            'path': path,

            if (position != null) 'position': position,

            'values': values,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Categories.fromMap(res.data);

  }

  Future productsCategoriesDelete({required String id}) async {
    final String apiPath = '/v1/products/categories/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Categories> productsCategoriesGet({required String id}) async {
    final String apiPath = '/v1/products/categories/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Categories.fromMap(res.data);

  }

  Future<models.Categories> productsCategoriesUpdate({required String id, String? code, Map? labels, String? parentId, String? path, int? position, Map? values}) async {
    final String apiPath = '/v1/products/categories/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            'labels': labels,

            'parent_id': parentId,

            'path': path,

            if (position != null) 'position': position,

            'values': values,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Categories.fromMap(res.data);

  }

  Future productsFamiliesList() async {
    const String apiPath = '/v1/products/families';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Families> productsFamiliesCreate({required String code, String? imageAttribute, String? labelAttribute, Map? labels}) async {
    const String apiPath = '/v1/products/families';

        final Map<String, dynamic> apiParams = {
            'code': code,

            'image_attribute': imageAttribute,

            'label_attribute': labelAttribute,

            'labels': labels,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Families.fromMap(res.data);

  }

  Future productsFamiliesDelete({required String id}) async {
    final String apiPath = '/v1/products/families/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Families> productsFamiliesGet({required String id}) async {
    final String apiPath = '/v1/products/families/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Families.fromMap(res.data);

  }

  Future<models.Families> productsFamiliesUpdate({required String id, String? code, String? imageAttribute, String? labelAttribute, Map? labels}) async {
    final String apiPath = '/v1/products/families/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            'image_attribute': imageAttribute,

            'label_attribute': labelAttribute,

            'labels': labels,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Families.fromMap(res.data);

  }

  Future productsFamilyAttributesList() async {
    const String apiPath = '/v1/products/family_attributes';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.FamilyAttributes> productsFamilyAttributesCreate({required String attributeId, required String familyId, bool? isRequired, int? position, Map? requiredChannels}) async {
    const String apiPath = '/v1/products/family_attributes';

        final Map<String, dynamic> apiParams = {
            'attribute_id': attributeId,

            'family_id': familyId,

            if (isRequired != null) 'is_required': isRequired,

            if (position != null) 'position': position,

            'required_channels': requiredChannels,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.FamilyAttributes.fromMap(res.data);

  }

  Future productsFamilyAttributesDelete({required String id}) async {
    final String apiPath = '/v1/products/family_attributes/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.FamilyAttributes> productsFamilyAttributesGet({required String id}) async {
    final String apiPath = '/v1/products/family_attributes/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.FamilyAttributes.fromMap(res.data);

  }

  Future<models.FamilyAttributes> productsFamilyAttributesUpdate({required String id, String? attributeId, String? familyId, bool? isRequired, int? position, Map? requiredChannels}) async {
    final String apiPath = '/v1/products/family_attributes/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (attributeId != null) 'attribute_id': attributeId,

            if (familyId != null) 'family_id': familyId,

            if (isRequired != null) 'is_required': isRequired,

            if (position != null) 'position': position,

            'required_channels': requiredChannels,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.FamilyAttributes.fromMap(res.data);

  }

  Future productsFamilyVariantsList() async {
    const String apiPath = '/v1/products/family_variants';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.FamilyVariants> productsFamilyVariantsCreate({required String code, required String familyId, Map? axes, Map? labels}) async {
    const String apiPath = '/v1/products/family_variants';

        final Map<String, dynamic> apiParams = {
            'axes': axes,

            'code': code,

            'family_id': familyId,

            'labels': labels,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.FamilyVariants.fromMap(res.data);

  }

  Future productsFamilyVariantsDelete({required String id}) async {
    final String apiPath = '/v1/products/family_variants/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.FamilyVariants> productsFamilyVariantsGet({required String id}) async {
    final String apiPath = '/v1/products/family_variants/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.FamilyVariants.fromMap(res.data);

  }

  Future<models.FamilyVariants> productsFamilyVariantsUpdate({required String id, Map? axes, String? code, String? familyId, Map? labels}) async {
    final String apiPath = '/v1/products/family_variants/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'axes': axes,

            if (code != null) 'code': code,

            if (familyId != null) 'family_id': familyId,

            'labels': labels,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.FamilyVariants.fromMap(res.data);

  }

  Future productsMeasurementFamiliesList() async {
    const String apiPath = '/v1/products/measurement_families';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.MeasurementFamilies> productsMeasurementFamiliesCreate({required String code, required String standardUnit, Map? labels, Map? units}) async {
    const String apiPath = '/v1/products/measurement_families';

        final Map<String, dynamic> apiParams = {
            'code': code,

            'labels': labels,

            'standard_unit': standardUnit,

            'units': units,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MeasurementFamilies.fromMap(res.data);

  }

  Future productsMeasurementFamiliesDelete({required String id}) async {
    final String apiPath = '/v1/products/measurement_families/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.MeasurementFamilies> productsMeasurementFamiliesGet({required String id}) async {
    final String apiPath = '/v1/products/measurement_families/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MeasurementFamilies.fromMap(res.data);

  }

  Future<models.MeasurementFamilies> productsMeasurementFamiliesUpdate({required String id, String? code, Map? labels, String? standardUnit, Map? units}) async {
    final String apiPath = '/v1/products/measurement_families/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            'labels': labels,

            if (standardUnit != null) 'standard_unit': standardUnit,

            'units': units,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MeasurementFamilies.fromMap(res.data);

  }

  Future productsProductAssociationsList() async {
    const String apiPath = '/v1/products/product_associations';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.ProductAssociations> productsProductAssociationsCreate({required String associationTypeId, required String productId, required String targetProductId, int? position, double? quantity}) async {
    const String apiPath = '/v1/products/product_associations';

        final Map<String, dynamic> apiParams = {
            'association_type_id': associationTypeId,

            if (position != null) 'position': position,

            'product_id': productId,

            'quantity': quantity,

            'target_product_id': targetProductId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ProductAssociations.fromMap(res.data);

  }

  Future productsProductAssociationsDelete({required String id}) async {
    final String apiPath = '/v1/products/product_associations/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.ProductAssociations> productsProductAssociationsGet({required String id}) async {
    final String apiPath = '/v1/products/product_associations/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ProductAssociations.fromMap(res.data);

  }

  Future<models.ProductAssociations> productsProductAssociationsUpdate({required String id, String? associationTypeId, int? position, String? productId, double? quantity, String? targetProductId}) async {
    final String apiPath = '/v1/products/product_associations/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (associationTypeId != null) 'association_type_id': associationTypeId,

            if (position != null) 'position': position,

            if (productId != null) 'product_id': productId,

            'quantity': quantity,

            if (targetProductId != null) 'target_product_id': targetProductId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ProductAssociations.fromMap(res.data);

  }

  Future productsProductCategoriesList() async {
    const String apiPath = '/v1/products/product_categories';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.ProductCategories> productsProductCategoriesCreate({required String categoryId, required String productId, int? position}) async {
    const String apiPath = '/v1/products/product_categories';

        final Map<String, dynamic> apiParams = {
            'category_id': categoryId,

            if (position != null) 'position': position,

            'product_id': productId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ProductCategories.fromMap(res.data);

  }

  Future productsProductCategoriesDelete({required String id}) async {
    final String apiPath = '/v1/products/product_categories/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.ProductCategories> productsProductCategoriesGet({required String id}) async {
    final String apiPath = '/v1/products/product_categories/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ProductCategories.fromMap(res.data);

  }

  Future<models.ProductCategories> productsProductCategoriesUpdate({required String id, String? categoryId, int? position, String? productId}) async {
    final String apiPath = '/v1/products/product_categories/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (categoryId != null) 'category_id': categoryId,

            if (position != null) 'position': position,

            if (productId != null) 'product_id': productId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ProductCategories.fromMap(res.data);

  }

  Future productsReferenceEntitiesList() async {
    const String apiPath = '/v1/products/reference_entities';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.ReferenceEntities> productsReferenceEntitiesCreate({required String code, String? image, Map? labels}) async {
    const String apiPath = '/v1/products/reference_entities';

        final Map<String, dynamic> apiParams = {
            'code': code,

            'image': image,

            'labels': labels,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ReferenceEntities.fromMap(res.data);

  }

  Future productsReferenceEntitiesDelete({required String id}) async {
    final String apiPath = '/v1/products/reference_entities/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.ReferenceEntities> productsReferenceEntitiesGet({required String id}) async {
    final String apiPath = '/v1/products/reference_entities/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ReferenceEntities.fromMap(res.data);

  }

  Future<models.ReferenceEntities> productsReferenceEntitiesUpdate({required String id, String? code, String? image, Map? labels}) async {
    final String apiPath = '/v1/products/reference_entities/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            'image': image,

            'labels': labels,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ReferenceEntities.fromMap(res.data);

  }

  Future productsReferenceEntityRecordsList() async {
    const String apiPath = '/v1/products/reference_entity_records';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.ReferenceEntityRecords> productsReferenceEntityRecordsCreate({required String code, required String referenceEntityId, Map? attributeValues, Map? labels}) async {
    const String apiPath = '/v1/products/reference_entity_records';

        final Map<String, dynamic> apiParams = {
            if (attributeValues != null) 'attribute_values': attributeValues,

            'code': code,

            'labels': labels,

            'reference_entity_id': referenceEntityId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ReferenceEntityRecords.fromMap(res.data);

  }

  Future productsReferenceEntityRecordsDelete({required String id}) async {
    final String apiPath = '/v1/products/reference_entity_records/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.ReferenceEntityRecords> productsReferenceEntityRecordsGet({required String id}) async {
    final String apiPath = '/v1/products/reference_entity_records/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ReferenceEntityRecords.fromMap(res.data);

  }

  Future<models.ReferenceEntityRecords> productsReferenceEntityRecordsUpdate({required String id, Map? attributeValues, String? code, Map? labels, String? referenceEntityId}) async {
    final String apiPath = '/v1/products/reference_entity_records/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (attributeValues != null) 'attribute_values': attributeValues,

            if (code != null) 'code': code,

            'labels': labels,

            if (referenceEntityId != null) 'reference_entity_id': referenceEntityId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ReferenceEntityRecords.fromMap(res.data);

  }

  Future productsDelete({required String id}) async {
    final String apiPath = '/v1/products/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Products> productsGet({required String id}) async {
    final String apiPath = '/v1/products/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Products.fromMap(res.data);

  }

  Future<models.Products> productsUpdate({required String id, Map? attributeValues, Map? completeness, String? deletedAt, bool? enabled, String? familyId, String? familyVariantId, String? kind, String? parentId, Map? quantifiedAssociations, String? sku, String? taxClass}) async {
    final String apiPath = '/v1/products/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (attributeValues != null) 'attribute_values': attributeValues,

            'completeness': completeness,

            'deleted_at': deletedAt,

            if (enabled != null) 'enabled': enabled,

            'family_id': familyId,

            'family_variant_id': familyVariantId,

            if (kind != null) 'kind': kind,

            'parent_id': parentId,

            'quantified_associations': quantifiedAssociations,

            if (sku != null) 'sku': sku,

            'tax_class': taxClass,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Products.fromMap(res.data);

  }
}
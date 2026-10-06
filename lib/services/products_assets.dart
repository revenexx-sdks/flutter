part of '../revenexx.dart';

/// The decoupled media domain: the asset rows a product&#039;s media attribute
/// points at, whether their bytes sit in this platform&#039;s object store or on
/// somebody else&#039;s host. An asset is addressed by code within its family and
/// is never linked to a product by a join table — a product references it
/// through an attribute value. The families that give assets their shape and
/// their file-naming convention live in Data model.
class ProductsAssets extends Service {
  /// Initializes a [ProductsAssets] service
  ProductsAssets(super.client);

  /// One piece of media in the decoupled asset domain. The bytes live either in
  /// this platform's object store (`source: "storage"` with a `storage_asset_id`
  /// that survives a rename) or on somebody else's host (`source: "external"`
  /// with an `external_url`), and the database enforces the pair so neither half
  /// can be stored alone. A product points at an asset by its code through a
  /// media attribute; there is no product-to-asset link table in this app.
  ///
  /// Every column of `assets` is an exact-match query parameter, `order` sorts
  /// by one column, and `limit`/`offset` page through `page.total`. A query key
  /// that is NOT a column is dropped rather than refused, and the `filter`
  /// object echoes the ones that were understood — that echo is the only way
  /// to tell an unfiltered answer from an empty one. It reads rows exactly as
  /// they are stored: no join is resolved, no jsonb value is unpacked.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future productsAssetsList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? assetFamilyId,
      String? code,
      enums.ProductsAssetsListSource? source,
      String? storageAssetId,
      String? deliveryPath,
      String? externalUrl,
      String? attributeValues,
      String? createdAt,
      String? updatedAt}) async {
    const String apiPath = '/v1/products/assets';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (assetFamilyId != null) 'asset_family_id': assetFamilyId,
      if (code != null) 'code': code,
      if (source != null) 'source': source.value,
      if (storageAssetId != null) 'storage_asset_id': storageAssetId,
      if (deliveryPath != null) 'delivery_path': deliveryPath,
      if (externalUrl != null) 'external_url': externalUrl,
      if (attributeValues != null) 'attribute_values': attributeValues,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Creates one asset and answers 201 with the stored row, including the id and
  /// the timestamps the database filled in — a client never sends an id, it
  /// reads one back and uses it in the path of every later call.
  ///
  /// One piece of media in the decoupled asset domain. The bytes live either in
  /// this platform's object store (`source: "storage"` with a `storage_asset_id`
  /// that survives a rename) or on somebody else's host (`source: "external"`
  /// with an `external_url`), and the database enforces the pair so neither half
  /// can be stored alone. A product points at an asset by its code through a
  /// media attribute; there is no product-to-asset link table in this app.
  ///
  /// `asset_family_id` and `code` are the only columns the database refuses the
  /// row without; everything else has a default or is nullable. A second row
  /// with the same `asset_family_id` and `code` answers 409. This app owns the
  /// create, because it is the only place an external URL can enter the catalog:
  /// an asset with no family falls back to the `default_asset_family` setting,
  /// and an `external` one is refused unless the tenant allows external media
  /// and the URL's host is on its allow-list.
  Future<models.Error> productsAssetsCreate(
      {required String assetFamilyId,
      required String code,
      Map? attributeValues,
      String? deliveryPath,
      String? externalUrl,
      enums.AssetsSource? source,
      String? storageAssetId}) async {
    const String apiPath = '/v1/products/assets';

    final Map<String, dynamic> apiParams = {
      'asset_family_id': assetFamilyId,
      if (attributeValues != null) 'attribute_values': attributeValues,
      'code': code,
      'delivery_path': deliveryPath,
      'external_url': externalUrl,
      if (source != null) 'source': source.value,
      'storage_asset_id': storageAssetId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deletes one asset by id. It is a hard delete — the row is gone, and the
  /// answer is a confirmation rather than a result to branch on.
  ///
  /// Nothing in this schema references it, so nothing else changes.
  ///
  /// An id no asset of this tenant carries answers 404; there is no 409, because
  /// every foreign key pointing at this entity resolves itself on delete rather
  /// than blocking one.
  Future<models.Error> productsAssetsDelete({required String id}) async {
    final String apiPath = '/v1/products/assets/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Reads one asset by its id — the whole row, every column, as it is stored.
  ///
  /// One piece of media in the decoupled asset domain. The bytes live either in
  /// this platform's object store (`source: "storage"` with a `storage_asset_id`
  /// that survives a rename) or on somebody else's host (`source: "external"`
  /// with an `external_url`), and the database enforces the pair so neither half
  /// can be stored alone. A product points at an asset by its code through a
  /// media attribute; there is no product-to-asset link table in this app.
  ///
  /// An id no asset of this tenant carries answers 404, and so does one
  /// belonging to another tenant: row-level security makes that row invisible
  /// rather than forbidden. A malformed id answers 400 before the route is
  /// reached.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsAssetsGet({required String id}) async {
    final String apiPath = '/v1/products/assets/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Updates one asset by id. A partial patch: the body names only the columns
  /// to change and every column it leaves out keeps its current value, so there
  /// is no read-modify-write and no way to blank a field by forgetting it.
  ///
  /// One piece of media in the decoupled asset domain. The bytes live either in
  /// this platform's object store (`source: "storage"` with a `storage_asset_id`
  /// that survives a rename) or on somebody else's host (`source: "external"`
  /// with an `external_url`), and the database enforces the pair so neither half
  /// can be stored alone. A product points at an asset by its code through a
  /// media attribute; there is no product-to-asset link table in this app.
  ///
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `asset_family_id` and `code` answers 409.
  Future<models.Error> productsAssetsUpdate(
      {required String id,
      String? assetFamilyId,
      Map? attributeValues,
      String? code,
      String? deliveryPath,
      String? externalUrl,
      enums.AssetsSource? source,
      String? storageAssetId}) async {
    final String apiPath = '/v1/products/assets/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (assetFamilyId != null) 'asset_family_id': assetFamilyId,
      if (attributeValues != null) 'attribute_values': attributeValues,
      if (code != null) 'code': code,
      'delivery_path': deliveryPath,
      'external_url': externalUrl,
      if (source != null) 'source': source.value,
      'storage_asset_id': storageAssetId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}

part of '../revenexx.dart';

class Carts extends Service {
  /// Initializes a [Carts] service
  Carts(super.client);

  Future cartsList() async {
    const String apiPath = '/v1/carts';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Cart> cartsCreate({String? channelId, String? contactId, String? currency, bool? isCurrent, String? marketId, Map? metadata, String? name, String? sessionKey}) async {
    const String apiPath = '/v1/carts';

        final Map<String, dynamic> apiParams = {
            'channel_id': channelId,

            'contact_id': contactId,

            'currency': currency,

            'is_current': isCurrent,

            'market_id': marketId,

            'metadata': metadata,

            'name': name,

            'session_key': sessionKey,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Cart.fromMap(res.data);

  }

  Future cartsClaim({required String contactId, required String sessionKey, String? targetCartId}) async {
    const String apiPath = '/v1/carts/claim';

        final Map<String, dynamic> apiParams = {
            'contact_id': contactId,

            'session_key': sessionKey,

            'target_cart_id': targetCartId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future cartsImport({String? contactId, String? csv, String? name, Map? payload, String? profileId, String? sessionKey, String? targetCartId}) async {
    const String apiPath = '/v1/carts/import';

        final Map<String, dynamic> apiParams = {
            'contact_id': contactId,

            if (csv != null) 'csv': csv,

            if (name != null) 'name': name,

            if (payload != null) 'payload': payload,

            'profile_id': profileId,

            if (sessionKey != null) 'session_key': sessionKey,

            'target_cart_id': targetCartId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future cartsIoProfilesList() async {
    const String apiPath = '/v1/carts/io/profiles';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.IoProfile> cartsIoProfilesCreate({required enums.CartIoDirection direction, required String name, enums.CartIoApplyMode? applyMode, enums.CartIoEntity? entity, enums.CartIoFormat? format, bool? isTemplate, Map? mapping, Map? options}) async {
    const String apiPath = '/v1/carts/io/profiles';

        final Map<String, dynamic> apiParams = {
            if (applyMode != null) 'apply_mode': applyMode.value,

            'direction': direction.value,

            if (entity != null) 'entity': entity.value,

            if (format != null) 'format': format.value,

            if (isTemplate != null) 'is_template': isTemplate,

            if (mapping != null) 'mapping': mapping,

            'name': name,

            if (options != null) 'options': options,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.IoProfile.fromMap(res.data);

  }

  Future cartsIoProfilesDefaults() async {
    const String apiPath = '/v1/carts/io/profiles/defaults';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future cartsIoProfilesDelete({required String id}) async {
    final String apiPath = '/v1/carts/io/profiles/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.IoProfile> cartsIoProfilesGet({required String id}) async {
    final String apiPath = '/v1/carts/io/profiles/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.IoProfile.fromMap(res.data);

  }

  Future<models.IoProfile> cartsIoProfilesUpdate({required String id, enums.CartIoApplyMode? applyMode, enums.CartIoDirection? direction, enums.CartIoEntity? entity, enums.CartIoFormat? format, bool? isTemplate, Map? mapping, String? name, Map? options}) async {
    final String apiPath = '/v1/carts/io/profiles/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (applyMode != null) 'apply_mode': applyMode.value,

            if (direction != null) 'direction': direction.value,

            if (entity != null) 'entity': entity.value,

            if (format != null) 'format': format.value,

            if (isTemplate != null) 'is_template': isTemplate,

            if (mapping != null) 'mapping': mapping,

            if (name != null) 'name': name,

            if (options != null) 'options': options,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.IoProfile.fromMap(res.data);

  }

  Future cartsMerge({required String sourceCartId, required String targetCartId}) async {
    const String apiPath = '/v1/carts/merge';

        final Map<String, dynamic> apiParams = {
            'source_cart_id': sourceCartId,

            'target_cart_id': targetCartId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future cartsItemsList({required String cartId}) async {
    final String apiPath = '/v1/carts/{cart_id}/items'.replaceAll('{cartId}', cartId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.CartItem> cartsItemsCreate({required String cartId, Map? configuration, String? currency, Map? metadata, String? name, int? position, String? productId, double? quantity, String? sku, Map? snapshot, double? taxRate, enums.CartItemType? type, String? unit, double? unitPrice}) async {
    final String apiPath = '/v1/carts/{cart_id}/items'.replaceAll('{cartId}', cartId);

        final Map<String, dynamic> apiParams = {
            'configuration': configuration,

            'currency': currency,

            'metadata': metadata,

            'name': name,

            'position': position,

            'product_id': productId,

            'quantity': quantity,

            'sku': sku,

            'snapshot': snapshot,

            'tax_rate': taxRate,

            if (type != null) 'type': type.value,

            'unit': unit,

            'unit_price': unitPrice,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.CartItem.fromMap(res.data);

  }

  Future cartsItemsReplace({required String cartId, required List<models.CartItemCreateRequest> items}) async {
    final String apiPath = '/v1/carts/{cart_id}/items'.replaceAll('{cartId}', cartId);

        final Map<String, dynamic> apiParams = {
            'items': items.map((p) => p.toMap()).toList(),

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future cartsItemsDelete({required String cartId, required String id}) async {
    final String apiPath = '/v1/carts/{cart_id}/items/{id}'.replaceAll('{cartId}', cartId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.CartItem> cartsItemsGet({required String cartId, required String id}) async {
    final String apiPath = '/v1/carts/{cart_id}/items/{id}'.replaceAll('{cartId}', cartId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.CartItem.fromMap(res.data);

  }

  Future<models.CartItem> cartsItemsUpdate({required String cartId, required String id, Map? configuration, String? currency, Map? metadata, String? name, int? position, String? productId, double? quantity, String? sku, Map? snapshot, double? taxRate, enums.CartItemType? type, String? unit, double? unitPrice}) async {
    final String apiPath = '/v1/carts/{cart_id}/items/{id}'.replaceAll('{cartId}', cartId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'configuration': configuration,

            'currency': currency,

            'metadata': metadata,

            'name': name,

            'position': position,

            'product_id': productId,

            'quantity': quantity,

            'sku': sku,

            'snapshot': snapshot,

            'tax_rate': taxRate,

            if (type != null) 'type': type.value,

            'unit': unit,

            'unit_price': unitPrice,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.CartItem.fromMap(res.data);

  }

  Future cartsDelete({required String id}) async {
    final String apiPath = '/v1/carts/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Cart> cartsGet({required String id}) async {
    final String apiPath = '/v1/carts/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Cart.fromMap(res.data);

  }

  Future<models.Cart> cartsUpdate({required String id, String? channelId, String? currency, String? marketId, Map? metadata, String? name}) async {
    final String apiPath = '/v1/carts/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'channel_id': channelId,

            'currency': currency,

            'market_id': marketId,

            'metadata': metadata,

            'name': name,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Cart.fromMap(res.data);

  }

  Future<models.Cart> cartsAbandon({required String id}) async {
    final String apiPath = '/v1/carts/{id}/abandon'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Cart.fromMap(res.data);

  }

  Future<models.Cart> cartsActivate({required String id}) async {
    final String apiPath = '/v1/carts/{id}/activate'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Cart.fromMap(res.data);

  }

  Future cartsExport({required String id, enums.CartExportFormat? format, String? profileId}) async {
    final String apiPath = '/v1/carts/{id}/export'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (format != null) 'format': format.value,

            'profile_id': profileId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Cart> cartsOrder({required String id, String? orderRef}) async {
    final String apiPath = '/v1/carts/{id}/order'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'order_ref': orderRef,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Cart.fromMap(res.data);

  }

  Future<models.Cart> cartsReopen({required String id}) async {
    final String apiPath = '/v1/carts/{id}/reopen'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Cart.fromMap(res.data);

  }
}
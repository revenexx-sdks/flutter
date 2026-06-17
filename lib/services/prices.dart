part of '../revenexx.dart';

class Prices extends Service {
  /// Initializes a [Prices] service
  Prices(super.client);

  Future pricesListsList() async {
    const String apiPath = '/v1/prices/lists';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.PriceList> pricesListsCreate({required String code, required String name, String? channelId, String? contactId, String? currency, String? description, bool? isDefault, Map? labels, String? marketId, Map? metadata, String? organizationId, int? priority, enums.PriceListStatus? status, bool? taxIncluded, String? validFrom, String? validUntil}) async {
    const String apiPath = '/v1/prices/lists';

        final Map<String, dynamic> apiParams = {
            'channel_id': channelId,

            'code': code,

            'contact_id': contactId,

            if (currency != null) 'currency': currency,

            'description': description,

            if (isDefault != null) 'is_default': isDefault,

            'labels': labels,

            'market_id': marketId,

            'metadata': metadata,

            'name': name,

            'organization_id': organizationId,

            if (priority != null) 'priority': priority,

            if (status != null) 'status': status.value,

            if (taxIncluded != null) 'tax_included': taxIncluded,

            'valid_from': validFrom,

            'valid_until': validUntil,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PriceList.fromMap(res.data);

  }

  Future pricesListsDefaults() async {
    const String apiPath = '/v1/prices/lists/defaults';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pricesListsDelete({required String id}) async {
    final String apiPath = '/v1/prices/lists/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.PriceList> pricesListsGet({required String id}) async {
    final String apiPath = '/v1/prices/lists/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PriceList.fromMap(res.data);

  }

  Future<models.PriceList> pricesListsUpdate({required String id, String? channelId, String? code, String? contactId, String? currency, String? description, bool? isDefault, Map? labels, String? marketId, Map? metadata, String? name, String? organizationId, int? priority, enums.PriceListStatus? status, bool? taxIncluded, String? validFrom, String? validUntil}) async {
    final String apiPath = '/v1/prices/lists/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'channel_id': channelId,

            if (code != null) 'code': code,

            'contact_id': contactId,

            if (currency != null) 'currency': currency,

            'description': description,

            if (isDefault != null) 'is_default': isDefault,

            'labels': labels,

            'market_id': marketId,

            'metadata': metadata,

            if (name != null) 'name': name,

            'organization_id': organizationId,

            if (priority != null) 'priority': priority,

            if (status != null) 'status': status.value,

            if (taxIncluded != null) 'tax_included': taxIncluded,

            'valid_from': validFrom,

            'valid_until': validUntil,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PriceList.fromMap(res.data);

  }

  Future pricesEntriesList({required String listId}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries'.replaceAll('{listId}', listId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.PriceEntry> pricesEntriesCreate({required String listId, Map? metadata, enums.PriceEntryType? priceType, String? productId, double? quantityMin, String? sku, String? unit, double? unitPrice, String? validFrom, String? validUntil}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries'.replaceAll('{listId}', listId);

        final Map<String, dynamic> apiParams = {
            'metadata': metadata,

            if (priceType != null) 'price_type': priceType.value,

            'product_id': productId,

            if (quantityMin != null) 'quantity_min': quantityMin,

            'sku': sku,

            'unit': unit,

            if (unitPrice != null) 'unit_price': unitPrice,

            'valid_from': validFrom,

            'valid_until': validUntil,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PriceEntry.fromMap(res.data);

  }

  Future pricesEntriesReplace({required String listId, required List<models.PriceEntryReplaceItem> entries}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries'.replaceAll('{listId}', listId);

        final Map<String, dynamic> apiParams = {
            'entries': entries.map((p) => p.toMap()).toList(),

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pricesEntriesBulk({required String listId, required List<models.PriceEntryReplaceItem> entries}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries/bulk'.replaceAll('{listId}', listId);

        final Map<String, dynamic> apiParams = {
            'entries': entries.map((p) => p.toMap()).toList(),

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future pricesEntriesDelete({required String listId, required String id}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries/{id}'.replaceAll('{listId}', listId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.PriceEntry> pricesEntriesGet({required String listId, required String id}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries/{id}'.replaceAll('{listId}', listId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PriceEntry.fromMap(res.data);

  }

  Future<models.PriceEntry> pricesEntriesUpdate({required String listId, required String id, Map? metadata, enums.PriceEntryType? priceType, String? productId, double? quantityMin, String? sku, String? unit, double? unitPrice, String? validFrom, String? validUntil}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries/{id}'.replaceAll('{listId}', listId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'metadata': metadata,

            if (priceType != null) 'price_type': priceType.value,

            'product_id': productId,

            if (quantityMin != null) 'quantity_min': quantityMin,

            'sku': sku,

            'unit': unit,

            if (unitPrice != null) 'unit_price': unitPrice,

            'valid_from': validFrom,

            'valid_until': validUntil,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PriceEntry.fromMap(res.data);

  }

  Future pricesResolve({required List<models.PriceResolveItem> items, String? at, String? channelId, String? contactId, String? currency, String? marketId, String? organizationId}) async {
    const String apiPath = '/v1/prices/resolve';

        final Map<String, dynamic> apiParams = {
            'at': at,

            'channel_id': channelId,

            'contact_id': contactId,

            'currency': currency,

            'items': items.map((p) => p.toMap()).toList(),

            'market_id': marketId,

            'organization_id': organizationId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }
}
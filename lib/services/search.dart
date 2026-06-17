part of '../revenexx.dart';

  /// Read-only full-text search over the tenant&#039;s installed collections.
class Search extends Service {
  /// Initializes a [Search] service
  Search(super.client);

  /// The collections the tenant's installed apps have provisioned.
  Future searchListCollections() async {
    const String apiPath = '/v1/search/collections';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Full-text search within one collection using Typesense query parameters as
  /// the query string.
  Future searchSearchDocumentsGet({required enums.Collection collection, String? q, String? queryBy, String? filterBy, String? sortBy, int? page, int? perPage}) async {
    final String apiPath = '/v1/search/collections/{collection}/documents/search'.replaceAll('{collection}', collection.value);

        final Map<String, dynamic> apiParams = {
            if (q != null) 'q': q,

            if (queryBy != null) 'query_by': queryBy,

            if (filterBy != null) 'filter_by': filterBy,

            if (sortBy != null) 'sort_by': sortBy,

            if (page != null) 'page': page,

            if (perPage != null) 'per_page': perPage,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Full-text search within one collection. The body holds Typesense search
  /// parameters.
  Future searchSearchDocuments({required enums.Collection collection, String? facetBy, String? filterBy, int? page, int? perPage, String? q, String? queryBy, String? sortBy}) async {
    final String apiPath = '/v1/search/collections/{collection}/documents/search'.replaceAll('{collection}', collection.value);

        final Map<String, dynamic> apiParams = {
            if (facetBy != null) 'facet_by': facetBy,

            if (filterBy != null) 'filter_by': filterBy,

            if (page != null) 'page': page,

            if (perPage != null) 'per_page': perPage,

            if (q != null) 'q': q,

            if (queryBy != null) 'query_by': queryBy,

            if (sortBy != null) 'sort_by': sortBy,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Fetch a single document by id from a collection the tenant has installed.
  Future searchGetDocument({required enums.Collection collection, required String documentId}) async {
    final String apiPath = '/v1/search/collections/{collection}/documents/{documentId}'.replaceAll('{collection}', collection.value).replaceAll('{documentId}', documentId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Run several searches in one request (the InstantSearch adapter uses this).
  /// Each entry names its collection.
  Future searchMultiSearch({required List<Map> searches}) async {
    const String apiPath = '/v1/search/multi_search';

        final Map<String, dynamic> apiParams = {
            'searches': searches,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }
}
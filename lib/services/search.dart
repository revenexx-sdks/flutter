part of '../revenexx.dart';

  /// Read-only full-text search over the tenant&#039;s installed collections.
class Search extends Service {
  /// Initializes a [Search] service
  Search(super.client);

  /// The collections the tenant's installed apps have provisioned. Available on
  /// the API-gateway-trust path only — a `revx_` key authorises a single
  /// collection, so discovery is a gateway concern and a key-authenticated
  /// caller gets 403.
  Future<models.Error> searchListCollections() async {
    const String apiPath = '/v1/search/collections';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Returns the Typesense collection definition (fields, defaults, document
  /// count). Requires the `collections:read` action.
  Future<models.Error> searchGetCollection({required enums.Collection collection}) async {
    final String apiPath = '/v1/search/collections/{collection}'.replaceAll('{collection}', collection.value);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Full-text search within one collection. Typesense search parameters are
  /// passed through verbatim as the query string, so parameters not listed here
  /// still reach Typesense. Requires the `documents:search` action.
  Future<models.Error> searchSearchDocumentsGet({required enums.Collection collection, String? q, String? queryBy, String? filterBy, String? sortBy, String? facetBy, int? maxFacetValues, String? groupBy, String? includeFields, String? excludeFields, String? highlightFullFields, int? numTypos, String? prefix, int? page, int? perPage}) async {
    final String apiPath = '/v1/search/collections/{collection}/documents/search'.replaceAll('{collection}', collection.value);

        final Map<String, dynamic> apiParams = {
            if (q != null) 'q': q,

            if (queryBy != null) 'query_by': queryBy,

            if (filterBy != null) 'filter_by': filterBy,

            if (sortBy != null) 'sort_by': sortBy,

            if (facetBy != null) 'facet_by': facetBy,

            if (maxFacetValues != null) 'max_facet_values': maxFacetValues,

            if (groupBy != null) 'group_by': groupBy,

            if (includeFields != null) 'include_fields': includeFields,

            if (excludeFields != null) 'exclude_fields': excludeFields,

            if (highlightFullFields != null) 'highlight_full_fields': highlightFullFields,

            if (numTypos != null) 'num_typos': numTypos,

            if (prefix != null) 'prefix': prefix,

            if (page != null) 'page': page,

            if (perPage != null) 'per_page': perPage,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Full-text search within one collection, with the Typesense search
  /// parameters in the body. Requires the `documents:search` action.
  Future<models.Error> searchSearchDocuments({required enums.Collection collection, String? excludeFields, String? facetBy, String? filterBy, String? groupBy, String? highlightFullFields, String? includeFields, int? maxFacetValues, int? numTypos, int? page, int? perPage, String? prefix, String? q, String? queryBy, String? sortBy}) async {
    final String apiPath = '/v1/search/collections/{collection}/documents/search'.replaceAll('{collection}', collection.value);

        final Map<String, dynamic> apiParams = {
            if (excludeFields != null) 'exclude_fields': excludeFields,

            if (facetBy != null) 'facet_by': facetBy,

            if (filterBy != null) 'filter_by': filterBy,

            if (groupBy != null) 'group_by': groupBy,

            if (highlightFullFields != null) 'highlight_full_fields': highlightFullFields,

            if (includeFields != null) 'include_fields': includeFields,

            if (maxFacetValues != null) 'max_facet_values': maxFacetValues,

            if (numTypos != null) 'num_typos': numTypos,

            if (page != null) 'page': page,

            if (perPage != null) 'per_page': perPage,

            if (prefix != null) 'prefix': prefix,

            if (q != null) 'q': q,

            if (queryBy != null) 'query_by': queryBy,

            if (sortBy != null) 'sort_by': sortBy,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Fetch a single document by id. The document shape is the collection's own
  /// schema, so it is described as a free-form object. Requires the
  /// `documents:get` action.
  Future<models.Error> searchGetDocument({required enums.Collection collection, required String documentId}) async {
    final String apiPath = '/v1/search/collections/{collection}/documents/{documentId}'.replaceAll('{collection}', collection.value).replaceAll('{documentId}', documentId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Idempotent, and bounded by the tenant's own configuration: it can add
  /// no field for an attribute the tenant has not marked `is_filterable`,
  /// and drops only fields whose attribute it has itself un-marked. A run
  /// that changes nothing makes zero calls to Typesense.
  /// 
  /// Body (optional) narrows the sweep to one app:
  /// 
  ///     {"vendor": "revenexx", "app": "products"}
  /// 
  /// Omitted, every app the tenant has installed is swept. Apps outside the
  /// facet-sync allowlist are included in the response with
  /// `skipped: app_not_enabled` rather than silently dropped — a caller
  /// asking for an app that cannot have facets deserves to be told so.
  /// 
  /// The response shape below is DECLARED rather than inferred. Its entries
  /// are built by spreading AttributeFacetSyncer::syncForCollection()'s
  /// summary, and the generator cannot see through an array spread: left to
  /// itself it emits an unnamed property and a null in `required`, which
  /// Spectral rejects as `"1" property must be string`.
  /// AppController::resyncFacets() carries the same declaration for the same
  /// reason — keep both in step with syncForApp()'s return type.
  Future gatewayFacetResync({String? app, String? vendor}) async {
    const String apiPath = '/v1/search/facets/resync';

        final Map<String, dynamic> apiParams = {
            if (app != null) 'app': app,

            if (vendor != null) 'vendor': vendor,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Run several searches in one round trip — the endpoint the typesense-js
  /// `multiSearch` helper and the InstantSearch adapter use for every query. On
  /// the gateway-trust path each entry must name a collection the tenant owns.
  /// With a `revx_` key `collection_name` is optional and is forced to the key's
  /// own collection. Requires the `documents:search` action.
  Future<models.Error> searchMultiSearch({required List<models.MultiSearchEntry> searches}) async {
    const String apiPath = '/v1/search/multi_search';

        final Map<String, dynamic> apiParams = {
            'searches': searches.map((p) => p.toMap()).toList(),

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }
}
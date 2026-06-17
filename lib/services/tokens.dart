part of '../revenexx.dart';

  /// Short-lived file access tokens.
class Tokens extends Service {
  /// Initializes a [Tokens] service
  Tokens(super.client);

  /// List all the tokens created for a specific file or bucket. You can use the
  /// query params to filter your results.
  Future<models.ResourceTokenList> tokensList({required String bucketId, required String fileId, List<String>? queries, bool? total}) async {
    final String apiPath = '/v1/tokens/buckets/{bucketId}/files/{fileId}'.replaceAll('{bucketId}', bucketId).replaceAll('{fileId}', fileId);

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ResourceTokenList.fromMap(res.data);

  }

  /// Create a new token. A token is linked to a file. Token can be passed as a
  /// request URL search parameter.
  Future<models.ResourceToken> tokensCreateFileToken({required String bucketId, required String fileId, String? expire}) async {
    final String apiPath = '/v1/tokens/buckets/{bucketId}/files/{fileId}'.replaceAll('{bucketId}', bucketId).replaceAll('{fileId}', fileId);

        final Map<String, dynamic> apiParams = {
            if (expire != null) 'expire': expire,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ResourceToken.fromMap(res.data);

  }

  /// Delete a token by its unique ID.
  Future tokensDelete({required String tokenId}) async {
    final String apiPath = '/v1/tokens/{tokenId}'.replaceAll('{tokenId}', tokenId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get a token by its unique ID.
  Future<models.ResourceToken> tokensGet({required String tokenId}) async {
    final String apiPath = '/v1/tokens/{tokenId}'.replaceAll('{tokenId}', tokenId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ResourceToken.fromMap(res.data);

  }

  /// Update a token by its unique ID. Use this endpoint to update a token's
  /// expiry date.
  Future<models.ResourceToken> tokensUpdate({required String tokenId, String? expire}) async {
    final String apiPath = '/v1/tokens/{tokenId}'.replaceAll('{tokenId}', tokenId);

        final Map<String, dynamic> apiParams = {
            if (expire != null) 'expire': expire,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ResourceToken.fromMap(res.data);

  }
}
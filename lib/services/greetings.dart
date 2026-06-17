part of '../revenexx.dart';

class Greetings extends Service {
  /// Initializes a [Greetings] service
  Greetings(super.client);

  Future greetingsDigest() async {
    const String apiPath = '/v1/digest';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future greetingsList() async {
    const String apiPath = '/v1/greetings';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future greetingsCreate({required String name, String? locale}) async {
    const String apiPath = '/v1/greetings';

        final Map<String, dynamic> apiParams = {
            if (locale != null) 'locale': locale,

            'name': name,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future greetingsDelete({required String id}) async {
    final String apiPath = '/v1/greetings/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Greeting> greetingsGet({required String id}) async {
    final String apiPath = '/v1/greetings/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Greeting.fromMap(res.data);

  }

  Future<models.Greeting> greetingsUpdate({required String id, String? locale, String? message, Map? metadata, String? name}) async {
    final String apiPath = '/v1/greetings/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (locale != null) 'locale': locale,

            if (message != null) 'message': message,

            if (metadata != null) 'metadata': metadata,

            if (name != null) 'name': name,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Greeting.fromMap(res.data);

  }
}
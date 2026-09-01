part of '../revenexx.dart';

  /// The tenant&#039;s event catalog: every event type its installed apps and
  /// platform services declare, what causes each one, and what it carries.
class Events extends Service {
  /// Initializes a [Events] service
  Events(super.client);

  /// Every event type this tenant's installed apps and platform services declare
  /// — what can be published and subscribed to, independent of whether one has
  /// fired yet. Each entry says what causes it (`trigger`) and what it carries
  /// (`sample`, `data_schema`).
  Future eventsGetCatalog({String? fields}) async {
    const String apiPath = '/v1/events/catalog';

        final Map<String, dynamic> apiParams = {
            if (fields != null) 'fields': fields,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }
}
part of '../revenexx.dart';

/// Resolve an app&#039;s effective per-tenant / per-market settings (schema
/// defaults merged with stored values; sensitive values masked).
class Settings extends Service {
  /// Initializes a [Settings] service
  Settings(super.client);

  /// The tenant's effective settings for the app — the declared schema's
  /// defaults merged with stored tenant/market values. Sensitive settings are
  /// masked (listed in `masked`, omitted from `settings`).
  Future settingsGetAppSettings({required String app, String? market}) async {
    final String apiPath = '/v1/settings/apps/{app}'.replaceAll('{app}', app);

    final Map<String, dynamic> apiParams = {
      if (market != null) 'market': market,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }
}

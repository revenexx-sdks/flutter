part of '../revenexx.dart';

  /// Gateway liveness and readiness probes. Public: no credential, no tenant.
class Health extends Service {
  /// Initializes a [Health] service
  Health(super.client);

  /// Answers as long as the process is running. Never touches a dependency, so
  /// it stays 200 while the gateway is degraded — use readiness to decide
  /// whether to send traffic.
  Future healthLive() async {
    const String apiPath = '/health/live';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Answers 200 once the gateway's registry source is reachable, 503 until
  /// then.
  Future healthReady() async {
    const String apiPath = '/health/ready';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }
}
import 'response.dart';
import 'client.dart';
import 'enums.dart';

abstract class ClientBase implements Client {
  /// A gateway-managed scoped API key (rvxk_…).
  @override
  ClientBase setApiKeyAuth(value);
  /// A Zitadel-issued JWT (Cockpit / interactive callers).
  @override
  ClientBase setBearerAuth(value);

  /// The tenant slug your requests are scoped to, sent as the
  /// X-Revenexx-Tenant header on every request.
  @override
  ClientBase setTenant(String value);

  @override
  ClientBase setSelfSigned({bool status = true});

  @override
  ClientBase setEndpoint(String endPoint);

  @override
  Client setEndPointRealtime(String endPoint);

  @override
  ClientBase addHeader(String key, String value);

  @override
  Future<String> ping() async {
    final String apiPath = '/ping';
    final response = await call(
      HttpMethod.get,
      path: apiPath,
      responseType: ResponseType.plain,
    );
    return response.data;
  }

  @override
  Future<Response> call(
    HttpMethod method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  });
}

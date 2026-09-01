import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:http/http.dart' as http;
import 'package:http/browser_client.dart';
import 'package:web/web.dart' as web;
import 'client_mixin.dart';
import 'enums.dart';
import 'exception.dart';
import 'client_base.dart';
import 'input_file.dart';
import 'upload_progress.dart';
import 'response.dart';

ClientBase createClient({required String endPoint, required bool selfSigned}) =>
    ClientBrowser(endPoint: endPoint, selfSigned: selfSigned);

class ClientBrowser extends ClientBase with ClientMixin {
  static const int chunkSize = 5 * 1024 * 1024;
  String _endPoint;
  Map<String, String>? _headers;
  @override
  late Map<String, String> config;
  late BrowserClient _httpClient;
  String? _endPointRealtime;

  @override
  String? get endPointRealtime => _endPointRealtime;

  ClientBrowser({
    String endPoint = 'https://api.revenexx.com',
    bool selfSigned = false,
  }) : _endPoint = endPoint {
    _httpClient = BrowserClient();
    _endPointRealtime = endPoint
        .replaceFirst('https://', 'wss://')
        .replaceFirst('http://', 'ws://');
    _headers = {
      'content-type': 'application/json',
      'x-sdk-name': 'Revenexx Flutter',
      'x-sdk-platform': '',
      'x-sdk-language': 'flutter',
      'x-sdk-version': '0.0.2',
    };

    config = {};

    assert(
      _endPoint.startsWith(RegExp("http://|https://")),
      "endPoint $_endPoint must start with 'http'",
    );
    init();
  }

  @override
  String get endPoint => _endPoint;

  /// A gateway-managed scoped API key (rvxk_…).
  @override
  ClientBrowser setApiKeyAuth(value) {
    config['apiKeyAuth'] = value;
    addHeader('X-Revenexx-Api-Key', value);
    return this;
  }
  /// A Zitadel-issued JWT (Cockpit / interactive callers).
  @override
  ClientBrowser setBearerAuth(value) {
    config['bearerAuth'] = value;
    addHeader('Authorization', value.toLowerCase().startsWith('bearer ') ? value : 'Bearer $value');
    return this;
  }

  /// The tenant slug your requests are scoped to, sent as the
  /// X-Revenexx-Tenant header on every request.
  @override
  ClientBrowser setTenant(String value) {
    config['tenant'] = value;
    addHeader('X-Revenexx-Tenant', value);
    return this;
  }

  /// The market slug to scope requests to, sent as the X-Revenexx-Market
  /// header. Optional - omit it to see only global rows.
  @override
  ClientBrowser setMarket(String value) {
    config['market'] = value;
    addHeader('X-Revenexx-Market', value);
    return this;
  }

  @override
  ClientBrowser setSelfSigned({bool status = true}) {
    return this;
  }

  @override
  ClientBrowser setEndpoint(String endPoint) {
    if (!endPoint.startsWith('http://') && !endPoint.startsWith('https://')) {
      throw RevenexxException('Invalid endpoint URL: $endPoint');
    }

    _endPoint = endPoint;
    _endPointRealtime = endPoint
        .replaceFirst('https://', 'wss://')
        .replaceFirst('http://', 'ws://');

    return this;
  }

  @override
  ClientBrowser setEndPointRealtime(String endPoint) {
    if (!endPoint.startsWith('ws://') && !endPoint.startsWith('wss://')) {
      throw RevenexxException('Invalid realtime endpoint URL: $endPoint');
    }

    _endPointRealtime = endPoint;
    return this;
  }

  @override
  ClientBrowser addHeader(String key, String value) {
    _headers![key] = value;

    return this;
  }

  Future init() async {}

  @override
  Future<Response> chunkedUpload({
    required String path,
    required Map<String, dynamic> params,
    required String paramName,
    required String idParamName,
    required Map<String, String> headers,
    Function(UploadProgress)? onProgress,
  }) async {
    InputFile file = params[paramName];
    if (file.bytes == null) {
      throw RevenexxException("File bytes must be provided for Flutter web");
    }

    int size = file.bytes!.length;

    // The API takes one multipart body per upload. It has no chunked or
    // resumable protocol — no content-range, no upload id, no per-chunk
    // endpoint — so the whole file always goes in a single request.
    params[paramName] = http.MultipartFile.fromBytes(
      paramName,
      file.bytes!,
      filename: file.filename,
    );

    final Response res = await call(
      HttpMethod.post,
      path: path,
      params: params,
      headers: headers,
    );

    onProgress?.call(UploadProgress(
      $id: res.data is Map ? (res.data['\$id'] ?? '') : '',
      progress: 100,
      sizeUploaded: size,
      chunksTotal: 1,
      chunksUploaded: 1,
    ));

    return res;
  }

  @override
  Future<Response> call(
    HttpMethod method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  }) async {
    await init();

    final combinedHeaders = {..._headers!, ...headers};

    _httpClient.withCredentials = true;

    late http.Response res;
    http.BaseRequest request = prepareRequest(
      method,
      uri: Uri.parse(_endPoint + path),
      headers: combinedHeaders,
      params: params,
    );
    try {
      final streamedResponse = await _httpClient.send(request);
      res = await toResponse(streamedResponse);

      return prepareResponse(res, responseType: responseType);
    } catch (e) {
      if (e is RevenexxException) {
        rethrow;
      }
      throw RevenexxException(e.toString());
    }
  }

  @override
  Future webAuth(Uri url, {String? callbackUrlScheme}) {
    return FlutterWebAuth2.authenticate(
      url: url.toString(),
      callbackUrlScheme: "revenexx-callback-${config['tenant']!}",
      options: const FlutterWebAuth2Options(useWebview: false),
    );
  }
}

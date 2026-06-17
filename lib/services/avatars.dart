part of '../revenexx.dart';

  /// Generated avatars, initials, QR codes, country flags and favicons.
class Avatars extends Service {
  /// Initializes a [Avatars] service
  Avatars(super.client);

  /// You can use this endpoint to show different browser icons to your users.
  /// The code argument receives the browser code as it appears in your user [GET
  /// /account/sessions](https://app.revenexx.com/docs/references/cloud/client-web/account#getSessions)
  /// endpoint. Use width, height and quality arguments to change the output
  /// settings.
  /// 
  /// When one dimension is specified and the other is 0, the image is scaled
  /// with preserved aspect ratio. If both dimensions are 0, the API provides an
  /// image at source quality. If dimensions are not specified, the default size
  /// of image returned is 100x100px.
  Future avatarsGetBrowser({required enums.Code code, int? width, int? height, int? quality}) async {
    final String apiPath = '/v1/avatars/browsers/{code}'.replaceAll('{code}', code.value);

        final Map<String, dynamic> apiParams = {
            if (width != null) 'width': width,

            if (height != null) 'height': height,

            if (quality != null) 'quality': quality,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// The credit card endpoint will return you the icon of the credit card
  /// provider you need. Use width, height and quality arguments to change the
  /// output settings.
  /// 
  /// When one dimension is specified and the other is 0, the image is scaled
  /// with preserved aspect ratio. If both dimensions are 0, the API provides an
  /// image at source quality. If dimensions are not specified, the default size
  /// of image returned is 100x100px.
  /// 
  Future avatarsGetCreditCard({required enums.Code code, int? width, int? height, int? quality}) async {
    final String apiPath = '/v1/avatars/credit-cards/{code}'.replaceAll('{code}', code.value);

        final Map<String, dynamic> apiParams = {
            if (width != null) 'width': width,

            if (height != null) 'height': height,

            if (quality != null) 'quality': quality,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Use this endpoint to fetch the favorite icon (AKA favicon) of any remote
  /// website URL.
  /// 
  /// This endpoint does not follow HTTP redirects.
  Future avatarsGetFavicon({required String url}) async {
    const String apiPath = '/v1/avatars/favicon';

        final Map<String, dynamic> apiParams = {
            'url': url,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// You can use this endpoint to show different country flags icons to your
  /// users. The code argument receives the 2 letter country code. Use width,
  /// height and quality arguments to change the output settings. Country codes
  /// follow the [ISO 3166-1](https://en.wikipedia.org/wiki/ISO_3166-1) standard.
  /// 
  /// When one dimension is specified and the other is 0, the image is scaled
  /// with preserved aspect ratio. If both dimensions are 0, the API provides an
  /// image at source quality. If dimensions are not specified, the default size
  /// of image returned is 100x100px.
  /// 
  Future avatarsGetFlag({required enums.Code code, int? width, int? height, int? quality}) async {
    final String apiPath = '/v1/avatars/flags/{code}'.replaceAll('{code}', code.value);

        final Map<String, dynamic> apiParams = {
            if (width != null) 'width': width,

            if (height != null) 'height': height,

            if (quality != null) 'quality': quality,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Use this endpoint to fetch a remote image URL and crop it to any image size
  /// you want. This endpoint is very useful if you need to crop and display
  /// remote images in your app or in case you want to make sure a 3rd party
  /// image is properly served using a TLS protocol.
  /// 
  /// When one dimension is specified and the other is 0, the image is scaled
  /// with preserved aspect ratio. If both dimensions are 0, the API provides an
  /// image at source quality. If dimensions are not specified, the default size
  /// of image returned is 400x400px.
  /// 
  /// This endpoint does not follow HTTP redirects.
  Future avatarsGetImage({required String url, int? width, int? height}) async {
    const String apiPath = '/v1/avatars/image';

        final Map<String, dynamic> apiParams = {
            'url': url,

            if (width != null) 'width': width,

            if (height != null) 'height': height,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Use this endpoint to show your user initials avatar icon on your website or
  /// app. By default, this route will try to print your logged-in user name or
  /// email initials. You can also overwrite the user name if you pass the 'name'
  /// parameter. If no name is given and no user is logged, an empty avatar will
  /// be returned.
  /// 
  /// You can use the color and background params to change the avatar colors. By
  /// default, a random theme will be selected. The random theme will persist for
  /// the user's initials when reloading the same theme will always return for
  /// the same initials.
  /// 
  /// When one dimension is specified and the other is 0, the image is scaled
  /// with preserved aspect ratio. If both dimensions are 0, the API provides an
  /// image at source quality. If dimensions are not specified, the default size
  /// of image returned is 100x100px.
  /// 
  Future avatarsGetInitials({String? name, int? width, int? height, String? background}) async {
    const String apiPath = '/v1/avatars/initials';

        final Map<String, dynamic> apiParams = {
            if (name != null) 'name': name,

            if (width != null) 'width': width,

            if (height != null) 'height': height,

            if (background != null) 'background': background,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Converts a given plain text to a QR code image. You can use the query
  /// parameters to change the size and style of the resulting image.
  /// 
  Future avatarsGetQR({required String text, int? size, int? margin, bool? download}) async {
    const String apiPath = '/v1/avatars/qr';

        final Map<String, dynamic> apiParams = {
            'text': text,

            if (size != null) 'size': size,

            if (margin != null) 'margin': margin,

            if (download != null) 'download': download,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Use this endpoint to capture a screenshot of any website URL. This endpoint
  /// uses a headless browser to render the webpage and capture it as an image.
  /// 
  /// You can configure the browser viewport size, theme, user agent,
  /// geolocation, permissions, and more. Capture either just the viewport or the
  /// full page scroll.
  /// 
  /// When width and height are specified, the image is resized accordingly. If
  /// both dimensions are 0, the API provides an image at original size. If
  /// dimensions are not specified, the default viewport size is 1280x720px.
  Future avatarsGetScreenshot({required String url, Map? headers, int? viewportWidth, int? viewportHeight, double? scale, enums.Theme? theme, String? userAgent, bool? fullpage, String? locale, enums.Timezone? timezone, double? latitude, double? longitude, double? accuracy, bool? touch, List<enums.Permissions>? permissions, int? sleep, int? width, int? height, int? quality, enums.Output? output}) async {
    const String apiPath = '/v1/avatars/screenshots';

        final Map<String, dynamic> apiParams = {
            'url': url,

            if (headers != null) 'headers': headers,

            if (viewportWidth != null) 'viewportWidth': viewportWidth,

            if (viewportHeight != null) 'viewportHeight': viewportHeight,

            if (scale != null) 'scale': scale,

            if (theme != null) 'theme': theme.value,

            if (userAgent != null) 'userAgent': userAgent,

            if (fullpage != null) 'fullpage': fullpage,

            if (locale != null) 'locale': locale,

            if (timezone != null) 'timezone': timezone.value,

            if (latitude != null) 'latitude': latitude,

            if (longitude != null) 'longitude': longitude,

            if (accuracy != null) 'accuracy': accuracy,

            if (touch != null) 'touch': touch,

            if (permissions != null) 'permissions': permissions.map((e) => e.value).toList(),

            if (sleep != null) 'sleep': sleep,

            if (width != null) 'width': width,

            if (height != null) 'height': height,

            if (quality != null) 'quality': quality,

            if (output != null) 'output': output.value,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }
}
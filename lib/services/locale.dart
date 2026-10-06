part of '../revenexx.dart';

/// Localisation reference data: countries, currencies, languages.
class Locale extends Service {
  /// Initializes a [Locale] service
  Locale(super.client);

  /// Get the current user location based on IP. Returns an object with user
  /// country code, country name, continent name, continent code, ip address and
  /// suggested currency. You can use the locale header to get the data in a
  /// supported language.
  ///
  /// ([IP Geolocation by DB-IP](https://db-ip.com))
  Future<models.Locale> localeGet() async {
    const String apiPath = '/v1/locale';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Locale.fromMap(res.data);
  }

  /// List of all locale codes in [ISO
  /// 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes).
  Future<models.LocaleCodeList> localeListCodes() async {
    const String apiPath = '/v1/locale/codes';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.LocaleCodeList.fromMap(res.data);
  }

  /// List of all continents. You can use the locale header to get the data in a
  /// supported language.
  Future<models.ContinentList> localeListContinents() async {
    const String apiPath = '/v1/locale/continents';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ContinentList.fromMap(res.data);
  }

  /// List of all countries. You can use the locale header to get the data in a
  /// supported language.
  Future<models.CountryList> localeListCountries() async {
    const String apiPath = '/v1/locale/countries';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.CountryList.fromMap(res.data);
  }

  /// List of all countries that are currently members of the EU. You can use the
  /// locale header to get the data in a supported language.
  Future<models.CountryList> localeListCountriesEU() async {
    const String apiPath = '/v1/locale/countries/eu';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.CountryList.fromMap(res.data);
  }

  /// List of all countries phone codes. You can use the locale header to get the
  /// data in a supported language.
  Future<models.PhoneList> localeListCountriesPhones() async {
    const String apiPath = '/v1/locale/countries/phones';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PhoneList.fromMap(res.data);
  }

  /// List of all currencies, including currency symbol, name, plural, and
  /// decimal digits for all major and minor currencies. You can use the locale
  /// header to get the data in a supported language.
  Future<models.CurrencyList> localeListCurrencies() async {
    const String apiPath = '/v1/locale/currencies';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.CurrencyList.fromMap(res.data);
  }

  /// List of all languages classified by ISO 639-1 including 2-letter code, name
  /// in English, and name in the respective language.
  Future<models.LanguageList> localeListLanguages() async {
    const String apiPath = '/v1/locale/languages';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.LanguageList.fromMap(res.data);
  }
}

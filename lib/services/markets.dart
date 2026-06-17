part of '../revenexx.dart';

class Markets extends Service {
  /// Initializes a [Markets] service
  Markets(super.client);

  Future marketsList() async {
    const String apiPath = '/v1/markets';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Market> marketsCreate({required String code, required String name, String? currency, bool? isDefault, Map? labels, int? position, enums.MarketStatus? status}) async {
    const String apiPath = '/v1/markets';

        final Map<String, dynamic> apiParams = {
            'code': code,

            if (currency != null) 'currency': currency,

            if (isDefault != null) 'is_default': isDefault,

            'labels': labels,

            'name': name,

            if (position != null) 'position': position,

            if (status != null) 'status': status.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Market.fromMap(res.data);

  }

  Future marketsDelete({required String id}) async {
    final String apiPath = '/v1/markets/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Market> marketsGet({required String id}) async {
    final String apiPath = '/v1/markets/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Market.fromMap(res.data);

  }

  Future<models.Market> marketsUpdate({required String id, String? code, String? currency, bool? isDefault, Map? labels, String? name, int? position, enums.MarketStatus? status}) async {
    final String apiPath = '/v1/markets/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            if (currency != null) 'currency': currency,

            if (isDefault != null) 'is_default': isDefault,

            'labels': labels,

            if (name != null) 'name': name,

            if (position != null) 'position': position,

            if (status != null) 'status': status.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Market.fromMap(res.data);

  }

  Future<models.MarketContext> marketsContext({required String id}) async {
    final String apiPath = '/v1/markets/{id}/context'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MarketContext.fromMap(res.data);

  }

  Future marketsCurrenciesList({required String marketId}) async {
    final String apiPath = '/v1/markets/{market_id}/currencies'.replaceAll('{marketId}', marketId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.MarketCurrency> marketsCurrenciesCreate({required String marketId, required String code, bool? isDefault, int? position}) async {
    final String apiPath = '/v1/markets/{market_id}/currencies'.replaceAll('{marketId}', marketId);

        final Map<String, dynamic> apiParams = {
            'code': code,

            if (isDefault != null) 'is_default': isDefault,

            if (position != null) 'position': position,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MarketCurrency.fromMap(res.data);

  }

  Future marketsCurrenciesDelete({required String marketId, required String id}) async {
    final String apiPath = '/v1/markets/{market_id}/currencies/{id}'.replaceAll('{marketId}', marketId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.MarketCurrency> marketsCurrenciesGet({required String marketId, required String id}) async {
    final String apiPath = '/v1/markets/{market_id}/currencies/{id}'.replaceAll('{marketId}', marketId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MarketCurrency.fromMap(res.data);

  }

  Future<models.MarketCurrency> marketsCurrenciesUpdate({required String marketId, required String id, String? code, bool? isDefault, int? position}) async {
    final String apiPath = '/v1/markets/{market_id}/currencies/{id}'.replaceAll('{marketId}', marketId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            if (isDefault != null) 'is_default': isDefault,

            if (position != null) 'position': position,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MarketCurrency.fromMap(res.data);

  }

  Future marketsLocalesList({required String marketId}) async {
    final String apiPath = '/v1/markets/{market_id}/locales'.replaceAll('{marketId}', marketId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.MarketLocale> marketsLocalesCreate({required String marketId, required String code, required String country, required String language, bool? isDefault, int? position}) async {
    final String apiPath = '/v1/markets/{market_id}/locales'.replaceAll('{marketId}', marketId);

        final Map<String, dynamic> apiParams = {
            'code': code,

            'country': country,

            if (isDefault != null) 'is_default': isDefault,

            'language': language,

            if (position != null) 'position': position,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MarketLocale.fromMap(res.data);

  }

  Future marketsLocalesDelete({required String marketId, required String id}) async {
    final String apiPath = '/v1/markets/{market_id}/locales/{id}'.replaceAll('{marketId}', marketId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.MarketLocale> marketsLocalesGet({required String marketId, required String id}) async {
    final String apiPath = '/v1/markets/{market_id}/locales/{id}'.replaceAll('{marketId}', marketId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MarketLocale.fromMap(res.data);

  }

  Future<models.MarketLocale> marketsLocalesUpdate({required String marketId, required String id, String? code, String? country, bool? isDefault, String? language, int? position}) async {
    final String apiPath = '/v1/markets/{market_id}/locales/{id}'.replaceAll('{marketId}', marketId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            if (country != null) 'country': country,

            if (isDefault != null) 'is_default': isDefault,

            if (language != null) 'language': language,

            if (position != null) 'position': position,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MarketLocale.fromMap(res.data);

  }

  Future marketsTaxClassesList({required String marketId}) async {
    final String apiPath = '/v1/markets/{market_id}/tax_classes'.replaceAll('{marketId}', marketId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.MarketTaxClass> marketsTaxClassesCreate({required String marketId, required String code, required String name, bool? isDefault, Map? labels, int? position, double? rate}) async {
    final String apiPath = '/v1/markets/{market_id}/tax_classes'.replaceAll('{marketId}', marketId);

        final Map<String, dynamic> apiParams = {
            'code': code,

            if (isDefault != null) 'is_default': isDefault,

            'labels': labels,

            'name': name,

            if (position != null) 'position': position,

            if (rate != null) 'rate': rate,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MarketTaxClass.fromMap(res.data);

  }

  Future marketsTaxClassesDelete({required String marketId, required String id}) async {
    final String apiPath = '/v1/markets/{market_id}/tax_classes/{id}'.replaceAll('{marketId}', marketId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.MarketTaxClass> marketsTaxClassesGet({required String marketId, required String id}) async {
    final String apiPath = '/v1/markets/{market_id}/tax_classes/{id}'.replaceAll('{marketId}', marketId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MarketTaxClass.fromMap(res.data);

  }

  Future<models.MarketTaxClass> marketsTaxClassesUpdate({required String marketId, required String id, String? code, bool? isDefault, Map? labels, String? name, int? position, double? rate}) async {
    final String apiPath = '/v1/markets/{market_id}/tax_classes/{id}'.replaceAll('{marketId}', marketId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            if (isDefault != null) 'is_default': isDefault,

            'labels': labels,

            if (name != null) 'name': name,

            if (position != null) 'position': position,

            if (rate != null) 'rate': rate,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MarketTaxClass.fromMap(res.data);

  }
}
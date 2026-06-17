part of '../revenexx.dart';

class Shipping extends Service {
  /// Initializes a [Shipping] service
  Shipping(super.client);

  Future shippingMethodsList() async {
    const String apiPath = '/v1/shipping/methods';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.ShippingMethod> shippingMethodsCreate({required String code, required String name, String? carrier, List<String>? countries, String? currency, String? description, bool? enabled, int? etaDaysMax, int? etaDaysMin, double? freeAbove, Map? labels, String? matrixAttribute, enums.ShippingMethodMatrixBasis? matrixBasis, Map? metadata, int? position, double? price, enums.ShippingMethodPricingType? pricingType}) async {
    const String apiPath = '/v1/shipping/methods';

        final Map<String, dynamic> apiParams = {
            'carrier': carrier,

            'code': code,

            'countries': countries,

            if (currency != null) 'currency': currency,

            'description': description,

            if (enabled != null) 'enabled': enabled,

            'eta_days_max': etaDaysMax,

            'eta_days_min': etaDaysMin,

            'free_above': freeAbove,

            'labels': labels,

            'matrix_attribute': matrixAttribute,

            'matrix_basis': matrixBasis?.value,

            'metadata': metadata,

            'name': name,

            if (position != null) 'position': position,

            if (price != null) 'price': price,

            if (pricingType != null) 'pricing_type': pricingType.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ShippingMethod.fromMap(res.data);

  }

  Future shippingMethodsDefaults() async {
    const String apiPath = '/v1/shipping/methods/defaults';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future shippingMethodsDelete({required String id}) async {
    final String apiPath = '/v1/shipping/methods/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.ShippingMethod> shippingMethodsGet({required String id}) async {
    final String apiPath = '/v1/shipping/methods/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ShippingMethod.fromMap(res.data);

  }

  Future<models.ShippingMethod> shippingMethodsUpdate({required String id, String? carrier, String? code, List<String>? countries, String? currency, String? description, bool? enabled, int? etaDaysMax, int? etaDaysMin, double? freeAbove, Map? labels, String? matrixAttribute, enums.ShippingMethodMatrixBasis? matrixBasis, Map? metadata, String? name, int? position, double? price, enums.ShippingMethodPricingType? pricingType}) async {
    final String apiPath = '/v1/shipping/methods/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'carrier': carrier,

            if (code != null) 'code': code,

            'countries': countries,

            if (currency != null) 'currency': currency,

            'description': description,

            if (enabled != null) 'enabled': enabled,

            'eta_days_max': etaDaysMax,

            'eta_days_min': etaDaysMin,

            'free_above': freeAbove,

            'labels': labels,

            'matrix_attribute': matrixAttribute,

            'matrix_basis': matrixBasis?.value,

            'metadata': metadata,

            if (name != null) 'name': name,

            if (position != null) 'position': position,

            if (price != null) 'price': price,

            if (pricingType != null) 'pricing_type': pricingType.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ShippingMethod.fromMap(res.data);

  }

  Future shippingTiersList({required String methodId}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers'.replaceAll('{methodId}', methodId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.ShippingRateTier> shippingTiersCreate({required String methodId, double? fromValue, int? position, double? price}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers'.replaceAll('{methodId}', methodId);

        final Map<String, dynamic> apiParams = {
            if (fromValue != null) 'from_value': fromValue,

            if (position != null) 'position': position,

            if (price != null) 'price': price,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ShippingRateTier.fromMap(res.data);

  }

  Future shippingTiersReplace({required String methodId, required List<models.ShippingRateTierReplaceItem> tiers}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers'.replaceAll('{methodId}', methodId);

        final Map<String, dynamic> apiParams = {
            'tiers': tiers.map((p) => p.toMap()).toList(),

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future shippingTiersDelete({required String methodId, required String id}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers/{id}'.replaceAll('{methodId}', methodId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.ShippingRateTier> shippingTiersGet({required String methodId, required String id}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers/{id}'.replaceAll('{methodId}', methodId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ShippingRateTier.fromMap(res.data);

  }

  Future<models.ShippingRateTier> shippingTiersUpdate({required String methodId, required String id, double? fromValue, int? position, double? price}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers/{id}'.replaceAll('{methodId}', methodId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (fromValue != null) 'from_value': fromValue,

            if (position != null) 'position': position,

            if (price != null) 'price': price,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ShippingRateTier.fromMap(res.data);

  }

  Future shippingRates({Map? attributes, String? country, String? currency, String? marketId, double? orderValue, double? quantity, double? weight}) async {
    const String apiPath = '/v1/shipping/rates';

        final Map<String, dynamic> apiParams = {
            'attributes': attributes,

            'country': country,

            'currency': currency,

            'market_id': marketId,

            'order_value': orderValue,

            'quantity': quantity,

            'weight': weight,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }
}
part of '../revenexx.dart';

class Payments extends Service {
  /// Initializes a [Payments] service
  Payments(super.client);

  Future paymentsList() async {
    const String apiPath = '/v1/payments';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Payment> paymentsCreate({required double amount, required String methodCode, String? cartId, String? contactId, String? country, String? currency, String? idempotencyKey, Map? metadata, String? orderRef, String? returnUrl}) async {
    const String apiPath = '/v1/payments';

        final Map<String, dynamic> apiParams = {
            'amount': amount,

            'cart_id': cartId,

            'contact_id': contactId,

            'country': country,

            if (currency != null) 'currency': currency,

            'idempotency_key': idempotencyKey,

            'metadata': metadata,

            'method_code': methodCode,

            'order_ref': orderRef,

            'return_url': returnUrl,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Payment.fromMap(res.data);

  }

  Future paymentsMethodsList() async {
    const String apiPath = '/v1/payments/methods';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.PaymentMethod> paymentsMethodsCreate({required String code, required String name, List<String>? countries, String? description, bool? enabled, double? feeAmount, String? feeCurrency, enums.PaymentFeeType? feeType, enums.PaymentMethodKind? kind, Map? labels, double? maxOrderValue, Map? metadata, double? minOrderValue, int? position, String? provider, String? providerMethod}) async {
    const String apiPath = '/v1/payments/methods';

        final Map<String, dynamic> apiParams = {
            'code': code,

            'countries': countries,

            'description': description,

            if (enabled != null) 'enabled': enabled,

            if (feeAmount != null) 'fee_amount': feeAmount,

            if (feeCurrency != null) 'fee_currency': feeCurrency,

            if (feeType != null) 'fee_type': feeType.value,

            if (kind != null) 'kind': kind.value,

            'labels': labels,

            'max_order_value': maxOrderValue,

            'metadata': metadata,

            'min_order_value': minOrderValue,

            'name': name,

            if (position != null) 'position': position,

            'provider': provider,

            'provider_method': providerMethod,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PaymentMethod.fromMap(res.data);

  }

  Future paymentsMethodsDefaults() async {
    const String apiPath = '/v1/payments/methods/defaults';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future paymentsMethodsEligible({double? amount, String? country, String? currency}) async {
    const String apiPath = '/v1/payments/methods/eligible';

        final Map<String, dynamic> apiParams = {
            'amount': amount,

            'country': country,

            'currency': currency,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future paymentsMethodsDelete({required String id}) async {
    final String apiPath = '/v1/payments/methods/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.PaymentMethod> paymentsMethodsGet({required String id}) async {
    final String apiPath = '/v1/payments/methods/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PaymentMethod.fromMap(res.data);

  }

  Future<models.PaymentMethod> paymentsMethodsUpdate({required String id, String? code, List<String>? countries, String? description, bool? enabled, double? feeAmount, String? feeCurrency, enums.PaymentFeeType? feeType, enums.PaymentMethodKind? kind, Map? labels, double? maxOrderValue, Map? metadata, double? minOrderValue, String? name, int? position, String? provider, String? providerMethod}) async {
    final String apiPath = '/v1/payments/methods/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            'countries': countries,

            'description': description,

            if (enabled != null) 'enabled': enabled,

            if (feeAmount != null) 'fee_amount': feeAmount,

            if (feeCurrency != null) 'fee_currency': feeCurrency,

            if (feeType != null) 'fee_type': feeType.value,

            if (kind != null) 'kind': kind.value,

            'labels': labels,

            'max_order_value': maxOrderValue,

            'metadata': metadata,

            'min_order_value': minOrderValue,

            if (name != null) 'name': name,

            if (position != null) 'position': position,

            'provider': provider,

            'provider_method': providerMethod,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PaymentMethod.fromMap(res.data);

  }

  Future paymentsProvidersList() async {
    const String apiPath = '/v1/payments/providers';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.PaymentProvider> paymentsProvidersCreate({required String provider, Map? credentials, bool? enabled, String? name, Map? options, bool? testMode, String? webhookSecret}) async {
    const String apiPath = '/v1/payments/providers';

        final Map<String, dynamic> apiParams = {
            'credentials': credentials,

            'enabled': enabled,

            'name': name,

            'options': options,

            'provider': provider,

            'test_mode': testMode,

            'webhook_secret': webhookSecret,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PaymentProvider.fromMap(res.data);

  }

  Future paymentsProvidersCatalog() async {
    const String apiPath = '/v1/payments/providers/catalog';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future paymentsProvidersDelete({required String id}) async {
    final String apiPath = '/v1/payments/providers/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.PaymentProvider> paymentsProvidersGet({required String id}) async {
    final String apiPath = '/v1/payments/providers/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PaymentProvider.fromMap(res.data);

  }

  Future<models.PaymentProvider> paymentsProvidersUpdate({required String id, Map? credentials, bool? enabled, String? name, Map? options, String? provider, bool? testMode, String? webhookSecret}) async {
    final String apiPath = '/v1/payments/providers/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'credentials': credentials,

            if (enabled != null) 'enabled': enabled,

            if (name != null) 'name': name,

            'options': options,

            if (provider != null) 'provider': provider,

            if (testMode != null) 'test_mode': testMode,

            'webhook_secret': webhookSecret,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.PaymentProvider.fromMap(res.data);

  }

  /// Consumes the dispatch envelope from webhooks.revenexx.com: normalizes the
  /// provider callback (stripe payment intents + a generic shape), resolves the
  /// payment by psp_payment_id or order_ref and moves the ledger. Facts only
  /// move forward — provider retries and redeliveries are idempotent no-ops;
  /// unverified envelopes are refused.
  Future paymentsWebhooksIngest({required String provider, required Map data}) async {
    final String apiPath = '/v1/payments/webhooks/{provider}'.replaceAll('{provider}', provider);

        final Map<String, dynamic> apiParams = {
            'data': data,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Payment> paymentsGet({required String id}) async {
    final String apiPath = '/v1/payments/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Payment.fromMap(res.data);

  }

  Future<models.Payment> paymentsCancel({required String id}) async {
    final String apiPath = '/v1/payments/{id}/cancel'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Payment.fromMap(res.data);

  }

  Future<models.Payment> paymentsCapture({required String id}) async {
    final String apiPath = '/v1/payments/{id}/capture'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Payment.fromMap(res.data);

  }

  Future<models.Payment> paymentsConfirm({required String id}) async {
    final String apiPath = '/v1/payments/{id}/confirm'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Payment.fromMap(res.data);

  }

  Future<models.Payment> paymentsRefund({required String id}) async {
    final String apiPath = '/v1/payments/{id}/refund'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Payment.fromMap(res.data);

  }
}
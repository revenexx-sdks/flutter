part of '../revenexx.dart';

class Orders extends Service {
  /// Initializes a [Orders] service
  Orders(super.client);

  Future ordersList() async {
    const String apiPath = '/v1/orders';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future ordersNumberRangesList() async {
    const String apiPath = '/v1/orders/number-ranges';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.NumberRange> ordersNumberRangesCreate({required String code, String? channelId, int? counter, Map? metadata, int? padding, int? positionStep, String? prefix, int? step, String? suffix}) async {
    const String apiPath = '/v1/orders/number-ranges';

        final Map<String, dynamic> apiParams = {
            if (channelId != null) 'channel_id': channelId,

            'code': code,

            if (counter != null) 'counter': counter,

            if (metadata != null) 'metadata': metadata,

            if (padding != null) 'padding': padding,

            if (positionStep != null) 'position_step': positionStep,

            if (prefix != null) 'prefix': prefix,

            if (step != null) 'step': step,

            if (suffix != null) 'suffix': suffix,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.NumberRange.fromMap(res.data);

  }

  Future ordersNumberRangesDefaults() async {
    const String apiPath = '/v1/orders/number-ranges/defaults';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future ordersNumberRangesDelete({required String id}) async {
    final String apiPath = '/v1/orders/number-ranges/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.NumberRange> ordersNumberRangesGet({required String id}) async {
    final String apiPath = '/v1/orders/number-ranges/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.NumberRange.fromMap(res.data);

  }

  Future<models.NumberRange> ordersNumberRangesUpdate({required String id, String? channelId, String? code, int? counter, Map? metadata, int? padding, int? positionStep, String? prefix, int? step, String? suffix}) async {
    final String apiPath = '/v1/orders/number-ranges/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (channelId != null) 'channel_id': channelId,

            if (code != null) 'code': code,

            if (counter != null) 'counter': counter,

            if (metadata != null) 'metadata': metadata,

            if (padding != null) 'padding': padding,

            if (positionStep != null) 'position_step': positionStep,

            if (prefix != null) 'prefix': prefix,

            if (step != null) 'step': step,

            if (suffix != null) 'suffix': suffix,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.NumberRange.fromMap(res.data);

  }

  Future<models.OrderDetail> ordersPlace({required List<models.OrderItemCreateRequest> items, Map? billingAddress, Map? buyer, String? cartId, String? channelId, String? contactId, String? currency, String? customerOrderNumber, double? grandTotal, String? marketId, Map? metadata, String? organizationId, Map? payment, Map? shipping, Map? shippingAddress, double? shippingTotal, Map? userData}) async {
    const String apiPath = '/v1/orders/place';

        final Map<String, dynamic> apiParams = {
            'billing_address': billingAddress,

            'buyer': buyer,

            'cart_id': cartId,

            'channel_id': channelId,

            'contact_id': contactId,

            'currency': currency,

            'customer_order_number': customerOrderNumber,

            'grand_total': grandTotal,

            'items': items.map((p) => p.toMap()).toList(),

            'market_id': marketId,

            'metadata': metadata,

            'organization_id': organizationId,

            'payment': payment,

            'shipping': shipping,

            'shipping_address': shippingAddress,

            'shipping_total': shippingTotal,

            'user_data': userData,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.OrderDetail.fromMap(res.data);

  }

  Future<models.OrderDetail> ordersGet({required String id}) async {
    final String apiPath = '/v1/orders/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.OrderDetail.fromMap(res.data);

  }

  Future<models.Order> ordersUpdate({required String id, Map? billingAddress, Map? buyer, String? customerOrderNumber, Map? metadata, Map? shippingAddress, Map? userData}) async {
    final String apiPath = '/v1/orders/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (billingAddress != null) 'billing_address': billingAddress,

            if (buyer != null) 'buyer': buyer,

            if (customerOrderNumber != null) 'customer_order_number': customerOrderNumber,

            if (metadata != null) 'metadata': metadata,

            if (shippingAddress != null) 'shipping_address': shippingAddress,

            if (userData != null) 'user_data': userData,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Order.fromMap(res.data);

  }

  Future<models.Order> ordersAcknowledge({required String id, String? externalRef}) async {
    final String apiPath = '/v1/orders/{id}/acknowledge'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (externalRef != null) 'external_ref': externalRef,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Order.fromMap(res.data);

  }

  Future<models.Order> ordersCancel({required String id, String? cancelledBy, String? reason}) async {
    final String apiPath = '/v1/orders/{id}/cancel'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (cancelledBy != null) 'cancelled_by': cancelledBy,

            if (reason != null) 'reason': reason,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Order.fromMap(res.data);

  }

  Future ordersCommentsList({required String id}) async {
    final String apiPath = '/v1/orders/{id}/comments'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.OrderComment> ordersCommentsCreate({required String id, required String body, String? author, enums.OrderCommentVisibility? visibility}) async {
    final String apiPath = '/v1/orders/{id}/comments'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (author != null) 'author': author,

            'body': body,

            if (visibility != null) 'visibility': visibility.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.OrderComment.fromMap(res.data);

  }

  Future ordersEventsList({required String id}) async {
    final String apiPath = '/v1/orders/{id}/events'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Order> ordersHold({required String id, String? reason}) async {
    final String apiPath = '/v1/orders/{id}/hold'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (reason != null) 'reason': reason,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Order.fromMap(res.data);

  }

  Future<models.Order> ordersItemsCancel({required String id, required List<models.OrderCancelPosition> positions, String? cancelledBy, String? reason}) async {
    final String apiPath = '/v1/orders/{id}/items/cancel'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (cancelledBy != null) 'cancelled_by': cancelledBy,

            'positions': positions.map((p) => p.toMap()).toList(),

            if (reason != null) 'reason': reason,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Order.fromMap(res.data);

  }

  Future<models.Order> ordersPaymentStatusUpdate({required String id, required enums.OrderPaymentStatus status, String? paymentId}) async {
    final String apiPath = '/v1/orders/{id}/payment-status'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (paymentId != null) 'payment_id': paymentId,

            'status': status.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Order.fromMap(res.data);

  }

  Future<models.OrderReturn> ordersReturn({required String id, required List<models.OrderReturnPosition> positions, Map? metadata, String? reason}) async {
    final String apiPath = '/v1/orders/{id}/return'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (metadata != null) 'metadata': metadata,

            'positions': positions.map((p) => p.toMap()).toList(),

            if (reason != null) 'reason': reason,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.OrderReturn.fromMap(res.data);

  }

  Future<models.OrderReturn> ordersReturnsComplete({required String id, required String rid, String? resolution}) async {
    final String apiPath = '/v1/orders/{id}/returns/{rid}/complete'.replaceAll('{id}', id).replaceAll('{rid}', rid);

        final Map<String, dynamic> apiParams = {
            if (resolution != null) 'resolution': resolution,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.OrderReturn.fromMap(res.data);

  }

  Future<models.OrderReturn> ordersReturnsReceive({required String id, required String rid, required Map data}) async {
    final String apiPath = '/v1/orders/{id}/returns/{rid}/receive'.replaceAll('{id}', id).replaceAll('{rid}', rid);

        final Map<String, dynamic> apiParams = {
            'data': data,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.OrderReturn.fromMap(res.data);

  }

  Future<models.OrderReturn> ordersReturnsReject({required String id, required String rid, String? reason, String? resolution}) async {
    final String apiPath = '/v1/orders/{id}/returns/{rid}/reject'.replaceAll('{id}', id).replaceAll('{rid}', rid);

        final Map<String, dynamic> apiParams = {
            if (reason != null) 'reason': reason,

            if (resolution != null) 'resolution': resolution,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.OrderReturn.fromMap(res.data);

  }

  Future ordersShip({required String id, String? carrier, Map? metadata, String? number, List<models.OrderShipmentPosition>? positions, String? shippedAt, String? trackingCode, String? trackingUrl}) async {
    final String apiPath = '/v1/orders/{id}/ship'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (carrier != null) 'carrier': carrier,

            if (metadata != null) 'metadata': metadata,

            if (number != null) 'number': number,

            if (positions != null) 'positions': positions.map((p) => p.toMap()).toList(),

            if (shippedAt != null) 'shipped_at': shippedAt,

            if (trackingCode != null) 'tracking_code': trackingCode,

            if (trackingUrl != null) 'tracking_url': trackingUrl,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Order> ordersUnhold({required String id, required Map data}) async {
    final String apiPath = '/v1/orders/{id}/unhold'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'data': data,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Order.fromMap(res.data);

  }
}
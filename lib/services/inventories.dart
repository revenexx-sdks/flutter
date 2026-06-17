part of '../revenexx.dart';

class Inventories extends Service {
  /// Initializes a [Inventories] service
  Inventories(super.client);

  Future inventoriesAdjust({required List<models.InventoryAdjustItem> items, required String reason, String? locationCode}) async {
    const String apiPath = '/v1/inventories/adjust';

        final Map<String, dynamic> apiParams = {
            'items': items.map((p) => p.toMap()).toList(),

            'location_code': locationCode,

            'reason': reason,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future inventoriesAvailability({required List<models.InventoryAvailabilityItem> items, String? locationCode}) async {
    const String apiPath = '/v1/inventories/availability';

        final Map<String, dynamic> apiParams = {
            'items': items.map((p) => p.toMap()).toList(),

            'location_code': locationCode,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future inventoriesCommit({required String orderRef}) async {
    const String apiPath = '/v1/inventories/commit';

        final Map<String, dynamic> apiParams = {
            'order_ref': orderRef,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future inventoriesLocationsList() async {
    const String apiPath = '/v1/inventories/locations';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Location> inventoriesLocationsCreate({required String code, required String name, Map? address, bool? enabled, Map? labels, Map? metadata, int? priority, enums.LocationType? type}) async {
    const String apiPath = '/v1/inventories/locations';

        final Map<String, dynamic> apiParams = {
            'address': address,

            'code': code,

            if (enabled != null) 'enabled': enabled,

            'labels': labels,

            'metadata': metadata,

            'name': name,

            if (priority != null) 'priority': priority,

            if (type != null) 'type': type.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Location.fromMap(res.data);

  }

  Future inventoriesLocationsDefaults() async {
    const String apiPath = '/v1/inventories/locations/defaults';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future inventoriesLocationsDelete({required String id}) async {
    final String apiPath = '/v1/inventories/locations/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Location> inventoriesLocationsGet({required String id}) async {
    final String apiPath = '/v1/inventories/locations/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Location.fromMap(res.data);

  }

  Future<models.Location> inventoriesLocationsUpdate({required String id, Map? address, String? code, bool? enabled, Map? labels, Map? metadata, String? name, int? priority, enums.LocationType? type}) async {
    final String apiPath = '/v1/inventories/locations/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'address': address,

            if (code != null) 'code': code,

            if (enabled != null) 'enabled': enabled,

            'labels': labels,

            'metadata': metadata,

            if (name != null) 'name': name,

            if (priority != null) 'priority': priority,

            if (type != null) 'type': type.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Location.fromMap(res.data);

  }

  Future inventoriesMovementsList() async {
    const String apiPath = '/v1/inventories/movements';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.StockMovement> inventoriesMovementsGet({required String id}) async {
    final String apiPath = '/v1/inventories/movements/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.StockMovement.fromMap(res.data);

  }

  Future inventoriesReceive({required List<models.InventoryStockItem> items, String? locationCode, String? reason}) async {
    const String apiPath = '/v1/inventories/receive';

        final Map<String, dynamic> apiParams = {
            'items': items.map((p) => p.toMap()).toList(),

            'location_code': locationCode,

            'reason': reason,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future inventoriesRelease({required String orderRef}) async {
    const String apiPath = '/v1/inventories/release';

        final Map<String, dynamic> apiParams = {
            'order_ref': orderRef,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future inventoriesReservationsList() async {
    const String apiPath = '/v1/inventories/reservations';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Reservation> inventoriesReservationsGet({required String id}) async {
    final String apiPath = '/v1/inventories/reservations/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Reservation.fromMap(res.data);

  }

  Future inventoriesReserve({required List<models.InventoryStockItem> items, required String orderRef, String? expiresAt}) async {
    const String apiPath = '/v1/inventories/reserve';

        final Map<String, dynamic> apiParams = {
            'expires_at': expiresAt,

            'items': items.map((p) => p.toMap()).toList(),

            'order_ref': orderRef,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future inventoriesRestock({required List<models.InventoryStockItem> items, String? locationCode, String? orderRef, String? reason}) async {
    const String apiPath = '/v1/inventories/restock';

        final Map<String, dynamic> apiParams = {
            'items': items.map((p) => p.toMap()).toList(),

            'location_code': locationCode,

            'order_ref': orderRef,

            'reason': reason,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future inventoriesStockList() async {
    const String apiPath = '/v1/inventories/stock';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.StockLevel> inventoriesStockCreate({required String locationId, Map? metadata, double? onHand, String? productId, double? reorderPoint, double? reserved, String? sku}) async {
    const String apiPath = '/v1/inventories/stock';

        final Map<String, dynamic> apiParams = {
            'location_id': locationId,

            'metadata': metadata,

            if (onHand != null) 'on_hand': onHand,

            'product_id': productId,

            'reorder_point': reorderPoint,

            if (reserved != null) 'reserved': reserved,

            'sku': sku,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.StockLevel.fromMap(res.data);

  }

  Future inventoriesStockDelete({required String id}) async {
    final String apiPath = '/v1/inventories/stock/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.StockLevel> inventoriesStockGet({required String id}) async {
    final String apiPath = '/v1/inventories/stock/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.StockLevel.fromMap(res.data);

  }

  Future<models.StockLevel> inventoriesStockUpdate({required String id, String? locationId, Map? metadata, double? onHand, String? productId, double? reorderPoint, double? reserved, String? sku}) async {
    final String apiPath = '/v1/inventories/stock/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (locationId != null) 'location_id': locationId,

            'metadata': metadata,

            if (onHand != null) 'on_hand': onHand,

            'product_id': productId,

            'reorder_point': reorderPoint,

            if (reserved != null) 'reserved': reserved,

            'sku': sku,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.StockLevel.fromMap(res.data);

  }
}
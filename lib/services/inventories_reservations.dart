part of '../revenexx.dart';

/// Stock promised to an order, and the three ways that promise ends. A
/// reservation is order-scoped: POST /inventories/reserve creates it against
/// an `order_ref`, and nothing else does — there is no create, update or
/// delete route here, because the lifecycle IS the API. Reserving raises
/// `reserved` on a stock row and leaves `on_hand` alone (the goods are still
/// in the building); committing ships them and takes them out of both;
/// releasing gives them back; and the sweep is a release on a timer, for the
/// checkouts nobody finished. `reserved` is the only reason a stock row&#039;s two
/// numbers ever differ, which is what makes this a group and not a footnote to
/// the stock one. Which location a hold lands at is not decided here — that
/// is the tenant&#039;s allocation strategy choosing between locations, and it is
/// described with them.
class InventoriesReservations extends Service {
  /// Initializes a [InventoriesReservations] service
  InventoriesReservations(super.client);

  /// Call this when the goods leave the building, and not before. Reserving only
  /// promised them — `reserved` went up and `on_hand` did not move, because
  /// the stock was still on the shelf; committing is the moment they are gone,
  /// so it lowers BOTH on each stock row and writes one `shipment` booking per
  /// hold, with a SIGNED negative quantity, as the ledger's record that they
  /// left. It takes the whole `order_ref` and every hold still active on it:
  /// there is no partial commit and no per-line id, so a part shipment means
  /// reserving the parts separately in the first place. It is also final —
  /// 'committed' ends the lifecycle and nothing moves a hold out of it, so goods
  /// coming back are POST /inventories/restock (a new receipt), never an undo of
  /// this. An order with nothing active is a 422 rather than a quiet zero,
  /// because it means the hold was already released or already shipped; /release
  /// answers the same situation with a 200 on purpose, since cancelling twice is
  /// harmless and shipping twice is not.
  Future<models.Error> inventoriesCommit({required String orderRef}) async {
    const String apiPath = '/v1/inventories/commit';

    final Map<String, dynamic> apiParams = {
      'order_ref': orderRef,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The cancellation end of the reserve → commit | release lifecycle: it
  /// takes an `order_ref`, ends every hold still active on it, gives the stock
  /// back and writes a 'release' booking for each one, exactly like the expiry
  /// sweeper. Idempotent: an order with nothing active answers released:0 —
  /// which is why it is a 200 and not the 422 commit answers.
  Future<models.Error> inventoriesRelease({required String orderRef}) async {
    const String apiPath = '/v1/inventories/release';

    final Map<String, dynamic> apiParams = {
      'order_ref': orderRef,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A reservation is stock promised to an `order_ref`. It is created only by
  /// POST /inventories/reserve and moved only by /commit, /release and the
  /// expiry sweep — there is no create, update or delete route, because the
  /// lifecycle IS the API. Only an 'active' hold counts towards a stock row's
  /// `reserved`; 'released' and 'committed' rows stay for the audit trail and
  /// hold nothing. This is the answer to "what is this order actually holding"
  /// (`?order_ref=…`) and to "what is holding this stock"
  /// (`?status=active&location_id=…`) — the second is the only way to see
  /// WHY a row's `reserved` is what it is, since a stock row reports the total
  /// and never who asked for it. `expires_at` filters on an exact timestamp and
  /// not a range, so this cannot answer "what expires today"; the deadline is
  /// acted on by POST /inventories/reservations/sweep, not by reading it here.
  Future<models.Error> inventoriesReservationsList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? locationId,
      String? productId,
      String? sku,
      double? quantity,
      String? orderRef,
      enums.InventoriesReservationsListStatus? status,
      String? expiresAt,
      String? metadata,
      String? createdAt,
      String? updatedAt}) async {
    const String apiPath = '/v1/inventories/reservations';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (locationId != null) 'location_id': locationId,
      if (productId != null) 'product_id': productId,
      if (sku != null) 'sku': sku,
      if (quantity != null) 'quantity': quantity,
      if (orderRef != null) 'order_ref': orderRef,
      if (status != null) 'status': status.value,
      if (expiresAt != null) 'expires_at': expiresAt,
      if (metadata != null) 'metadata': metadata,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The expiry sweeper, also run by the 'expire-reservations' schedule every 15
  /// minutes. Releases reservations past their own expires_at and — once
  /// reservation_ttl_minutes is above 0 — reservations older than that
  /// lifetime which never carried a deadline. Each release gives the stock back
  /// and writes a 'release' booking, exactly like a cancellation. Idempotent: a
  /// second run finds nothing.
  Future<models.ReservationSweepResult> inventoriesReservationsSweep(
      {required Map data}) async {
    const String apiPath = '/v1/inventories/reservations/sweep';

    final Map<String, dynamic> apiParams = {
      'data': data,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ReservationSweepResult.fromMap(res.data);
  }

  /// A reservation is stock promised to an `order_ref`. It is created only by
  /// POST /inventories/reserve and moved only by /commit, /release and the
  /// expiry sweep — there is no create, update or delete route, because the
  /// lifecycle IS the API. Only an 'active' hold counts towards a stock row's
  /// `reserved`; 'released' and 'committed' rows stay for the audit trail and
  /// hold nothing. One hold, with the three facts that are not on the order it
  /// belongs to: which location it was allocated to, when it expires, and — in
  /// `metadata.backordered` — how much of it was never covered by stock, which
  /// is how a promise made under a permissive backorder policy stays visible
  /// afterwards. The id is for reading only. Every transition acts on the whole
  /// `order_ref` (/commit, /release, the sweep), so there is no route that takes
  /// this id and no way to release one line of an order on its own.
  Future<models.Error> inventoriesReservationsGet({required String id}) async {
    final String apiPath =
        '/v1/inventories/reservations/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Takes a hold against an `order_ref`, and plans the whole call before
  /// writing anything, so a reservation that cannot be satisfied changes
  /// nothing. WHICH location serves an item is not the caller's to choose: the
  /// tenant's allocation_strategy decides it ('priority', walking the enabled
  /// locations by their priority; 'nearest', matching ship_to against a
  /// location's country; or 'single_location' for the whole order);
  /// backorder_policy decides what happens when none can — refuse (422), or
  /// reserve anyway and let availability go negative. expires_at defaults from
  /// reservation_ttl_minutes and the sweeper enforces it.
  Future<models.Error> inventoriesReserve(
      {required String orderRef,
      String? expiresAt,
      List<models.InventoryStockItem>? items,
      String? locationCode,
      String? productId,
      double? quantity,
      Map? shipTo,
      String? sku}) async {
    const String apiPath = '/v1/inventories/reserve';

    final Map<String, dynamic> apiParams = {
      'expires_at': expiresAt,
      if (items != null) 'items': items.map((p) => p.toMap()).toList(),
      'location_code': locationCode,
      'order_ref': orderRef,
      'product_id': productId,
      'quantity': quantity,
      if (shipTo != null) 'ship_to': shipTo,
      'sku': sku,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}

part of '../revenexx.dart';

/// WHERE stock is kept — the list every other group points at. A location is
/// a warehouse, a shop floor, a supplier that dropships or a virtual bucket
/// for pre-orders and quarantine, and it holds no quantity itself: what is at
/// it is a stock level, and the `location_id` on every stock row, every ledger
/// booking and every reservation resolves here. Three columns carry the
/// behaviour and only one of them is obvious: `type` is descriptive and
/// nothing branches on it, `priority` is what the allocation strategy sorts by
/// when it picks a location to reserve from, and `enabled` is the on/off
/// switch — a disabled location keeps its stock and every row that points at
/// it, and simply stops being offered by availability and reserve, which is
/// the reversible thing to do instead of deleting one. Every tenant is seeded
/// with `main` on install, because the stock calls fall back to a configured
/// default location code and a tenant with none would answer 400 on its first
/// receipt.
class InventoriesLocations extends Service {
  /// Initializes a [InventoriesLocations] service
  InventoriesLocations(super.client);

  /// A location is WHERE stock is kept — a warehouse, a shop floor, a supplier
  /// that dropships, or a virtual bucket for pre-orders and quarantine. It holds
  /// no quantity of its own: what is at it is a stock level. `type` is
  /// descriptive and nothing branches on it; `priority` is the number that
  /// decides which location a reservation is served from, and `enabled` decides
  /// whether it is offered at all. This is the list a `location_code` is
  /// resolved against on every stock call, so it is the first thing to read when
  /// a receipt answers "unknown location". It answers no quantities at all —
  /// how much is at a location is GET /inventories/stock?location_id=…, and
  /// what may still be sold is POST /inventories/availability. Filter
  /// `?enabled=true` for the operational subset: availability and reserve only
  /// ever look at enabled locations, so a disabled one is invisible to a shop
  /// while keeping every row that points at it.
  Future<models.Error> inventoriesLocationsList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? code,
      String? name,
      String? labels,
      enums.InventoriesLocationsListType? type,
      int? priority,
      bool? enabled,
      String? address,
      String? metadata,
      String? createdAt,
      String? updatedAt}) async {
    const String apiPath = '/v1/inventories/locations';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (labels != null) 'labels': labels,
      if (type != null) 'type': type.value,
      if (priority != null) 'priority': priority,
      if (enabled != null) 'enabled': enabled,
      if (address != null) 'address': address,
      if (metadata != null) 'metadata': metadata,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Registers a new place stock can be kept, and `type` says what kind of place
  /// it is: a warehouse of your own, a store whose shop floor a
  /// click-and-collect order draws on, a dropship supplier whose stock this row
  /// only tracks, or a virtual bucket that is not a building at all —
  /// pre-orders, consignment, a quarantine shelf. A create cannot omit `code`
  /// and `name`; every other column is optional or defaulted by the database.
  /// Two rows of this tenant may not share `code` — that is the 409, and it
  /// answers an update that moves a row onto a sibling's value exactly as it
  /// answers a second insert. A new location starts EMPTY and creating one moves
  /// nothing: stock arrives through POST /inventories/receive, or is transferred
  /// by two adjustments, one negative at the old location and one positive here.
  /// Mind the two columns that are not decoration — `priority` decides where a
  /// reservation is served from before `type` ever does (nothing branches on
  /// `type`), and `enabled` defaults to true, so a location created for a
  /// warehouse that has not opened yet starts being offered by availability and
  /// reserve immediately.
  Future<models.Error> inventoriesLocationsCreate(
      {required String code,
      required String name,
      Map? address,
      bool? enabled,
      Map? labels,
      Map? metadata,
      int? priority,
      enums.LocationType? type}) async {
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

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Gives a tenant its first location, `main`, so the stock calls have
  /// somewhere to book into: `receive`, `adjust` and `restock` fall back to the
  /// `default_location_code` setting when a caller names no `location_code`, and
  /// a tenant with no location at all answers 400 on its first receipt. The
  /// platform already runs this on `app.installed`, so calling it by hand is the
  /// repair for an install that predates the event or a `main` somebody deleted.
  /// Idempotent by CODE, not by contents: a location already carrying that code
  /// is reported under `existing` and is NOT touched, so a renamed or disabled
  /// `main` stays renamed and disabled. It creates nothing else and never
  /// removes a location.
  Future inventoriesLocationsDefaults() async {
    const String apiPath = '/v1/inventories/locations/defaults';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Deleting one takes every `stock_levels` row that points at it with it —
  /// the foreign key decides that, not this route. What the database does NOT
  /// clean up is everything else carrying the same id:
  /// `stock_movements.location_id` and `reservations.location_id` are plain uuid
  /// columns and not foreign keys, so those rows stay exactly where they are,
  /// pointing at a row that no longer exists, and nothing nulls the pointer.
  /// That asymmetry destroys the balances and keeps everything that refers to
  /// them, so the route REFUSES while anything still depends on the location and
  /// answers 409 with the count — taken here rather than left to whoever is
  /// about to click delete, because a client that pre-counts asks a second
  /// question whose answer disagrees the moment a receipt lands between the two
  /// calls. Two things block it. A stock row still carrying `on_hand`: the
  /// cascade would destroy recorded inventory and nothing in this app ever
  /// replays the ledger to rebuild a balance, so there is no undo. And a
  /// reservation still `active`: a promise to a customer must not outlive the
  /// row backing it — such a hold used to survive its stock row, after which
  /// /release lowered no `reserved` and still wrote its `release` booking, and
  /// /commit booked the whole quantity as a shortfall, neither of them an error.
  /// A stock row at zero does not block: it records no quantity. HISTORY never
  /// blocks, and is never deleted either — a movement is an accounting record
  /// and removing one would falsify it, so the bookings stay, naming a location
  /// that no longer resolves, BY DESIGN. A location that once had traffic and
  /// now holds nothing is exactly what a merchant closes. To get past the 409,
  /// adjust the stock to zero and release or commit the holds; where the
  /// location is merely out of service, PUT `enabled: false` keeps every row and
  /// can be undone.
  Future<models.Error> inventoriesLocationsDelete({required String id}) async {
    final String apiPath =
        '/v1/inventories/locations/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A location is WHERE stock is kept — a warehouse, a shop floor, a supplier
  /// that dropships, or a virtual bucket for pre-orders and quarantine. It holds
  /// no quantity of its own: what is at it is a stock level. `type` is
  /// descriptive and nothing branches on it; `priority` is the number that
  /// decides which location a reservation is served from, and `enabled` decides
  /// whether it is offered at all. This is the route that turns an id back into
  /// a place: `location_id` is on every stock row, every ledger booking and
  /// every reservation, and none of them carries the code or the name. Reading
  /// it also answers the two questions those rows raise — whether the location
  /// is still `enabled` (a disabled one is skipped by availability and reserve
  /// while its stock stays exactly where it is) and where its `priority` puts it
  /// when the allocation strategy picks somewhere to reserve from.
  Future<models.Error> inventoriesLocationsGet({required String id}) async {
    final String apiPath =
        '/v1/inventories/locations/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Partial update: send the fields that change. The one with consequences is
  /// `enabled` — setting it to false is how a location is taken out of service
  /// WITHOUT losing anything. Availability and reserve stop looking at it, so
  /// its stock stops being sellable, while every stock row, ledger booking and
  /// reservation that points at it survives untouched and comes back the moment
  /// it is enabled again. That is the reversible alternative to DELETE, which is
  /// not reversible at all. Changing `code` is the other sharp edge: rows keep
  /// their `location_id` so nothing moves, but every caller that names the old
  /// code in `location_code` starts getting 400 "unknown location". Two rows of
  /// this tenant may not share `code` — that is the 409, and it answers an
  /// update that moves a row onto a sibling's value exactly as it answers a
  /// second insert.
  Future<models.Error> inventoriesLocationsUpdate(
      {required String id,
      Map? address,
      String? code,
      bool? enabled,
      Map? labels,
      Map? metadata,
      String? name,
      int? priority,
      enums.LocationType? type}) async {
    final String apiPath =
        '/v1/inventories/locations/{id}'.replaceAll('{id}', id);

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

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}

part of '../revenexx.dart';

/// Commerce Studio Prices App — product prices as PRICE LISTS with the full
/// field repertoire: quantity tiers (Staffelpreise), per-entry validity
/// windows (promo prices), currency per list, priorities and buyer scoping
/// (contact, organization, channel — customer segments dock on later). Every
/// list states whether its amounts are NET or GROSS, and a list that does not
/// falls back to the tenant&#039;s declared basis instead of to a column default
/// nobody chose; the resolve answer names which of the two decided. Rounding
/// (decimals, mode, merchant price endings) is tenant policy, not a hardcoded
/// wire scale. A missing price is a first-class state: the resolve call
/// answers on_request instead of 0 — the storefront shows &#039;price on
/// request&#039;, never €0. POST /prices/resolve is THE live price call and the
/// designated override point: ERP-priced tenants replace exactly this one
/// capability with a custom app via the gateway capability override while the
/// configuration CRUD stays standard.
class Prices extends Service {
  /// Initializes a [Prices] service
  Prices(super.client);

  /// One page of the tenant's price list HEADERS — code, currency, tax basis,
  /// status, priority, validity window, buyer scope and the default flag. Never
  /// the prices themselves: those are a separate page per list (`GET
  /// /prices/lists/{list_id}/entries`).
  ///
  /// Every filter is an EXACT match on a column, ANDed together; a query key
  /// that is not a column is dropped in silence, which is why the answer echoes
  /// `filter`. The scope, currency and status filters are the useful ones,
  /// because between them they narrow the set to the candidates a resolve call
  /// in a given currency for a given buyer can draw on at all.
  ///
  /// Market is deliberately not among them: a list is scoped to a market by an
  /// assignment, not a column, and the `X-Revenexx-Market` header is what
  /// narrows the set — this admin listing shows the tenant's lists whatever
  /// their market.
  Future<models.Error> pricesListsList(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? currency,
      enums.PriceListStatus? status,
      int? priority,
      bool? isDefault,
      enums.PriceListTaxBasis? taxBasis,
      bool? taxIncluded,
      bool? requiresAuth,
      String? contactId,
      String? organizationId,
      String? channelId,
      String? validFrom,
      String? validUntil,
      String? createdAt,
      String? updatedAt,
      int? limit,
      int? offset,
      String? order}) async {
    const String apiPath = '/v1/prices/lists';

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (currency != null) 'currency': currency,
      if (status != null) 'status': status.value,
      if (priority != null) 'priority': priority,
      if (isDefault != null) 'is_default': isDefault,
      if (taxBasis != null) 'tax_basis': taxBasis.value,
      if (taxIncluded != null) 'tax_included': taxIncluded,
      if (requiresAuth != null) 'requires_auth': requiresAuth,
      if (contactId != null) 'contact_id': contactId,
      if (organizationId != null) 'organization_id': organizationId,
      if (channelId != null) 'channel_id': channelId,
      if (validFrom != null) 'valid_from': validFrom,
      if (validUntil != null) 'valid_until': validUntil,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Opens an empty book, and states in one row the four things that decide
  /// whether it will ever price anything: its currency, its priority within a
  /// specificity group, its validity window, and its buyer scope (contact,
  /// organization or channel — leave all three empty for a list open to
  /// everyone).
  ///
  /// `code` and `name` are the only fields required — they are the two columns
  /// with no default — and `code` is unique per tenant, so a code already in
  /// use is a 409 rather than an overwrite of prices somebody is selling on.
  ///
  /// Everything else has a default, and two of them are worth choosing rather
  /// than accepting. `currency` defaults to EUR and is the currency of every
  /// amount in the list, since entries carry none; a resolve call only considers
  /// lists in the currency it is asked about, and nothing is ever converted.
  /// `tax_basis` defaults to NOTHING, which means the amounts inherit the
  /// tenant's `tax_inclusive_default` — state net or gross here and the answer
  /// stops depending on a tenant setting somebody may change later.
  ///
  /// `is_default: true` here does NOT demote the list that currently holds the
  /// flag: you end up with two defaults, and which of them prices an item is
  /// left to the tenant's tie-break. Create the list, then move the flag with
  /// `POST /prices/lists/{list_id}/make-default`.
  ///
  /// A new list prices nothing at all until it has entries, so it is inert until
  /// you add them — which makes it safe to create one ahead of the prices that
  /// will fill it.
  Future<models.Error> pricesListsCreate(
      {required String code,
      required String name,
      String? channelId,
      String? contactId,
      String? currency,
      String? description,
      bool? isDefault,
      Map? labels,
      Map? metadata,
      String? organizationId,
      int? priority,
      bool? requiresAuth,
      enums.PriceListStatus? status,
      enums.PriceListTaxBasis? taxBasis,
      bool? taxIncluded,
      String? validFrom,
      String? validUntil}) async {
    const String apiPath = '/v1/prices/lists';

    final Map<String, dynamic> apiParams = {
      'channel_id': channelId,
      'code': code,
      'contact_id': contactId,
      if (currency != null) 'currency': currency,
      'description': description,
      if (isDefault != null) 'is_default': isDefault,
      'labels': labels,
      'metadata': metadata,
      'name': name,
      'organization_id': organizationId,
      if (priority != null) 'priority': priority,
      if (requiresAuth != null) 'requires_auth': requiresAuth,
      if (status != null) 'status': status.value,
      'tax_basis': taxBasis?.value,
      if (taxIncluded != null) 'tax_included': taxIncluded,
      'valid_from': validFrom,
      'valid_until': validUntil,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Gives a tenant the one open list every tenant needs, so nothing has to
  /// exist before the first price can be written. Almost nobody calls it: the
  /// app runs it by itself on `app.installed`, and the route is the manual
  /// re-run — for a tenant installed before that hook existed, or one whose
  /// standard list was deleted. Because it is idempotent it is also safe to call
  /// from a provisioning script that cannot know which of the two is the case.
  ///
  /// What it writes comes from settings, not from constants: the code is the
  /// tenant's `default_price_list_code`, the currency its `default_currency`,
  /// and the seeded list STATES its tax basis from `tax_inclusive_default`
  /// instead of inheriting it, because the one list every tenant gets should not
  /// be the ambiguous one.
  ///
  /// Idempotent twice over — by that code, and by the existence of ANY default
  /// list. So calling it repeatedly is free, changing `default_price_list_code`
  /// later never produces a second list, and a tenant that has made some other
  /// list the default is left exactly as it is (the answer names that list under
  /// `existing`). It writes nothing else: it never demotes, never touches
  /// entries, and never repairs a list that is already there.
  Future<models.PriceListDefaultsResponse> pricesListsDefaults() async {
    const String apiPath = '/v1/prices/lists/defaults';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PriceListDefaultsResponse.fromMap(res.data);
  }

  /// Deletes the list AND every price in it. `price_entries.price_list_id`
  /// references this row ON DELETE CASCADE, so the entries go in the same
  /// statement: nothing asks, nothing blocks, a book of 40 000 prices deletes
  /// exactly as fast as an empty one, and the answer is a bare `{deleted, id}`
  /// that never says how many prices went with it.
  ///
  /// What that means while a storefront is quoting: from the next resolve call
  /// the items this list priced fall through to the next candidate list, and
  /// where there is none the answer is `on_request` — "price on request" for
  /// something that had a price a second ago, never €0. If the deleted list
  /// held the default flag the tenant has no default until one is moved onto
  /// another list; re-running `POST /prices/lists/defaults` recreates the
  /// standard list only while no other default exists.
  ///
  /// This is not the way to take a list out of circulation. `status: "inactive"`
  /// does that immediately and reversibly and keeps the prices; deleting is for
  /// a list whose contents you are prepared to import again, because nothing
  /// here is recoverable.
  Future<models.Error> pricesListsDelete({required String id}) async {
    final String apiPath = '/v1/prices/lists/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The list HEADER, never its prices: currency, tax basis, buyer scope,
  /// priority, validity window and the default flag — the settings that decide
  /// WHETHER this list prices a given buyer, before any amount is looked at. Its
  /// entries are a separate page (`GET /prices/lists/{list_id}/entries`),
  /// because a price book runs to thousands of rows and no read of a list should
  /// carry them. This is the admin view and it reads the base table rather than
  /// the market-scoped one the resolve call uses, so a list that is invisible in
  /// the active market is still returned here.
  Future<models.Error> pricesListsGet({required String id}) async {
    final String apiPath = '/v1/prices/lists/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A partial update: send only what changes, omitted fields keep their value,
  /// and a payload with no updatable column at all is refused rather than
  /// answered with an unchanged row. There is no draft and no publish step —
  /// the next resolve call reads what this one wrote.
  ///
  /// Three edits do more than their field names suggest. `currency`
  /// re-denominates without converting: entries carry no currency of their own,
  /// so 19.90 EUR becomes 19.90 CHF and the whole book is re-priced by one edit.
  /// `status: "inactive"` takes the list out of every quote immediately while
  /// keeping its prices — the reversible way to stop selling on a list, and
  /// the one to reach for instead of deleting it. `code` is the handle imports
  /// and integrations address the list by, and a code another list already holds
  /// is a 409.
  ///
  /// `is_default` behaves here exactly as it does on create: setting it true
  /// leaves the incumbent default in place, so use `POST
  /// /prices/lists/{list_id}/make-default`, which demotes in the same call.
  Future<models.Error> pricesListsUpdate(
      {required String id,
      String? channelId,
      String? code,
      String? contactId,
      String? currency,
      String? description,
      bool? isDefault,
      Map? labels,
      Map? metadata,
      String? name,
      String? organizationId,
      int? priority,
      bool? requiresAuth,
      enums.PriceListStatus? status,
      enums.PriceListTaxBasis? taxBasis,
      bool? taxIncluded,
      String? validFrom,
      String? validUntil}) async {
    final String apiPath = '/v1/prices/lists/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      'channel_id': channelId,
      if (code != null) 'code': code,
      'contact_id': contactId,
      if (currency != null) 'currency': currency,
      'description': description,
      if (isDefault != null) 'is_default': isDefault,
      'labels': labels,
      'metadata': metadata,
      if (name != null) 'name': name,
      'organization_id': organizationId,
      if (priority != null) 'priority': priority,
      if (requiresAuth != null) 'requires_auth': requiresAuth,
      if (status != null) 'status': status.value,
      'tax_basis': taxBasis?.value,
      if (taxIncluded != null) 'tax_included': taxIncluded,
      'valid_from': validFrom,
      'valid_until': validUntil,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The prices inside one list, a page at a time. An entry is a rung rather
  /// than "the price of a product": it carries a quantity threshold, an amount
  /// and a unit, its own validity window, and — where the answer is
  /// deliberately no number at all — an `on_request` marker instead of one. So
  /// this page is where the quantity tiers, the promo windows and the "ask us"
  /// markers of a book are read.
  ///
  /// The ladder of one item is the set of entries sharing an identity, so
  /// `?product_id=…` (or `?sku=…`) is how a caller reads the Staffel a
  /// resolve answer was built from, and `?price_type=on_request` is how the
  /// markers are audited. The response also carries `page` and `filter` like
  /// every other list, and an unknown list_id answers 404 instead of an empty
  /// page.
  Future<models.Error> pricesEntriesList(
      {required String listId,
      String? id,
      String? productId,
      String? sku,
      enums.PriceEntryType? priceType,
      double? quantityMin,
      double? unitPrice,
      String? unit,
      String? validFrom,
      String? validUntil,
      String? createdAt,
      String? updatedAt,
      int? limit,
      int? offset,
      String? order}) async {
    final String apiPath =
        '/v1/prices/lists/{list_id}/entries'.replaceAll('{list_id}', listId);

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (sku != null) 'sku': sku,
      if (priceType != null) 'price_type': priceType.value,
      if (quantityMin != null) 'quantity_min': quantityMin,
      if (unitPrice != null) 'unit_price': unitPrice,
      if (unit != null) 'unit': unit,
      if (validFrom != null) 'valid_from': validFrom,
      if (validUntil != null) 'valid_until': validUntil,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Adds ONE rung to one item's quantity ladder in this list. The only thing an
  /// entry must have is an identity — `product_id` or `sku`, which the row
  /// CHECK enforces; everything else defaults, and one of those defaults
  /// deserves a warning.
  ///
  /// `unit_price` defaults to **0**. That is the one door through which a zero
  /// price enters an app whose whole doctrine is that a missing price is
  /// `on_request` and never €0: a create that forgets the amount publishes a
  /// free item, and the storefront shows 0.00 instead of "price on request".
  /// Send the amount, or send `price_type: "on_request"` where there genuinely
  /// is none. The amount is per ONE unit of `unit`, in the LIST's currency
  /// (entries carry none) and on the LIST's tax basis, as a decimal in major
  /// units — 19.90, never 1990.
  ///
  /// Nothing enforces one rung per (item, quantity): create the same
  /// `quantity_min` twice and both rows come back in the resolved `tiers`, with
  /// the last of them setting the price — an ambiguous ladder no error ever
  /// mentions. `quantity_min` defaults to 1 and `price_type` to `standard`.
  ///
  /// This route is for a rung at a time. A whole ladder in one call is `POST
  /// …/entries/ladder`, an import is `POST …/entries/bulk`, and a complete
  /// rewrite of the book is `PUT …/entries`. An unknown `list_id` answers 404
  /// rather than attaching a price to nothing.
  Future<models.Error> pricesEntriesCreate(
      {required String listId,
      Map? metadata,
      enums.PriceEntryType? priceType,
      String? productId,
      double? quantityMin,
      String? sku,
      String? unit,
      double? unitPrice,
      String? validFrom,
      String? validUntil}) async {
    final String apiPath =
        '/v1/prices/lists/{list_id}/entries'.replaceAll('{list_id}', listId);

    final Map<String, dynamic> apiParams = {
      'metadata': metadata,
      if (priceType != null) 'price_type': priceType.value,
      'product_id': productId,
      if (quantityMin != null) 'quantity_min': quantityMin,
      'sku': sku,
      'unit': unit,
      if (unitPrice != null) 'unit_price': unitPrice,
      'valid_from': validFrom,
      'valid_until': validUntil,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Set semantics over the WHOLE list, not over one item: every entry of the
  /// list is deleted and the payload becomes the complete new book. It exists
  /// for the two callers that genuinely hold the whole book in hand — the
  /// Cockpit's table editor, whose save is this call, and a small import.
  /// `entries: []` is a legal payload and empties the list — the items it
  /// priced then resolve from the next candidate list, or come back
  /// `on_request`.
  ///
  /// Two consequences of "delete, then insert". Every row is inserted fresh, so
  /// all entry ids change and anything holding one is stale afterwards. And it
  /// is not a transaction: the deletes go out before the inserts, so a payload
  /// that fails part-way through leaves the list holding the rows that landed
  /// and none of the ones it had. What protects you is that the whole payload is
  /// normalized and validated BEFORE the first delete — a malformed row is a
  /// 400 with the list untouched.
  ///
  /// For a book of any size, or for adding to one you want to keep, use `POST
  /// …/entries/bulk`: it upserts in chunks and never wipes.
  Future<models.Error> pricesEntriesReplace(
      {required String listId,
      required List<models.PriceEntryReplaceItem> entries}) async {
    final String apiPath =
        '/v1/prices/lists/{list_id}/entries'.replaceAll('{list_id}', listId);

    final Map<String, dynamic> apiParams = {
      'entries': entries.map((p) => p.toMap()).toList(),
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Moves every priced entry of the list at once, in whichever of the two ways
  /// a merchant thinks about a price change: `percent` for a relative one (5
  /// raises everything by 5 %) or `amount` for a flat one added to every unit
  /// price. One or the other, never both, and `sku_prefix` narrows the change to
  /// part of the book. On-request entries are never touched, because a
  /// percentage of "ask us" is not a number.
  ///
  /// The other half of a bulk change is what the arithmetic leaves behind: a 7 %
  /// increase turns 19.90 into 21.293, which no merchant prints. Results are
  /// therefore rounded to the tenant's price_precision/rounding_mode and then
  /// snapped to a declared merchant price ending — x.99, x.95, a whole number
  /// — either the one this call names or the tenant's `bulk_adjust_rounding`.
  /// dry_run answers the same preview and writes nothing, which is what the
  /// Cockpit dialog shows before it commits.
  Future<models.Error> pricesEntriesAdjust(
      {required String listId,
      double? amount,
      bool? dryRun,
      double? percent,
      enums.PriceEndingRule? rounding,
      String? skuPrefix}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries/adjust'
        .replaceAll('{list_id}', listId);

    final Map<String, dynamic> apiParams = {
      'amount': amount,
      'dry_run': dryRun,
      'percent': percent,
      'rounding': rounding?.value,
      'sku_prefix': skuPrefix,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Adds entries to a list without wiping it, and UPSERTS rather than inserts:
  /// a row naming a rung the list already has (same product_id/sku AND
  /// quantity_min) updates that rung, so re-running an import corrects prices
  /// instead of duplicating the ladder. `mode: 'append'` keeps the old
  /// insert-everything behaviour. Inserts go out as one PostgREST bulk write per
  /// 1000 rows.
  ///
  /// This is the route for a large price book, and a large book arrives in
  /// chunks: a call carries at most 5000 entries and a longer payload is refused
  /// with 400 rather than truncated, so an importer of 200 000 prices sends
  /// forty calls. Because the upsert is keyed on the rung rather than on a row
  /// id, the chunks may be re-sent and re-ordered freely — a chunk that lands
  /// twice writes the same prices twice.
  Future<models.Error> pricesEntriesBulk(
      {required String listId,
      required List<models.PriceEntryReplaceItem> entries,
      enums.PriceEntriesBulkMode? mode}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries/bulk'
        .replaceAll('{list_id}', listId);

    final Map<String, dynamic> apiParams = {
      'entries': entries.map((p) => p.toMap()).toList(),
      'mode': mode?.value,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Writes a whole quantity-tier ladder (Staffelpreise) for ONE item in one
  /// call, instead of typing a rung at a time. Tiers are a flat quantity_min
  /// column on purpose — the ladder IS the set of entries sharing an identity,
  /// and resolve returns it sorted as one array. What was missing was the
  /// gesture: "19.90 from 1, 5 % off per tier at 10 and 50". Prices are rounded
  /// and snapped exactly as a bulk adjust is.
  Future<models.Error> pricesEntriesLadder(
      {required String listId,
      required double basePrice,
      double? discountPercent,
      String? productId,
      List<double>? quantities,
      bool? replace,
      enums.PriceEndingRule? rounding,
      String? sku,
      String? unit}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries/ladder'
        .replaceAll('{list_id}', listId);

    final Map<String, dynamic> apiParams = {
      'base_price': basePrice,
      'discount_percent': discountPercent,
      'product_id': productId,
      'quantities': quantities,
      'replace': replace,
      'rounding': rounding?.value,
      'sku': sku,
      'unit': unit,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Removes ONE rung. The item keeps its other rungs and stays priced — which
  /// is exactly what makes the lowest rung the dangerous one to delete.
  ///
  /// Below the first threshold the FIRST rung's price applies (a minimum
  /// quantity belongs to the catalog, not to the price ladder). So deleting the
  /// "from 1" rung of a 1/10/50 ladder does not make single units unpriced: it
  /// sells them at the 10-up volume price, silently, from the next resolve call
  /// onwards. Nothing in the answer marks that the ladder no longer starts where
  /// it used to.
  ///
  /// Delete an item's LAST rung and this list stops pricing it altogether: the
  /// item falls through to the next candidate list, or comes back `on_request`
  /// — never €0. To retire a price without losing it, set the rung's
  /// `price_type` to `on_request` instead, or deactivate the list. An entry
  /// belonging to another list answers 404 rather than being deleted through the
  /// wrong parent.
  Future<models.Error> pricesEntriesDelete(
      {required String listId, required String id}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries/{id}'
        .replaceAll('{list_id}', listId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One rung of one ladder, exactly as stored — nothing is rounded, converted
  /// or taxed on the way out. `unit_price` is per ONE unit of `unit`, in the
  /// LIST's currency and on the LIST's tax basis; the entry itself carries
  /// neither, which is why a rung read on its own is not yet a price you can
  /// show a buyer. `POST /prices/resolve` is what turns it into one: it picks
  /// the rung that applies to a quantity, names the basis, and adds the
  /// net/gross pair and the tax rate. The id is checked against the list in the
  /// path, so an entry belonging to another list answers 404 rather than being
  /// read through the wrong parent.
  Future<models.Error> pricesEntriesGet(
      {required String listId, required String id}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries/{id}'
        .replaceAll('{list_id}', listId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A partial update of one rung: send only what changes, a payload with no
  /// updatable column at all is refused, and the next resolve call reads what
  /// this one wrote.
  ///
  /// Two edits reach further than the field they touch. Moving `quantity_min`
  /// moves the rung within the ladder and may land on a threshold the item
  /// already has — nothing stops it, and both rows then sit in the resolved
  /// `tiers`. Setting `price_type: "on_request"` on ONE rung takes the WHOLE
  /// item off price in this list: resolution stops there and answers "price on
  /// request" even though the other rungs still carry amounts, and even where a
  /// less specific list would have priced it. That is the intended way to say
  /// "ask us" for an item, and a surprise if you meant to retire a single tier.
  ///
  /// What this route cannot change is what the amount MEANS: currency and tax
  /// basis belong to the list, so re-denominating or switching net/gross is a
  /// list edit, not an entry edit. An entry of another list answers 404.
  Future<models.Error> pricesEntriesUpdate(
      {required String listId,
      required String id,
      Map? metadata,
      enums.PriceEntryType? priceType,
      String? productId,
      double? quantityMin,
      String? sku,
      String? unit,
      double? unitPrice,
      String? validFrom,
      String? validUntil}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/entries/{id}'
        .replaceAll('{list_id}', listId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      'metadata': metadata,
      if (priceType != null) 'price_type': priceType.value,
      'product_id': productId,
      if (quantityMin != null) 'quantity_min': quantityMin,
      'sku': sku,
      'unit': unit,
      if (unitPrice != null) 'unit_price': unitPrice,
      'valid_from': validFrom,
      'valid_until': validUntil,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Promotes this list AND demotes whoever held the flag, in one call. The flag
  /// is a single answer, not a per-row opinion: resolution uses it as the last
  /// tie-break, so two defaults leave the winner to row order and none leaves a
  /// tie unsettled. Promote-then-demote as two PATCHes from a client produces
  /// exactly those two states whenever the second call does not land.
  ///
  /// The write is as small as the change: exactly one write per row whose flag
  /// was wrong, and none at all for the rows that were already right. A tenant
  /// already in this state is therefore not written to, which is what makes
  /// repeating the call free. The answer is this list as it now stands plus the
  /// codes it demoted — empty when it already held the flag.
  Future<models.Error> pricesListsMakeDefault(
      {required String listId, required Map data}) async {
    final String apiPath = '/v1/prices/lists/{list_id}/make-default'
        .replaceAll('{list_id}', listId);

    final Map<String, dynamic> apiParams = {
      'data': data,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The live price call. Everything else in this app configures prices; this is
  /// the one route that ANSWERS them, and a storefront reaches it on every
  /// listing, every product page and every cart. Send up to 200 items and the
  /// buyer context they are for — contact, organization, market and channel
  /// — and get back, per item, the unit price this buyer pays, the net/gross
  /// pair, the tax rate, the list that decided it and that item's full quantity
  /// ladder.
  ///
  /// Which price wins when several match is the whole value of this app, and it
  /// is not guessable from the field types. The order, in full:
  ///
  /// 1. **Candidates.** A list is a candidate when it is `active`, its currency
  /// EQUALS the currency of the call (nothing is ever converted — a list in
  /// another currency simply does not price the item), the instant `at` falls
  /// inside its validity window, it is visible in the buyer’s market (the
  /// `X-Revenexx-Market` header scopes the list view; lists assigned to no
  /// market are global and always visible), and its buyer scope matches or is
  /// open. A `requires_auth` list is dropped for a buyer with neither
  /// `contact_id` nor `organization_id`.
  /// 2. **Specificity decides first, and priority never overrules it.**
  /// contact-scoped (4) beats organization-scoped (3) beats channel-scoped (2)
  /// beats open (0). An organization list at `priority: 0` therefore wins over
  /// an open list at `priority: 100`.
  /// 3. **Within one specificity level:** `priority` descending, then
  /// non-default before default — the default list is deliberately last, so it
  /// prices only what nothing else did.
  /// 4. **A genuine tie** (same specificity, same priority, same default flag)
  /// is settled by the tenant’s `price_list_priority_tiebreak` setting —
  /// `lowest_price`, `highest_price`, `newest` or `code` — never by the order
  /// the database happened to return rows in. The setting in force is echoed in
  /// `basis.price_list_priority_tiebreak`.
  /// 5. **The first list that prices the item wins, and the search stops there**
  /// — even if a later, less specific list is cheaper. Its FULL tier ladder
  /// comes back in `tiers`; the rung with the highest `quantity_min` at or below
  /// the requested `quantity` sets `unit_price`, and below the first rung the
  /// first rung applies.
  /// 6. **An `on_request` entry stops the search too**, and inside a tie it
  /// outranks every price: a list that says "ask us" for this buyer is
  /// authoritative, and cannot be undercut by a list that happens to sort after
  /// it.
  /// 7. **Nothing found → `on_request`, never 0**, with a reason
  /// (`not_priced`, `on_request_entry`, `anonymous_denied`, `no_identity`). A
  /// storefront shows "price on request"; it must never show €0.
  ///
  /// Amounts: `unit_price` is per ONE unit of the entry’s `unit`, in
  /// `currency`, as a decimal in MAJOR units (19.90) — never minor units/cents
  /// — and on the basis `tax_basis` names. `tax_basis` comes from the list’s
  /// own column, else from a legacy `tax_included: true` on it, else from the
  /// tenant’s `tax_inclusive_default`; `tax_basis_source` says which of the
  /// three. Read `unit_price_net`/`unit_price_gross` where you need an
  /// unambiguous number.
  ///
  /// Tax is never guessed. The market comes from the `X-Revenexx-Market` header
  /// (a market CODE) or from `market_id` in the body; with several markets whose
  /// rates differ and no signal, the answer is `tax.resolved: false`, `reason:
  /// market_required` rather than another market’s VAT. `tax_rate: null` means
  /// UNKNOWN, not 0 %.
  ///
  /// An item that cannot be priced never fails the call: it comes back
  /// on_request with its reason, so one bad line in a cart does not cost the
  /// other lines their prices.
  ///
  /// One last thing worth knowing before you build on it. This is the most
  /// customised surface this app has in the field: pricing is where a tenant's
  /// ERP usually has the last word, and a tenant whose prices are computed there
  /// does not want this app's resolution order at all. So the route is
  /// deliberately shaped to be REPLACED — one required field, no rejection of
  /// an item the caller got wrong, an answer that stands on its own — and it
  /// is designed to be swapped 1:1 for a custom app through the gateway's
  /// capability override. An ERP-priced tenant overrides `prices.resolve` alone:
  /// the same path, the same request and the same response, answered by their
  /// own service, while every configuration route here (lists, entries, ladders,
  /// bulk changes, vocabularies) stays standard and keeps working. That is why
  /// the contract below is smaller than the machinery behind it, and why it
  /// changes reluctantly.
  Future<models.Error> pricesResolve(
      {required List<models.PriceResolveItem> items,
      String? at,
      String? channelId,
      String? contactId,
      String? currency,
      String? marketId,
      String? organizationId}) async {
    const String apiPath = '/v1/prices/resolve';

    final Map<String, dynamic> apiParams = {
      'at': at,
      'channel_id': channelId,
      'contact_id': contactId,
      'currency': currency,
      'items': items.map((p) => p.toMap()).toList(),
      'market_id': marketId,
      'organization_id': organizationId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Discovery for the vocabulary routes: the enums this app enforces, each with
  /// its name, its title and its description — and deliberately WITHOUT its
  /// values, so a UI can cache this one small answer and then fetch only the
  /// value sets it actually renders. Names: list-statuses, price-types,
  /// tax-bases. Fetch one with GET /prices/vocabularies/{name}; a client holding
  /// the qualified pair 'prices.<name>' builds that URL from the pair alone.
  Future<models.PriceVocabularyIndex> pricesVocabulariesList() async {
    const String apiPath = '/v1/prices/vocabularies';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PriceVocabularyIndex.fromMap(res.data);
  }

  /// One vocabulary in full: every permitted value, each with the title and
  /// description a human reads for it and the badge tone a UI colours it with
  /// — enough to render a select or a status chip without keeping a private
  /// copy of an enum this app enforces. The values are read out of the column's
  /// CHECK constraint, so the served set IS the enforced set and the two cannot
  /// drift — a value added to the constraint appears here even before anyone
  /// labels it, titled from its own key. Values come back in constraint order,
  /// which is the order a select should offer. 'closed' says the set is
  /// exhaustive, so a value outside it is stale data rather than a missing
  /// label. Answers 404 for an unknown name. Names: list-statuses, price-types,
  /// tax-bases.
  Future<models.Error> pricesVocabulariesGet(
      {required enums.PricesVocabulariesGetName name}) async {
    final String apiPath =
        '/v1/prices/vocabularies/{name}'.replaceAll('{name}', name.value);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}

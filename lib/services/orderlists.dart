part of '../revenexx.dart';

/// Commerce Studio Order Lists App — saved, reusable position collections
/// (shopping &amp; label lists) that turn back into a cart or an order in one
/// call. A list is owned by a contact and can be shared across the
/// organization (shared; read-only unless the tenant makes shared lists
/// team-editable). Whole positions are stored: article (product_id/sku),
/// quantity, unit, price, tax rate, cost center, position texts and custom
/// SKU. GET /orderlists returns the owner&#039;s own lists union the organization&#039;s
/// shared lists; positions are managed as a nested items resource (list / add
/// / bulk-replace / update / remove). POST /orderlists/{id}/cart hands the
/// positions to the carts app, POST /orderlists/{id}/order to the orders app.
/// Both collections answer the platform envelope { items, page, filter } with
/// limit/offset/order.
class Orderlists extends Service {
  /// Initializes a [Orderlists] service
  Orderlists(super.client);

  /// What a caller may see is a UNION, not an intersection: the lists this
  /// contact owns, plus the lists their organization shares — `owner_id = X OR
  /// (organization_id = Y AND shared)`. A list that satisfies both sides is
  /// merged by id and counted once. Where the gateway resolved an acting
  /// contact, that contact and their organization ARE the scope and neither
  /// `owner_id` nor `organization_id` in the query can widen it; without a
  /// resolved principal — a back-office caller holding the tenant key — the
  /// two are read from the query, and a call that names neither sees every list
  /// the tenant keeps. Three filters are read in all — `owner_id`,
  /// `organization_id`, `kind` — and any OTHER query key is ignored rather
  /// than refused, which is what the `filter` echo makes visible: a key that is
  /// missing there was not applied. When only one side of the predicate is in
  /// play the database pages the rows and reports the true total; when both are,
  /// each side is read separately and bounded at a thousand rows, merged, and
  /// paged after the merge, so `total` is the size of the merged set rather than
  /// a database count. The default sort is `updated_at.desc`, which is why
  /// adding a position moves its list to the front of the page. Every row
  /// carries `item_count`. Without it the only way to render a per-list badge
  /// was to read the positions of every list on the page — thousands of rows
  /// to draw twenty numbers. The count is bounded the way the page is: at most
  /// 200 lists, each capped by the tenant's max_items_per_list.
  Future<models.Error> orderlistsList(
      {String? ownerId,
      String? organizationId,
      String? kind,
      int? limit,
      int? offset,
      String? order}) async {
    const String apiPath = '/v1/orderlists';

    final Map<String, dynamic> apiParams = {
      if (ownerId != null) 'owner_id': ownerId,
      if (organizationId != null) 'organization_id': organizationId,
      if (kind != null) 'kind': kind,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Three fields are required, and they are exactly the columns the database
  /// will not fill in: `name`, `owner_id` and `owner_name`. Everything else has
  /// an answer already — `kind` resolves to the caller's value, else the
  /// market's `default_kind` setting, else the kind the tenant flagged; `shared`
  /// is false; `organization_id` is null, which makes `shared` meaningless
  /// because there is then nobody to share with. Nothing about a list is unique:
  /// one owner may keep two lists with the same name, and the same article may
  /// appear in as many lists as the buyer wants. The list may be created empty
  /// or pre-filled in the same call: an optional `items` array is written as the
  /// list's positions with the row, so a twenty-line list is one request rather
  /// than a create followed by twenty adds, and the array order is the position
  /// order. Those initial `items` are normalized and article-checked BEFORE the
  /// list row is written, and both caps are checked first as well — the
  /// tenant's `max_items_per_list` against the array, and its
  /// `max_lists_per_owner` against what this contact already keeps — so a
  /// rejected position never leaves an empty list behind and a contact at their
  /// limit is refused before anything is inserted. The owner is set once — no
  /// route moves a list to another contact.
  Future<models.Error> orderlistsCreate(
      {required String name,
      required String ownerId,
      required String ownerName,
      List<models.OrderListItemInput>? items,
      String? kind,
      Map? metadata,
      String? organizationId,
      bool? shared}) async {
    const String apiPath = '/v1/orderlists';

    final Map<String, dynamic> apiParams = {
      if (items != null) 'items': items.map((p) => p.toMap()).toList(),
      if (kind != null) 'kind': kind,
      'metadata': metadata,
      'name': name,
      'organization_id': organizationId,
      'owner_id': ownerId,
      'owner_name': ownerName,
      if (shared != null) 'shared': shared,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Seeds the two kinds a fresh tenant starts with — `shopping` and `label`
  /// — and gives `shopping` the default flag. Idempotent by code: `created`
  /// names the kinds this call wrote, `existing` the ones that were already
  /// there and were left exactly as the tenant keeps them, renamed, retoned and
  /// reordered included. On a settled tenant `created` is empty. It is rarely
  /// the call you need — the `app.installed` event runs the same seed, and the
  /// first read of GET /orderlists/kinds on an empty table seeds before it
  /// answers. It never removes a kind and never restores one a merchant deleted.
  Future<models.Error> orderlistsDefaults() async {
    const String apiPath = '/v1/orderlists/defaults';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// What a saved list may be FOR — the tenant's own taxonomy, and the set
  /// every `kind` on a list is drawn from. This used to be a CHECK constraint,
  /// which meant a merchant who keeps reagent lists or sample lists needed a
  /// release of this app to say so — and the app never branched on the value,
  /// it only checked membership. The set is the tenant's rows now. Reading this
  /// route on a tenant that has none seeds them, so it never answers an empty
  /// set on a fresh install and a client may treat the first read as the install
  /// step it no longer has to make. Rows come back in `position` order,
  /// ascending, which is the order a select should offer them in, and each
  /// carries the `is_default` flag that decides what a create with no `kind`
  /// falls back to. It takes NO filters: `limit` and `offset` are the only query
  /// keys it reads, and any other is ignored rather than refused — which is
  /// also why this collection alone answers no `filter` echo, since echoing an
  /// empty one would be noise. The `code` on each row, not the `id`, is what
  /// `lists.kind` stores and what `?kind=` on GET /orderlists matches.
  Future orderlistsKindsList({int? limit, int? offset}) async {
    const String apiPath = '/v1/orderlists/kinds';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Adds a kind to the tenant's own taxonomy — reagent lists, sample lists,
  /// whatever a merchant sorts their saved lists by — without a release of
  /// this app, because nothing here branches on the value. `code` and `title`
  /// are required, and they are exactly the two columns of `list_kinds` the
  /// database will not fill in. The code is lowercased on the way in and
  /// immutable afterwards: renaming it would orphan every list carrying it,
  /// since a list stores the code and not the id. `is_default: true` promotes
  /// the new kind and demotes whoever held the flag. Creating a kind changes no
  /// existing list.
  Future<models.Error> orderlistsKindsCreate(
      {required String code,
      required String title,
      String? description,
      Map? descriptions,
      bool? isDefault,
      Map? labels,
      int? position,
      enums.OrderListKindTone? tone}) async {
    const String apiPath = '/v1/orderlists/kinds';

    final Map<String, dynamic> apiParams = {
      'code': code,
      'description': description,
      'descriptions': descriptions,
      if (isDefault != null) 'is_default': isDefault,
      'labels': labels,
      if (position != null) 'position': position,
      'title': title,
      if (tone != null) 'tone': tone.value,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// There is no foreign key behind `lists.kind` — it is a plain text column
  /// holding a code, and nothing in the database points at `list_kinds` — so
  /// this route's own 409 is the whole of the referential integrity. It reads
  /// whether any list still carries the code and refuses if one does, and
  /// refuses again when this is the last kind left, because a list must have
  /// one. Nothing cascades and no list is rewritten. Two gaps the guard leaves:
  /// it is a read followed by a delete with no lock between them, so a list
  /// written with the code in that window survives it; and the market-scoped
  /// `default_kind` SETTING is neither consulted nor cleared, so deleting the
  /// kind it names leaves the setting pointing at nothing while creates fall
  /// through to whichever kind holds the default flag. A list that does end up
  /// naming a code nothing defines is not broken, only stranded: it is still
  /// returned by GET /orderlists and GET /orderlists/{id} carrying the bare
  /// code, the vocabulary no longer offers that value so a UI renders the code
  /// itself, `?kind=` refuses it with a 400 naming the codes that remain, and
  /// the way back is PUT /orderlists/{id} with a kind the tenant keeps. Deleting
  /// the flag-holder hands the flag to the first remaining kind. The answer is
  /// the `code`, not the `{deleted, id}` the other deletes here return.
  Future<models.Error> orderlistsKindsDelete({required String id}) async {
    final String apiPath = '/v1/orderlists/kinds/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One kind, by the id this route takes. The `code` is the OTHER identity and
  /// the one that matters to the data: `lists.kind` stores the code and never
  /// this id, so a list is joined to its kind by code while every
  /// /orderlists/kinds/{id} route is addressed by uuid. A fresh tenant starts
  /// with two — `shopping` and `label`, seeded on install — and everything
  /// beyond them is the merchant's own. A kind seeded before 0.15.0 may hold a
  /// serialized locale map in `title` and `description` where plain text
  /// belongs; those rows were left as they stand, because repairing them is a
  /// data change.
  Future<models.Error> orderlistsKindsGet({required String id}) async {
    final String apiPath = '/v1/orderlists/kinds/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Everything a kind has except its code: the title a person reads, the
  /// sentence underneath it, the localized forms of both, the badge tone, and
  /// where it sits in a select. The code is not among them and cannot be reached
  /// from here at all: sending a different one is a 400 rather than a silent
  /// no-op, because `lists.kind` stores the code and a rename would orphan every
  /// list that carries it with no foreign key to stop it. So a rename is never
  /// how a list comes to name a code nothing defines — only a delete can do
  /// that. Renaming the TITLE touches no list, for the same reason. A blank
  /// title is ignored rather than stored; an explicit null clears the
  /// description; `labels` and `descriptions` replace the whole map rather than
  /// merging into it. `is_default: true` makes the same move POST
  /// /orderlists/kinds/{id}/make-default makes on its own. A system kind is
  /// editable like any other.
  Future<models.Error> orderlistsKindsUpdate(
      {required String id,
      String? description,
      Map? descriptions,
      bool? isDefault,
      Map? labels,
      int? position,
      String? title,
      enums.OrderListKindTone? tone}) async {
    final String apiPath = '/v1/orderlists/kinds/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      'description': description,
      'descriptions': descriptions,
      if (isDefault != null) 'is_default': isDefault,
      'labels': labels,
      if (position != null) 'position': position,
      if (title != null) 'title': title,
      if (tone != null) 'tone': tone.value,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One call MOVES the flag: the kind in the path is promoted and whoever held
  /// the flag before is demoted in the same request, because the flag is a
  /// single answer and not a per-row opinion. It is what a list created without
  /// a kind falls back to, so two defaults leave the result to row order and
  /// none leaves it to whatever sorts first — which is exactly why promotion
  /// and demotion cannot be two calls a client makes in sequence. PUT with
  /// is_default already moved it, but only as a side effect of an edit, and a
  /// client promoting and then demoting by hand produces those two broken states
  /// whenever one of the pair does not land. Every kind the tenant keeps is
  /// walked, and only the rows whose flag is wrong are written — the new
  /// default if it was not already set, the old one if it was — so the call
  /// costs at most two writes and repeating it costs none, which makes it safe
  /// to retry. The kind's other fields are untouched and no existing list is
  /// rewritten: lists that already name a kind keep it, since the flag decides
  /// only what a FUTURE create with no `kind` resolves to. The market-scoped
  /// `default_kind` setting still wins where it is set; this flag is the
  /// tenant-wide answer underneath it.
  Future<models.Error> orderlistsKindsMakeDefault(
      {required String id, required Map data}) async {
    final String apiPath =
        '/v1/orderlists/kinds/{id}/make-default'.replaceAll('{id}', id);

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

  /// Discovery for the vocabulary routes, and nothing more: every enum this app
  /// publishes, each as a name plus the words a person reads for it — its
  /// title and its description — and never the values, which are one call
  /// further down at GET /orderlists/vocabularies/{name}. It exists so that a
  /// client holding a qualified pair like 'orderlists.kinds' can build that URL
  /// from the pair alone and keep no copy of an enum of its own. Names: kinds.
  /// The split is deliberate rather than an economy: the set of NAMES is fixed
  /// by a release of this app, so a client may cache this answer for as long as
  /// it caches the contract, while the values under 'kinds' are the tenant's own
  /// rows and change without a release — which is why this route says nothing
  /// about them and why a UI building a select must make the second call rather
  /// than read the values off here. Title and description come back either as a
  /// plain string or as a locale map keyed by language tag, so a client reads
  /// the tag it wants and falls back to `en` — the same shape every localized
  /// field in this app carries.
  Future<models.OrderListVocabularyIndex> orderlistsVocabulariesList() async {
    const String apiPath = '/v1/orderlists/vocabularies';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OrderListVocabularyIndex.fromMap(res.data);
  }

  /// One named enum with every value it permits, and enough about each value to
  /// render it without a second source: the `key` the database stores and
  /// enforces, the title and the description a person reads, and the semantic
  /// badge `tone` a UI colours it with — which is why no client needs a colour
  /// map of its own, and why the Cockpit's hand-kept one could go. A value that
  /// names no tone of its own inherits the vocabulary's `default_tone`, so the
  /// field is never empty. 'kinds' is table-backed: the tenant's own rows ARE
  /// the value set, so a value they added appears here without a release of this
  /// app, and each value carries its `labels`, `descriptions` and the
  /// `is_default` flag besides. Values come back in `position` order, which is
  /// the order a select should offer. 'closed' says the set is exhaustive at
  /// this moment, so a value outside it is stale data rather than a missing
  /// label — what changed with the move to a table is WHO may extend it, not
  /// whether the set is closed. `source` says which: 'schema' where a CHECK
  /// constraint owns the values, 'table' where the tenant's rows do. Names:
  /// kinds.
  Future<models.Error> orderlistsVocabulariesGet(
      {required enums.OrderlistsVocabulariesGetName name}) async {
    final String apiPath =
        '/v1/orderlists/vocabularies/{name}'.replaceAll('{name}', name.value);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Takes every position with it, in the database: `items.list_id` is the app's
  /// only foreign key and it is ON DELETE CASCADE, and the handler removes the
  /// positions explicitly first besides. Nothing survives the list, there is no
  /// soft delete and no undo — and the answer carries no count, so read the
  /// list (or its `item_count`) BEFORE the call if you need to know how much
  /// went. What it does NOT take is what the list has already produced: a cart
  /// line or an order position built by the conversions carries `order_list_id`,
  /// `order_list_name` and `order_list_item_id` in its snapshot, and those are
  /// jsonb values inside another app rather than foreign keys — ADR-0055
  /// forbids a cross-app FK, so nothing cascades there and nothing is nulled.
  /// The cart and the order are unharmed, because every position was copied as a
  /// snapshot rather than referenced; the provenance link is what dangles,
  /// permanently.
  Future<models.Error> orderlistsDelete({required String id}) async {
    final String apiPath = '/v1/orderlists/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The whole list in one call: the row plus every position inline, in
  /// `position` order, up to a thousand of them. The nested positions collection
  /// exists to CHANGE the positions, not to page them, so this is the read a
  /// detail view makes. Reading is wider than writing here — an acting contact
  /// sees their own lists and their organization's shared ones, and a list that
  /// is neither answers 404 rather than 403, so an outsider learns nothing from
  /// the difference. The row carries the dead `public` column next to `shared`;
  /// read `shared`.
  Future<models.Error> orderlistsGet({required String id}) async {
    final String apiPath = '/v1/orderlists/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Rename, share or reclassify — the whole of what a list says about itself,
  /// plus `metadata`. Positions go through the items routes and the owner cannot
  /// be changed by anything. `shared` is what the column `public` was renamed to
  /// in June 2026; `public` is still on the wire because the provisioner is
  /// additive, is false on every row written since, and says nothing about who
  /// may see the list. One trap: a `kind` this tenant does not keep is IGNORED
  /// rather than refused, so the list quietly keeps the kind it had and a client
  /// that cares must read the answer back. An empty body is a 400 rather than a
  /// no-op.
  Future<models.Error> orderlistsUpdate(
      {required String id,
      String? kind,
      Map? metadata,
      String? name,
      bool? shared}) async {
    final String apiPath = '/v1/orderlists/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (kind != null) 'kind': kind,
      'metadata': metadata,
      if (name != null) 'name': name,
      if (shared != null) 'shared': shared,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The reason a buyer keeps a list at all: every position of the list goes
  /// into a cart in one call. The cart is either one the caller names or one
  /// this call makes. Sending 'cart_id' adds to that existing cart; omitting it
  /// creates a cart for the LIST'S OWNER — not for whoever called — names it
  /// after the list, and makes it that owner's current cart, because a cart the
  /// buyer cannot see is not 'added to cart'. Which of the two happened is not
  /// left to be inferred: `cart_created` says so and `cart_id` names the cart
  /// either way. 'append' (the default, tenant-configurable through
  /// `cart_merge_mode`) lets the carts app merge each line by product and price
  /// so quantities accumulate, and is sent one line at a time precisely because
  /// that merge happens on add; 'replace' makes the list the cart's whole
  /// contents in one call. What the cart has no column for — cost centre,
  /// custom SKU, position texts — rides in each line's snapshot together with
  /// the list it came from. The list itself is never touched: it is read, not
  /// emptied, so the same list converts again next month. Cross-app:
  /// carts.create, carts.items.create, carts.items.replace.
  Future<models.Error> orderlistsToCart(
      {required String id,
      String? cartId,
      String? currency,
      enums.OrderListCartMode? mode}) async {
    final String apiPath = '/v1/orderlists/{id}/cart'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      'cart_id': cartId,
      'currency': currency,
      if (mode != null) 'mode': mode.value,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The other half of the reason a list exists — and it is the ORDERS app
  /// that does it, over the gateway rather than over a shared table, so
  /// everything an order means is that app's answer and not this one's. Places
  /// the list's positions as an order: buyer and organization come from the
  /// list, the cost centre and the position texts land on the order's own
  /// columns, and the list is left exactly as it stands so it can be ordered
  /// again next month. The acting contact is re-asserted on the call, so the
  /// orders app applies ITS rules to the BUYER rather than to this app — a
  /// contact holding only orders.request, or an order above the tenant's
  /// approval threshold, comes back with status 'pending' and no placed_at
  /// instead of being refused. That pending order is the platform's nearest
  /// thing to a draft; the orders app owns the state and this one cannot
  /// override it, which is why `status` is reported rather than chosen and why
  /// the created order is handed back verbatim under `order` beside the three
  /// fields lifted out of it. Cross-app: orders.place.
  Future<models.Error> orderlistsToOrder(
      {required String id,
      String? currency,
      String? customerOrderNumber}) async {
    final String apiPath = '/v1/orderlists/{id}/order'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      'currency': currency,
      'customer_order_number': customerOrderNumber,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Every column of a position is an exact-match filter — eighteen of them,
  /// which is the whole row — and they combine as AND. `list_id` is not among
  /// them: it comes from the path and overwrites anything the query says. The
  /// default sort is `position.asc`, and `position` is neither dense nor unique:
  /// removing a position leaves its number behind while the next add takes the
  /// list's current COUNT, so a delete from the middle followed by an add
  /// produces two rows sharing a number and the tie falls to whatever the
  /// database returns first. Sort by `created_at` where the order has to be
  /// unambiguous.
  Future<models.Error> orderlistsItemsList(
      {required String listId,
      String? id,
      String? productId,
      String? sku,
      String? name,
      String? image,
      double? quantity,
      String? unit,
      double? price,
      double? taxRate,
      String? costCenterId,
      String? positionTexts,
      String? customSku,
      String? categorySlug,
      String? subcategorySlug,
      int? position,
      String? metadata,
      String? createdAt,
      String? updatedAt,
      int? limit,
      int? offset,
      String? order}) async {
    final String apiPath =
        '/v1/orderlists/{list_id}/items'.replaceAll('{list_id}', listId);

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (sku != null) 'sku': sku,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (quantity != null) 'quantity': quantity,
      if (unit != null) 'unit': unit,
      if (price != null) 'price': price,
      if (taxRate != null) 'tax_rate': taxRate,
      if (costCenterId != null) 'cost_center_id': costCenterId,
      if (positionTexts != null) 'position_texts': positionTexts,
      if (customSku != null) 'custom_sku': customSku,
      if (categorySlug != null) 'category_slug': categorySlug,
      if (subcategorySlug != null) 'subcategory_slug': subcategorySlug,
      if (position != null) 'position': position,
      if (metadata != null) 'metadata': metadata,
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

  /// A position is a whole saved line, not a pointer at a product. `name` is
  /// required and one of `product_id` / `sku` must be set — the two things the
  /// database itself insists on — and everything else is a snapshot of what
  /// the buyer saw. Nothing here deduplicates: adding the same article twice
  /// makes two positions, because it is the CART that merges lines by product
  /// and price, not the list. The new row takes the list's current position
  /// COUNT unless the payload names a `position` of its own, so it collides with
  /// an existing number whenever an earlier position was deleted from the
  /// middle. The list's `updated_at` is touched, which is what the default sort
  /// of GET /orderlists reads.
  Future<models.Error> orderlistsItemsCreate(
      {required String listId,
      required String name,
      String? categorySlug,
      String? costCenterId,
      String? customSku,
      String? image,
      Map? metadata,
      int? position,
      List<String>? positionTexts,
      double? price,
      String? productId,
      double? quantity,
      String? sku,
      String? subcategorySlug,
      double? taxRate,
      String? unit}) async {
    final String apiPath =
        '/v1/orderlists/{list_id}/items'.replaceAll('{list_id}', listId);

    final Map<String, dynamic> apiParams = {
      'category_slug': categorySlug,
      'cost_center_id': costCenterId,
      'custom_sku': customSku,
      'image': image,
      'metadata': metadata,
      'name': name,
      if (position != null) 'position': position,
      'position_texts': positionTexts,
      'price': price,
      'product_id': productId,
      if (quantity != null) 'quantity': quantity,
      'sku': sku,
      'subcategory_slug': subcategorySlug,
      'tax_rate': taxRate,
      'unit': unit,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Set semantics: what you send becomes the list's positions and everything
  /// else is deleted. Ids are NOT preserved — every row is dropped and
  /// rewritten, so a client holding position ids must re-read them — and an
  /// empty array empties the list. Both guards run before the first delete, so
  /// an oversized or unknown-article replace answers 400 with the list still
  /// holding exactly what it held. It is not a renumbering call: an entry that
  /// names no `position` takes its array index, one that names its own keeps it,
  /// so the array order is the default rather than an override. Writing is
  /// narrower than reading: the owner may always replace, and anyone else only
  /// when the list is shared with their own organization AND the tenant turned
  /// `shared_lists_editable` on — otherwise a caller who can READ the list
  /// through the sharing rule is answered 403 here. The delete-then-insert is
  /// not wrapped in a transaction of its own, so a client should treat a failed
  /// replace as a list of unknown contents and re-read it rather than retry
  /// blind. The answer is the whole new set in the same paged envelope every
  /// other collection uses, with `limit`, `offset` and `total` describing
  /// exactly what was written; the list's `updated_at` is touched, which moves
  /// it to the front of the default GET /orderlists page.
  Future<models.Error> orderlistsItemsReplace(
      {required String listId,
      required List<models.OrderListItemInput> items}) async {
    final String apiPath =
        '/v1/orderlists/{list_id}/items'.replaceAll('{list_id}', listId);

    final Map<String, dynamic> apiParams = {
      'items': items.map((p) => p.toMap()).toList(),
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Removes one saved line and takes nothing with it — no foreign key in this
  /// app points at a position. What it leaves behind is the gap: every remaining
  /// row keeps the number it had, and the next add takes the list's COUNT as its
  /// `position`, so a removal from the middle sets up a later collision. A bulk
  /// replace is the only call that rewrites the sequence. Outside this app, a
  /// cart line or order position built from this row still carries
  /// `order_list_item_id` in its snapshot — a jsonb value, not a reference —
  /// so it is simply left naming a row that is gone. The list's `updated_at` is
  /// touched.
  Future<models.Error> orderlistsItemsDelete(
      {required String listId, required String id}) async {
    final String apiPath = '/v1/orderlists/{list_id}/items/{id}'
        .replaceAll('{list_id}', listId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One saved line by its own id, in exactly the shape the collection returns
  /// — there is nothing here the collection does not already give you, so this
  /// is the read for a client that holds a position id and nothing else. The
  /// list in the path is enforced rather than decorative: a position that
  /// belongs to a different list answers 404 rather than the row, which is what
  /// stops an id lifting a position out of a list the caller may not read. An
  /// unknown or unreadable list is a 404 before the position is looked at.
  Future<models.Error> orderlistsItemsGet(
      {required String listId, required String id}) async {
    final String apiPath = '/v1/orderlists/{list_id}/items/{id}'
        .replaceAll('{list_id}', listId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A partial update: omitted fields keep the value they have, and an explicit
  /// null is the only way to clear one. `quantity` is re-checked (> 0), and
  /// where `reject_unknown_articles` is on the article is re-checked against the
  /// MERGED row rather than the payload — so changing only the name cannot
  /// smuggle an unknown article past the guard that the create applied.
  /// `position` is set, not shifted: writing 3 puts this row at 3 and moves
  /// nothing else, which is the other way two positions come to share a number.
  /// The list's `updated_at` is touched.
  Future<models.Error> orderlistsItemsUpdate(
      {required String listId,
      required String id,
      String? categorySlug,
      String? costCenterId,
      String? customSku,
      String? image,
      Map? metadata,
      String? name,
      int? position,
      List<String>? positionTexts,
      double? price,
      String? productId,
      double? quantity,
      String? sku,
      String? subcategorySlug,
      double? taxRate,
      String? unit}) async {
    final String apiPath = '/v1/orderlists/{list_id}/items/{id}'
        .replaceAll('{list_id}', listId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      'category_slug': categorySlug,
      'cost_center_id': costCenterId,
      'custom_sku': customSku,
      'image': image,
      'metadata': metadata,
      if (name != null) 'name': name,
      if (position != null) 'position': position,
      'position_texts': positionTexts,
      'price': price,
      'product_id': productId,
      if (quantity != null) 'quantity': quantity,
      'sku': sku,
      'subcategory_slug': subcategorySlug,
      'tax_rate': taxRate,
      'unit': unit,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}

part of '../revenexx.dart';

  /// The lines inside one cart, always addressed through the cart that owns them
  /// (`/carts/{cart_id}/items`) — a line is never reachable on its own, and an
  /// id from another cart answers 404 rather than the row. A line is a catalogue
  /// product, a configured product or a free position, and it carries its price
  /// twice: the working `unit_price` and the `snapshot` the buyer was shown.
  /// Adding the same article at the same price folds into the line that is
  /// already there instead of opening a second one; a configured line always
  /// stands alone. Every write here recomputes the owning cart&#039;s `item_count`
  /// and `subtotal`, so a cart can never disagree with its own lines.
class CartsItems extends Service {
  /// Initializes a [CartsItems] service
  CartsItems(super.client);

  /// The array is still called 'items'; the response also carries 'page' and
  /// 'filter' like every other list, and an unknown cart_id answers 404 instead
  /// of an empty page. A cart with more lines than the page size is not silently
  /// truncated — 'page.hasMore' says so. Lines come back in position order
  /// unless 'order' says otherwise.
  Future<models.Error> cartsItemsList({required String cartId, String? id, enums.CartItemType? type, String? productId, String? sku, String? name, double? quantity, String? unit, double? unitPrice, String? currency, double? taxRate, double? lineTotal, int? position, String? createdAt, String? updatedAt, int? limit, int? offset, String? order}) async {
    final String apiPath = '/v1/carts/{cart_id}/items'.replaceAll('{cart_id}', cartId);

        final Map<String, dynamic> apiParams = {
            if (id != null) 'id': id,

            if (type != null) 'type': type.value,

            if (productId != null) 'product_id': productId,

            if (sku != null) 'sku': sku,

            if (name != null) 'name': name,

            if (quantity != null) 'quantity': quantity,

            if (unit != null) 'unit': unit,

            if (unitPrice != null) 'unit_price': unitPrice,

            if (currency != null) 'currency': currency,

            if (taxRate != null) 'tax_rate': taxRate,

            if (lineTotal != null) 'line_total': lineTotal,

            if (position != null) 'position': position,

            if (createdAt != null) 'created_at': createdAt,

            if (updatedAt != null) 'updated_at': updatedAt,

            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Adds one line to an ACTIVE cart — the add-to-basket call. `name` or `sku`
  /// is required (a line sent with only a SKU takes the SKU as its name, so a
  /// line always has something to show) and `quantity` must be greater than
  /// zero; everything else defaults, including the currency, which falls back to
  /// the cart's. The one thing that surprises a caller: a plain product line
  /// with the same product/sku AND the same `unit_price` as a line already in
  /// the cart does not open a second row — its quantity is added to that line,
  /// and the 201 names a row that already existed. Price is part of that
  /// identity on purpose, so a changed price never averages into an old line. A
  /// configured or custom line always stands alone. The cart's `item_count` (the
  /// sum of QUANTITIES) and `subtotal` are recomputed before the answer, and
  /// `max_items_per_cart` / `max_quantity_per_line` are checked on the RESULT of
  /// the merge (422), so ten calls of one piece cannot walk past a limit one
  /// call of ten would hit.
  Future<models.Error> cartsItemsCreate({required String cartId, Map? configuration, String? currency, Map? metadata, String? name, int? position, String? productId, double? quantity, String? sku, Map? snapshot, double? taxRate, enums.CartItemType? type, String? unit, double? unitPrice}) async {
    final String apiPath = '/v1/carts/{cart_id}/items'.replaceAll('{cart_id}', cartId);

        final Map<String, dynamic> apiParams = {
            'configuration': configuration,

            'currency': currency,

            'metadata': metadata,

            'name': name,

            'position': position,

            'product_id': productId,

            'quantity': quantity,

            'sku': sku,

            if (snapshot != null) 'snapshot': snapshot,

            'tax_rate': taxRate,

            if (type != null) 'type': type.value,

            'unit': unit,

            'unit_price': unitPrice,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Set semantics: the payload IS the cart. Every existing line is dropped and
  /// the payload is written in its place, so a line left out of the array is a
  /// line removed — this is the storefront sync, not a bulk add, and
  /// carts.items.create is what adds. Lines are numbered by their place in the
  /// array unless they carry their own `position`, and nothing merges: two
  /// identical lines in one payload stay two rows. The limits are checked
  /// against the payload BEFORE a single existing line is destroyed, so a sync
  /// refused with 422 leaves the cart exactly as it was. The cart must be
  /// active, and its totals are recomputed before the answer.
  Future<models.Error> cartsItemsReplace({required String cartId, required List<models.CartItemCreateRequest> items}) async {
    final String apiPath = '/v1/carts/{cart_id}/items'.replaceAll('{cart_id}', cartId);

        final Map<String, dynamic> apiParams = {
            'items': items.map((p) => p.toMap()).toList(),

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Removes one line from an ACTIVE cart and recomputes the owning cart's
  /// `item_count` and `subtotal` before answering. This is how a quantity
  /// reaches zero: `quantity` is constrained to be greater than zero, so "none
  /// of it" is a DELETE and never an update to 0. The cart in the path is part
  /// of the address — a line belonging to a different cart answers 404 and is
  /// left where it is. Deleting the last line leaves an empty cart, not a
  /// deleted one; the cart itself goes through carts.delete, which takes every
  /// line with it in one call.
  Future<models.Error> cartsItemsDelete({required String cartId, required String id}) async {
    final String apiPath = '/v1/carts/{cart_id}/items/{id}'.replaceAll('{cart_id}', cartId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// One line, addressed through the cart that owns it. Both ids are checked,
  /// not just the line's: a line that exists but belongs to a different cart
  /// answers 404 rather than the row, so an id copied out of another cart never
  /// resolves here and a caller can trust that what came back is a line of the
  /// cart they asked about. The line carries both of its prices — the working
  /// `unit_price`, which a resync or a repricing job may have moved, and the
  /// `snapshot` the buyer was shown when the line was added — and its own
  /// `line_total`, which is always quantity × unit_price and never what a
  /// payload claimed. To read a whole cart's lines, list them: this route is for
  /// one known line.
  Future<models.Error> cartsItemsGet({required String cartId, required String id}) async {
    final String apiPath = '/v1/carts/{cart_id}/items/{id}'.replaceAll('{cart_id}', cartId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Changes one line of an ACTIVE cart — the quantity stepper on the cart
  /// page, and the route a repricing job writes through. The fields sent are
  /// merged onto the stored line and the whole line is validated again, so
  /// `quantity` must still be greater than zero and `type` still one of the
  /// three. `line_total` is not settable: it is recomputed as quantity ×
  /// unit_price, and the cart's `item_count` and `subtotal` follow before the
  /// answer. What it will NOT do is merge — only carts.items.create folds one
  /// line into another, so giving this line the same product and price as a
  /// sibling leaves two rows standing, and the next add joins whichever it
  /// matches. `max_quantity_per_line` is enforced on the result (422). A
  /// quantity of zero is not the way to remove a line; the delete is.
  Future<models.Error> cartsItemsUpdate({required String cartId, required String id, Map? configuration, String? currency, Map? metadata, String? name, int? position, String? productId, double? quantity, String? sku, Map? snapshot, double? taxRate, enums.CartItemType? type, String? unit, double? unitPrice}) async {
    final String apiPath = '/v1/carts/{cart_id}/items/{id}'.replaceAll('{cart_id}', cartId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'configuration': configuration,

            'currency': currency,

            'metadata': metadata,

            'name': name,

            'position': position,

            'product_id': productId,

            'quantity': quantity,

            'sku': sku,

            if (snapshot != null) 'snapshot': snapshot,

            'tax_rate': taxRate,

            if (type != null) 'type': type.value,

            'unit': unit,

            'unit_price': unitPrice,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }
}
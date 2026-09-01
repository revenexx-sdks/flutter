part of '../revenexx.dart';

  /// WHAT is offered, what it costs, and the answer a checkout gets. A shipping
  /// method is the line a buyer picks: a pricing model (&#039;fixed&#039;, &#039;free&#039; or
  /// &#039;matrix&#039;), the countries it may be offered into, a free-above threshold,
  /// and the carrier it ships with. A matrix method prices off its own rate
  /// tiers — a lookup table of `from_value` → price, nested under the
  /// method, deleted with it — which is why they are one group and not two: a
  /// method with pricing_type &#039;matrix&#039; and no tiers quotes nothing at all. POST
  /// /shipping/rates is the read side of everything in here: it takes the buyer
  /// context and answers with the methods that apply and their computed prices,
  /// plus an `excluded` list naming the ones that did not and why. The delivery
  /// promise on that answer is inherited from the carrier and is described under
  /// that group.
class ShippingMethods extends Service {
  /// Initializes a [ShippingMethods] service
  ShippingMethods(super.client);

  /// Filterable by exact column value — `?code=`, `?enabled=`,
  /// `?pricing_type=`, `?carrier_id=`, `?carrier=` and `?tax_class=` are applied
  /// as equalities and echoed back in `filter`. `?carrier_id=` and `?carrier=`
  /// are the two halves of one question: the first finds the methods holding a
  /// reference, the second the ones still resolving through the legacy code
  /// text. A query key that names no column of this entity is SILENTLY IGNORED
  /// — `?status=` on this route is the trap, since carriers have a status and
  /// methods do not: the page comes back unfiltered, 200, with an empty
  /// `filter`.
  Future<models.Error> shippingMethodsList({int? limit, int? offset, String? order, String? code, bool? enabled, enums.PricingType? pricingType, String? carrierId, String? carrier, String? taxClass}) async {
    const String apiPath = '/v1/shipping/methods';

        final Map<String, dynamic> apiParams = {
            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

            if (code != null) 'code': code,

            if (enabled != null) 'enabled': enabled,

            if (pricingType != null) 'pricing_type': pricingType.value,

            if (carrierId != null) 'carrier_id': carrierId,

            if (carrier != null) 'carrier': carrier,

            if (taxClass != null) 'tax_class': taxClass,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A shipping method is the line a buyer picks in the checkout: a pricing
  /// model ('fixed', 'free' or 'matrix'), the countries it may be offered into,
  /// a free-above threshold, and the carrier it ships with. The method owns the
  /// PRICE; the delivery promise — tracking template, cut-off, handling and
  /// transit days — is inherited from the carrier wherever the method states
  /// none of its own. A create cannot omit `code` and `name`; every other column
  /// is optional or defaulted by the database. Two rows of this tenant may not
  /// share `code` — that is the 409. The new method is quoted by nobody until
  /// two further things are true: `enabled` defaults to FALSE, and a 'matrix'
  /// method has no tiers yet — until POST or PUT …/tiers gives it some it
  /// appears in `excluded` with 'matrix has no rate tiers configured' rather
  /// than in the rates. `carrier_id` and the legacy `carrier` code are both
  /// accepted and neither is verified against the carrier table here: an
  /// unmatched code is a plain carrier name on the rate, not an error.
  Future<models.Error> shippingMethodsCreate({required String code, required String name, String? carrier, String? carrierId, List<String>? countries, String? currency, String? description, bool? enabled, int? etaDaysMax, int? etaDaysMin, double? freeAbove, Map? labels, String? matrixAttribute, enums.ShippingMethodMatrixBasis? matrixBasis, Map? metadata, int? position, double? price, enums.ShippingMethodPricingType? pricingType, double? quoteAbove, String? taxClass}) async {
    const String apiPath = '/v1/shipping/methods';

        final Map<String, dynamic> apiParams = {
            'carrier': carrier,

            'carrier_id': carrierId,

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

            'quote_above': quoteAbove,

            'tax_class': taxClass,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Runs the carrier seed first, then creates any missing method: the three
  /// lines a shop is expected to offer — standard, express and pickup. The app
  /// runs this itself on `app.installed`, so a fresh install already has them;
  /// calling it by hand afterwards is how a tenant that deleted one gets it
  /// back, and calling it twice costs nothing, because it reconciles rather than
  /// seeds. The seeded methods deliberately name no carrier: which carrier
  /// carries the standard method is a contract, not a default, and a method that
  /// says 'dhl' resolves to the seeded DHL row anyway.
  Future shippingMethodsDefaults() async {
    const String apiPath = '/v1/shipping/methods/defaults';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Deleting one takes every `shipping_rate_tiers` row that points at it with
  /// it — the foreign keys decide that, not this route. So the whole rate
  /// matrix goes with the method, which is also why this never answers a
  /// conflict and why there is no way to recover the table afterwards — for a
  /// method a checkout may still be holding in a session, `enabled: false` is
  /// the safer edit.
  Future<models.Error> shippingMethodsDelete({required String id}) async {
    final String apiPath = '/v1/shipping/methods/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A shipping method is the line a buyer picks in the checkout: a pricing
  /// model ('fixed', 'free' or 'matrix'), the countries it may be offered into,
  /// a free-above threshold, and the carrier it ships with. The method owns the
  /// PRICE; the delivery promise — tracking template, cut-off, handling and
  /// transit days — is inherited from the carrier wherever the method states
  /// none of its own. This is the CONFIGURATION of one, by row id — not what a
  /// buyer would be charged. A matrix method's prices are not in here at all:
  /// they are its rate tiers, GET /shipping/methods/{method_id}/tiers, and the
  /// price for a given basket is POST /shipping/rates, which is the only place
  /// free-above thresholds, country restrictions, the carrier's reach and tax
  /// are applied. A checkout that reads `price` off this row prices a matrix
  /// method at 0.
  Future<models.Error> shippingMethodsGet({required String id}) async {
    final String apiPath = '/v1/shipping/methods/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A shipping method is the line a buyer picks in the checkout: a pricing
  /// model ('fixed', 'free' or 'matrix'), the countries it may be offered into,
  /// a free-above threshold, and the carrier it ships with. The method owns the
  /// PRICE; the delivery promise — tracking template, cut-off, handling and
  /// transit days — is inherited from the carrier wherever the method states
  /// none of its own. A partial update — send only what changes, whether that
  /// is taking the method in or out of the checkout, its pricing, the countries
  /// it is restricted to or the delivery estimate it states of its own; a
  /// payload carrying no column at all is refused rather than answering a row it
  /// did not touch. Flipping `enabled` is what puts the method in front of a
  /// buyer or takes it away, and a disabled method is reported in the rate
  /// answer's `excluded` rather than hidden. Changing `pricing_type` away from
  /// 'matrix' does NOT delete the tier table — it stops being read, and
  /// changing back reinstates the old prices, so a method switched to 'fixed'
  /// and back quotes what it quoted before. Two rows of this tenant may not
  /// share `code` — that is the 409.
  Future<models.Error> shippingMethodsUpdate({required String id, String? carrier, String? carrierId, String? code, List<String>? countries, String? currency, String? description, bool? enabled, int? etaDaysMax, int? etaDaysMin, double? freeAbove, Map? labels, String? matrixAttribute, enums.ShippingMethodMatrixBasis? matrixBasis, Map? metadata, String? name, int? position, double? price, enums.ShippingMethodPricingType? pricingType, double? quoteAbove, String? taxClass}) async {
    final String apiPath = '/v1/shipping/methods/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'carrier': carrier,

            'carrier_id': carrierId,

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

            'quote_above': quoteAbove,

            'tax_class': taxClass,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// The rate matrix of one method — every `from_value` threshold with the
  /// price charged at or above it — lowest threshold first. Filterable by
  /// `?from_value=` — the unique index is (tenant_id, method_id, from_value),
  /// so that addresses one row of the matrix by the threshold it prices rather
  /// than by an id a bulk replace has already discarded. The applied filters are
  /// echoed in `filter`, which always carries the `method_id` taken from the
  /// path.
  Future<models.Error> shippingTiersList({required String methodId, int? limit, int? offset, String? order, double? fromValue}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers'.replaceAll('{method_id}', methodId);

        final Map<String, dynamic> apiParams = {
            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

            if (fromValue != null) 'from_value': fromValue,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A rate tier is one row of a matrix method's price table: a `from_value`
  /// threshold and the price charged at or above it. The bound is INCLUSIVE and
  /// the winning tier is the one with the highest `from_value` at or below the
  /// measured value, so a measure of exactly 10 is priced by the tier at 10.
  /// What the number measures is the method's `matrix_basis` — kilograms in
  /// the market's own weight unit, items, money in the method's currency, or a
  /// named attribute — and the last tier has no upper bound. This adds ONE row
  /// to the table of the method in the path, leaving the rest alone — the edit
  /// for a merchant who has added a heavier bracket. To lay a whole table down
  /// at once use PUT …/tiers (set semantics) or POST …/tiers/ladder (evenly
  /// stepped), and note that both of those DISCARD the ids of the rows they
  /// replace. Two rows of this tenant may not share the combination of
  /// `method_id` + `from_value` — that is the 409. `method_id` is taken from
  /// the path on every write, so a body naming a different method is ignored
  /// rather than obeyed.
  Future<models.Error> shippingTiersCreate({required String methodId, double? fromValue, int? position, double? price}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers'.replaceAll('{method_id}', methodId);

        final Map<String, dynamic> apiParams = {
            if (fromValue != null) 'from_value': fromValue,

            if (position != null) 'position': position,

            if (price != null) 'price': price,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// The write behind a table editor: a merchant edits the whole matrix on
  /// screen and saves it in one call, rather than diffing it into a row added
  /// here and a row deleted there. Set semantics, and it replaces EVERY tier the
  /// method had: the tiers this method has afterwards are exactly the ones
  /// handed in, positions derived from the array order. An empty `tiers` array
  /// clears the table — and a matrix method with no tiers quotes nothing, with
  /// a reason.
  Future<models.Error> shippingTiersReplace({required String methodId, required List<models.ShippingRateTierReplaceItem> tiers}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers'.replaceAll('{method_id}', methodId);

        final Map<String, dynamic> apiParams = {
            'tiers': tiers.map((p) => p.toMap()).toList(),

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// The tier table a merchant describes in words — "0 to 30 kg, every 5 kg,
  /// €4.90 plus €2 a step" — without typing every row. Replaces the
  /// method's tiers by default (set replace=false to append).
  Future<models.Error> shippingTiersLadder({required String methodId, required double basePrice, required double step, required double toValue, double? fromValue, bool? replace, double? stepPrice}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers/ladder'.replaceAll('{method_id}', methodId);

        final Map<String, dynamic> apiParams = {
            'base_price': basePrice,

            'from_value': fromValue,

            'replace': replace,

            'step': step,

            'step_price': stepPrice,

            'to_value': toValue,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A rate tier is one row of a matrix method's price table: a `from_value`
  /// threshold and the price charged at or above it. The bound is INCLUSIVE and
  /// the winning tier is the one with the highest `from_value` at or below the
  /// measured value, so a measure of exactly 10 is priced by the tier at 10.
  /// What the number measures is the method's `matrix_basis` — kilograms in
  /// the market's own weight unit, items, money in the method's currency, or a
  /// named attribute — and the last tier has no upper bound. Removing a tier
  /// in the MIDDLE of a table is harmless — the measures it used to cover fall
  /// to the highest remaining threshold below them. Removing the LOWEST one is
  /// not: a measure under the new lowest threshold matches no tier at all, and
  /// the method is then left out of POST /shipping/rates with 'no tier covers
  /// measure …' instead of being quoted at 0, so an entire band of baskets
  /// silently stops being offered this method. Deleting the last tier takes the
  /// method out of the checkout altogether. Rebuilding the table wholesale is
  /// PUT …/tiers or POST …/tiers/ladder; deleting the method deletes its
  /// tiers on its own.
  Future<models.Error> shippingTiersDelete({required String methodId, required String id}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers/{id}'.replaceAll('{method_id}', methodId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A rate tier is one row of a matrix method's price table: a `from_value`
  /// threshold and the price charged at or above it. The bound is INCLUSIVE and
  /// the winning tier is the one with the highest `from_value` at or below the
  /// measured value, so a measure of exactly 10 is priced by the tier at 10.
  /// What the number measures is the method's `matrix_basis` — kilograms in
  /// the market's own weight unit, items, money in the method's currency, or a
  /// named attribute — and the last tier has no upper bound. This reads one
  /// row of that table by id, under the method that owns it; a tier id belonging
  /// to another method is a 404 rather than somebody else's price. A tier id is
  /// not durable: PUT …/tiers and POST …/tiers/ladder replace the table by
  /// deleting and recreating it, so an id read before either of them names
  /// nothing afterwards. Where a caller wants a stable handle, address the row
  /// by what it MEANS — GET …/tiers?from_value=… — since (method_id,
  /// from_value) is unique.
  Future<models.Error> shippingTiersGet({required String methodId, required String id}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers/{id}'.replaceAll('{method_id}', methodId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A tier id is not stable across a bulk edit: `PUT …/tiers` and `POST
  /// …/tiers/ladder` replace the table by deleting and recreating it, so an id
  /// read before either of them is gone afterwards.
  Future<models.Error> shippingTiersUpdate({required String methodId, required String id, double? fromValue, int? position, double? price}) async {
    final String apiPath = '/v1/shipping/methods/{method_id}/tiers/{id}'.replaceAll('{method_id}', methodId).replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (fromValue != null) 'from_value': fromValue,

            if (position != null) 'position': position,

            if (price != null) 'price': price,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// The question a checkout asks, and the only route that answers a PRICE. Hand
  /// in the buyer context — the destination country, the order value, and
  /// whatever the matrix methods measure: a weight, a quantity or a named
  /// product attribute — and this comes back with the methods that may be
  /// offered and what each of them costs, free-above thresholds, country
  /// restrictions, the carrier's delivery promise and tax already applied. A
  /// method that does not apply is never an error: it moves to `excluded` with a
  /// reason. So is a tax rate that cannot be resolved — `tax.resolved: false`
  /// means the rates are UNKNOWN, not untaxed.
  Future<models.Error> shippingRates({String? at, Map? attributes, String? country, String? currency, String? marketId, double? orderValue, double? orderValueGross, double? orderValueNet, double? quantity, double? weight, String? weightUnit}) async {
    const String apiPath = '/v1/shipping/rates';

        final Map<String, dynamic> apiParams = {
            'at': at,

            'attributes': attributes,

            'country': country,

            'currency': currency,

            'market_id': marketId,

            'order_value': orderValue,

            'order_value_gross': orderValueGross,

            'order_value_net': orderValueNet,

            'quantity': quantity,

            'weight': weight,

            'weight_unit': weightUnit,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// markets.tax_classes is the source of record for the rate and this app
  /// points at it by CODE from two places: a method's own tax_class and the
  /// tenant's shipping_tax_class fallback. Neither is a foreign key and neither
  /// could be — a cross-app FK is what ADR-0055 forbids — so integrity is a
  /// question one app asks the other, and this is the answering half. It is
  /// asked before a destructive edit: markets calls it when an operator tries to
  /// delete a tax class, and a count above zero is what stops the delete rather
  /// than leaving these methods pointing at a code nobody serves. Matched as a
  /// CODE, not a row: a tax class is unique per market, so 'reduced' may exist
  /// in several and a method naming it does not say which one it meant. Reports
  /// at most 500 methods and names the first 20. Every code answers, used or not
  /// — a code nobody points at is `in_use: false`, never a 404.
  Future<models.ShippingTaxClassUsage> shippingTaxClassesUsage({required String code}) async {
    final String apiPath = '/v1/shipping/tax-classes/{code}/usage'.replaceAll('{code}', code);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ShippingTaxClassUsage.fromMap(res.data);

  }
}
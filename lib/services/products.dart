part of '../revenexx.dart';

/// The catalog itself — the product rows a merchant works on, and everything
/// keyed by a product: the grid a person scans, the display name a product
/// resolves to (which is an attribute, not a column), the completeness
/// measured against its family, and the associations that point one product at
/// another. Start here for anything about A PRODUCT; the shape a product has
/// is in Data model, and the categories it is filed into are in Categories.
class Products extends Service {
  /// Initializes a [Products] service
  Products(super.client);

  /// The catalog itself. A product row carries only what every product has —
  /// SKU, kind, family, enabled, tax class — and everything the tenant
  /// modelled lives in the `attribute_values` jsonb document, keyed by attribute
  /// CODE inside one of four scope buckets (common, per locale, per channel, per
  /// channel and locale). `label` is a generated column, maintained by the
  /// database so a grid of twenty thousand rows can sort and filter on a name
  /// with no join. `kind` says where the row sits in the variant hierarchy: a
  /// `model` carries what its variants share and is never sold itself.
  ///
  /// Every column of `products` is an exact-match query parameter, `order` sorts
  /// by one column, and `limit`/`offset` page through `page.total`. A query key
  /// that is NOT a column is dropped rather than refused, and the `filter`
  /// object echoes the ones that were understood — that echo is the only way
  /// to tell an unfiltered answer from an empty one. It reads rows exactly as
  /// they are stored: no join is resolved, no jsonb value is unpacked, and
  /// soft-deleted products are included — filter on `deleted_at` to read the
  /// live catalog, or use `GET /products/grid`, which excludes them.
  Future productsList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? sku,
      enums.Kind? kind,
      String? parentId,
      String? familyId,
      String? familyVariantId,
      bool? enabled,
      String? taxClass,
      String? attributeValues,
      String? label,
      String? quantifiedAssociations,
      String? completeness,
      String? createdAt,
      String? updatedAt,
      String? deletedAt}) async {
    const String apiPath = '/v1/products';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (sku != null) 'sku': sku,
      if (kind != null) 'kind': kind.value,
      if (parentId != null) 'parent_id': parentId,
      if (familyId != null) 'family_id': familyId,
      if (familyVariantId != null) 'family_variant_id': familyVariantId,
      if (enabled != null) 'enabled': enabled,
      if (taxClass != null) 'tax_class': taxClass,
      if (attributeValues != null) 'attribute_values': attributeValues,
      if (label != null) 'label': label,
      if (quantifiedAssociations != null)
        'quantified_associations': quantifiedAssociations,
      if (completeness != null) 'completeness': completeness,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Creates one product and answers 201 with the stored row, including the id
  /// and the timestamps the database filled in — a client never sends an id,
  /// it reads one back and uses it in the path of every later call.
  ///
  /// The catalog itself. A product row carries only what every product has —
  /// SKU, kind, family, enabled, tax class — and everything the tenant
  /// modelled lives in the `attribute_values` jsonb document, keyed by attribute
  /// CODE inside one of four scope buckets (common, per locale, per channel, per
  /// channel and locale). `label` is a generated column, maintained by the
  /// database so a grid of twenty thousand rows can sort and filter on a name
  /// with no join. `kind` says where the row sits in the variant hierarchy: a
  /// `model` carries what its variants share and is never sold itself.
  ///
  /// `sku` is the only column the database refuses the row without; everything
  /// else has a default or is nullable. A second row with the same `sku` answers
  /// 409. This app owns the create: `enabled` defaults from the
  /// `new_products_enabled_by_default` tenant setting rather than blindly to
  /// true, so an import cannot publish twenty thousand unfinished products the
  /// moment it lands, and a product that names no family gets the
  /// `default_product_family` one. An explicit value in the body always wins
  /// over both.
  Future<models.Error> productsCreate(
      {required String sku,
      Map? attributeValues,
      Map? completeness,
      String? deletedAt,
      bool? enabled,
      String? familyId,
      String? familyVariantId,
      enums.ProductsKind? kind,
      String? parentId,
      Map? quantifiedAssociations,
      String? taxClass}) async {
    const String apiPath = '/v1/products';

    final Map<String, dynamic> apiParams = {
      if (attributeValues != null) 'attribute_values': attributeValues,
      'completeness': completeness,
      'deleted_at': deletedAt,
      if (enabled != null) 'enabled': enabled,
      'family_id': familyId,
      'family_variant_id': familyVariantId,
      if (kind != null) 'kind': kind.value,
      'parent_id': parentId,
      'quantified_associations': quantifiedAssociations,
      'sku': sku,
      'tax_class': taxClass,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Answers four fields — id, sku, tax_class and the resolved display name
  /// — for a list of ids and/or SKUs in ONE call. It exists for the app on the
  /// other side of a product reference: the prices app holds SKUs and needs a
  /// tax class, a feed builder holds ids and needs names, and neither should
  /// page through the catalog or fire a request per line. Ask by either
  /// identifier or both; the two are unioned and a product named twice comes
  /// back once.
  ///
  /// It answers what it FOUND: an id or SKU that names nothing is simply absent
  /// from `items` rather than an error, so compare the length of what you sent
  /// with what came back if a miss matters. It is not a general product read —
  /// for the whole row use `GET /products/{id}`, and for a scannable list use
  /// `GET /products/grid`.
  Future productsBatch({List<String>? ids, List<String>? skus}) async {
    const String apiPath = '/v1/products/batch';

    final Map<String, dynamic> apiParams = {
      if (ids != null) 'ids': ids,
      if (skus != null) 'skus': skus,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// The list a merchant can actually scan, as opposed to `GET /products`, which
  /// answers SKUs and a jsonb blob. Every row arrives already flattened: its
  /// resolved display name and where that name came from, its family code, its
  /// stored completeness, and the value of every attribute the catalog marks
  /// `usable_in_grid` — no join, no second call. `q` is a case-insensitive
  /// substring of the stored `label` column, which falls back to the SKU, so one
  /// box finds a product by either. Soft-deleted products are excluded here,
  /// unlike `GET /products`.
  ///
  /// It filters on `q`, `kind`, `enabled` and `family_id`, and on NOTHING ELSE
  /// — a query parameter it does not accept is refused with 400 rather than
  /// dropped. That matters because of `filters`: the array reports the
  /// attributes marked `is_filterable`, which is what a filter bar should OFFER,
  /// and it is not a query surface. Filtering on an attribute value is not
  /// offered by this API at all — the values live inside a four-bucket jsonb
  /// document and are read through a fallback chain, so it is a feature with a
  /// design of its own rather than a parameter that was forgotten.
  Future<models.Error> productsGrid(
      {int? limit,
      int? offset,
      String? order,
      String? q,
      enums.Kind? kind,
      bool? enabled,
      String? familyId}) async {
    const String apiPath = '/v1/products/grid';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (q != null) 'q': q,
      if (kind != null) 'kind': kind.value,
      if (enabled != null) 'enabled': enabled,
      if (familyId != null) 'family_id': familyId,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// What is this product CALLED? A product's name is an attribute rather than a
  /// column, and which attribute it is, is per family — so no plain read can
  /// answer it. This resolves up to 500 products at once, by id and/or SKU: it
  /// reads families.label_attribute (falling back to the default_label_attribute
  /// setting, then to the conventional `name`) and looks the value up through
  /// the scoped attribute_values document — common, then locale_specific in
  /// the label_locales order, then the channel buckets.
  ///
  /// It reports WHERE the name was found, which is the half that matters:
  /// `source: "sku"` means the catalog holds no name for this product and the
  /// SKU is standing in for one, so show it as a missing name rather than as a
  /// name. Writes nothing, and answers only what it found.
  Future<models.Error> productsLabels(
      {List<String>? ids, List<String>? skus}) async {
    const String apiPath = '/v1/products/labels';

    final Map<String, dynamic> apiParams = {
      if (ids != null) 'ids': ids,
      if (skus != null) 'skus': skus,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One relation from one product to another, of a declared type: this drill's
  /// accessories, this bundle's parts, this article's cross-sells. `quantity` is
  /// the number in "this bundle contains 4 casters" and is meaningful only when
  /// the association type carries `is_quantified`. This relational surface is
  /// the one this app serves; the `products.quantified_associations` column is
  /// an importer's blob that no route here reads or writes.
  ///
  /// Every column of `product_associations` is an exact-match query parameter,
  /// `order` sorts by one column, and `limit`/`offset` page through
  /// `page.total`. A query key that is NOT a column is dropped rather than
  /// refused, and the `filter` object echoes the ones that were understood —
  /// that echo is the only way to tell an unfiltered answer from an empty one.
  /// It reads rows exactly as they are stored: no join is resolved, no jsonb
  /// value is unpacked.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future productsProductAssociationsList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? productId,
      String? associationTypeId,
      String? targetProductId,
      double? quantity,
      int? position,
      String? createdAt}) async {
    const String apiPath = '/v1/products/product_associations';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (associationTypeId != null) 'association_type_id': associationTypeId,
      if (targetProductId != null) 'target_product_id': targetProductId,
      if (quantity != null) 'quantity': quantity,
      if (position != null) 'position': position,
      if (createdAt != null) 'created_at': createdAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Creates one product association and answers 201 with the stored row,
  /// including the id and the timestamps the database filled in — a client
  /// never sends an id, it reads one back and uses it in the path of every later
  /// call.
  ///
  /// One relation from one product to another, of a declared type: this drill's
  /// accessories, this bundle's parts, this article's cross-sells. `quantity` is
  /// the number in "this bundle contains 4 casters" and is meaningful only when
  /// the association type carries `is_quantified`. This relational surface is
  /// the one this app serves; the `products.quantified_associations` column is
  /// an importer's blob that no route here reads or writes.
  ///
  /// `product_id`, `association_type_id`, `target_product_id` are the only
  /// columns the database refuses the row without; everything else has a default
  /// or is nullable. A second row with the same `product_id`,
  /// `association_type_id`, `target_product_id` answers 409.
  Future<models.Error> productsProductAssociationsCreate(
      {required String associationTypeId,
      required String productId,
      required String targetProductId,
      int? position,
      double? quantity}) async {
    const String apiPath = '/v1/products/product_associations';

    final Map<String, dynamic> apiParams = {
      'association_type_id': associationTypeId,
      if (position != null) 'position': position,
      'product_id': productId,
      'quantity': quantity,
      'target_product_id': targetProductId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deletes one product association by id. It is a hard delete — the row is
  /// gone, and the answer is a confirmation rather than a result to branch on.
  ///
  /// Nothing in this schema references it, so nothing else changes.
  ///
  /// An id no product association of this tenant carries answers 404; there is
  /// no 409, because every foreign key pointing at this entity resolves itself
  /// on delete rather than blocking one.
  Future<models.Error> productsProductAssociationsDelete(
      {required String id}) async {
    final String apiPath =
        '/v1/products/product_associations/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Reads one product association by its id — the whole row, every column, as
  /// it is stored.
  ///
  /// One relation from one product to another, of a declared type: this drill's
  /// accessories, this bundle's parts, this article's cross-sells. `quantity` is
  /// the number in "this bundle contains 4 casters" and is meaningful only when
  /// the association type carries `is_quantified`. This relational surface is
  /// the one this app serves; the `products.quantified_associations` column is
  /// an importer's blob that no route here reads or writes.
  ///
  /// An id no product association of this tenant carries answers 404, and so
  /// does one belonging to another tenant: row-level security makes that row
  /// invisible rather than forbidden. A malformed id answers 400 before the
  /// route is reached.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsProductAssociationsGet(
      {required String id}) async {
    final String apiPath =
        '/v1/products/product_associations/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Updates one product association by id. A partial patch: the body names only
  /// the columns to change and every column it leaves out keeps its current
  /// value, so there is no read-modify-write and no way to blank a field by
  /// forgetting it.
  ///
  /// One relation from one product to another, of a declared type: this drill's
  /// accessories, this bundle's parts, this article's cross-sells. `quantity` is
  /// the number in "this bundle contains 4 casters" and is meaningful only when
  /// the association type carries `is_quantified`. This relational surface is
  /// the one this app serves; the `products.quantified_associations` column is
  /// an importer's blob that no route here reads or writes.
  ///
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `product_id`, `association_type_id`, `target_product_id` answers 409.
  Future<models.Error> productsProductAssociationsUpdate(
      {required String id,
      String? associationTypeId,
      int? position,
      String? productId,
      double? quantity,
      String? targetProductId}) async {
    final String apiPath =
        '/v1/products/product_associations/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (associationTypeId != null) 'association_type_id': associationTypeId,
      if (position != null) 'position': position,
      if (productId != null) 'product_id': productId,
      'quantity': quantity,
      if (targetProductId != null) 'target_product_id': targetProductId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The index of the enums this app ENFORCES — `product-kinds`,
  /// `membership-sources`, `rule-matches`, `asset-sources` — served by the app
  /// that owns the CHECK constraint each one is parsed out of, so a UI never has
  /// to keep its own copy of a status map and watch it drift. Names and titles
  /// only: fetch one by name for its values, badge tones and descriptions.
  ///
  /// The set is a fixed property of this app rather than tenant data, so it is
  /// the same list for every tenant. `attributes.type` is deliberately absent:
  /// it carries no CHECK, because the whole point of an attribute-driven PIM is
  /// that the type list is data an integrator extends.
  Future productsVocabulariesList() async {
    const String apiPath = '/v1/products/vocabularies';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// One vocabulary with every value it admits, each with a title, a description
  /// and the badge tone a UI should paint it in. The value set is parsed out of
  /// the CHECK constraint in schema.json, so what is served IS what is enforced.
  /// Labels are curated on top and can only add words and colour — a permitted
  /// value nobody labelled still appears, titled from its own key.
  Future<models.Error> productsVocabulariesGet({required String name}) async {
    final String apiPath =
        '/v1/products/vocabularies/{name}'.replaceAll('{name}', name);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deletes one product by id. It is a hard delete — the row is gone, and the
  /// answer is a confirmation rather than a result to branch on.
  ///
  /// It takes what hangs off it: product category memberships (`product_id`),
  /// product associations (`product_id` and `target_product_id`) are deleted
  /// with it. `products.parent_id` is set to null instead, so the rows that
  /// pointed at it survive the delete rather than going with it.
  ///
  /// An id no product of this tenant carries answers 404; there is no 409,
  /// because every foreign key pointing at this entity resolves itself on delete
  /// rather than blocking one. `products.deleted_at` is a SOFT-delete marker
  /// that the grid and every category-rule evaluation honour, but no route in
  /// this app ever writes it — to soft-delete instead, `PUT /products/{id}`
  /// with a `deleted_at`.
  Future<models.Error> productsDelete({required String id}) async {
    final String apiPath = '/v1/products/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Reads one product by its id — the whole row, every column, as it is
  /// stored.
  ///
  /// The catalog itself. A product row carries only what every product has —
  /// SKU, kind, family, enabled, tax class — and everything the tenant
  /// modelled lives in the `attribute_values` jsonb document, keyed by attribute
  /// CODE inside one of four scope buckets (common, per locale, per channel, per
  /// channel and locale). `label` is a generated column, maintained by the
  /// database so a grid of twenty thousand rows can sort and filter on a name
  /// with no join. `kind` says where the row sits in the variant hierarchy: a
  /// `model` carries what its variants share and is never sold itself.
  ///
  /// An id no product of this tenant carries answers 404, and so does one
  /// belonging to another tenant: row-level security makes that row invisible
  /// rather than forbidden. A malformed id answers 400 before the route is
  /// reached. Nothing is resolved for you here — for the display name, the
  /// family code and the grid attributes already unpacked, use `GET
  /// /products/grid` or `POST /products/labels`.
  Future<models.Error> productsGet({required String id}) async {
    final String apiPath = '/v1/products/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Updates one product by id. A partial patch: the body names only the columns
  /// to change and every column it leaves out keeps its current value, so there
  /// is no read-modify-write and no way to blank a field by forgetting it.
  ///
  /// The catalog itself. A product row carries only what every product has —
  /// SKU, kind, family, enabled, tax class — and everything the tenant
  /// modelled lives in the `attribute_values` jsonb document, keyed by attribute
  /// CODE inside one of four scope buckets (common, per locale, per channel, per
  /// channel and locale). `label` is a generated column, maintained by the
  /// database so a grid of twenty thousand rows can sort and filter on a name
  /// with no join. `kind` says where the row sits in the variant hierarchy: a
  /// `model` carries what its variants share and is never sold itself.
  ///
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `sku` answers 409. `label` is a generated column: naming it is dropped
  /// rather than refused, and `completeness` is written by the two metadata
  /// routes, not here.
  Future<models.Error> productsUpdate(
      {required String id,
      Map? attributeValues,
      Map? completeness,
      String? deletedAt,
      bool? enabled,
      String? familyId,
      String? familyVariantId,
      enums.ProductsKind? kind,
      String? parentId,
      Map? quantifiedAssociations,
      String? sku,
      String? taxClass}) async {
    final String apiPath = '/v1/products/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (attributeValues != null) 'attribute_values': attributeValues,
      'completeness': completeness,
      'deleted_at': deletedAt,
      if (enabled != null) 'enabled': enabled,
      'family_id': familyId,
      'family_variant_id': familyVariantId,
      if (kind != null) 'kind': kind.value,
      'parent_id': parentId,
      'quantified_associations': quantifiedAssociations,
      if (sku != null) 'sku': sku,
      'tax_class': taxClass,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// How much of what its family REQUIRES does this product actually carry —
  /// the number a merchandiser works down. products.completeness is jsonb that
  /// nothing had ever written. This computes it from family_attributes
  /// (is_required) against the product's own scoped attribute_values and stores
  /// the result. A product with no family answers 400 rather than an invented 0
  /// % — it has nothing to be measured against.
  Future<models.Error> productsCompleteness(
      {required String id, required Map data}) async {
    final String apiPath =
        '/v1/products/{id}/completeness'.replaceAll('{id}', id);

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

  /// Names the family in the body — by `family_id` or by `family_code`,
  /// whichever the caller holds — and computes the product's completeness in
  /// the same call. The step every family-driven surface waits on: a product
  /// with no family has no required attributes, so its completeness cannot be
  /// computed and its family's label attribute never resolves. Assigning the
  /// family recomputes and STORES products.completeness immediately, so the
  /// metadata cannot go stale between the two operations.
  Future<models.Error> productsFamilyAssign(
      {required String id, String? familyCode, String? familyId}) async {
    final String apiPath = '/v1/products/{id}/family'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (familyCode != null) 'family_code': familyCode,
      if (familyId != null) 'family_id': familyId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}

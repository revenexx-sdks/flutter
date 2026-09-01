part of '../revenexx.dart';

/// The catalog&#039;s SHAPE, which in an attribute-driven PIM is tenant data rather
/// than a schema: a new product property is a row here, not a migration.
/// Attributes and the groups and options that go with them, the families and
/// family variants that decide which attributes a product has, measurement
/// families, association types, asset families — plus the one read that
/// answers &quot;which fields does this family have&quot; as a ready-to-render list.
/// Edited rarely and by few people, which is exactly why it is its own group.
class ProductsDataModel extends Service {
  /// Initializes a [ProductsDataModel] service
  ProductsDataModel(super.client);

  /// A class of media with one shared shape — packshots, datasheets, line
  /// drawings. The family decides which attributes an asset of it carries (alt
  /// text, copyright, an expiry date) and, through `naming_convention`, how a
  /// file of it is named — which is what lets an import bind a file to a
  /// product with no mapping table.
  ///
  /// Every column of `asset_families` is an exact-match query parameter, `order`
  /// sorts by one column, and `limit`/`offset` page through `page.total`. A
  /// query key that is NOT a column is dropped rather than refused, and the
  /// `filter` object echoes the ones that were understood — that echo is the
  /// only way to tell an unfiltered answer from an empty one. It reads rows
  /// exactly as they are stored: no join is resolved, no jsonb value is
  /// unpacked.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future productsAssetFamiliesList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? code,
      String? labels,
      String? namingConvention,
      String? createdAt,
      String? updatedAt}) async {
    const String apiPath = '/v1/products/asset_families';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (labels != null) 'labels': labels,
      if (namingConvention != null) 'naming_convention': namingConvention,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Creates one asset family and answers 201 with the stored row, including the
  /// id and the timestamps the database filled in — a client never sends an
  /// id, it reads one back and uses it in the path of every later call.
  ///
  /// A class of media with one shared shape — packshots, datasheets, line
  /// drawings. The family decides which attributes an asset of it carries (alt
  /// text, copyright, an expiry date) and, through `naming_convention`, how a
  /// file of it is named — which is what lets an import bind a file to a
  /// product with no mapping table.
  ///
  /// `code` is the only column the database refuses the row without; everything
  /// else has a default or is nullable. A second row with the same `code`
  /// answers 409.
  Future<models.Error> productsAssetFamiliesCreate(
      {required String code, Map? labels, Map? namingConvention}) async {
    const String apiPath = '/v1/products/asset_families';

    final Map<String, dynamic> apiParams = {
      'code': code,
      'labels': labels,
      'naming_convention': namingConvention,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deletes one asset family by id. It is a hard delete — the row is gone,
  /// and the answer is a confirmation rather than a result to branch on.
  ///
  /// It takes what hangs off it: assets (`asset_family_id`) are deleted with it.
  ///
  /// An id no asset family of this tenant carries answers 404; there is no 409,
  /// because every foreign key pointing at this entity resolves itself on delete
  /// rather than blocking one.
  Future<models.Error> productsAssetFamiliesDelete({required String id}) async {
    final String apiPath =
        '/v1/products/asset_families/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Reads one asset family by its id — the whole row, every column, as it is
  /// stored.
  ///
  /// A class of media with one shared shape — packshots, datasheets, line
  /// drawings. The family decides which attributes an asset of it carries (alt
  /// text, copyright, an expiry date) and, through `naming_convention`, how a
  /// file of it is named — which is what lets an import bind a file to a
  /// product with no mapping table.
  ///
  /// An id no asset family of this tenant carries answers 404, and so does one
  /// belonging to another tenant: row-level security makes that row invisible
  /// rather than forbidden. A malformed id answers 400 before the route is
  /// reached.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsAssetFamiliesGet({required String id}) async {
    final String apiPath =
        '/v1/products/asset_families/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Updates one asset family by id. A partial patch: the body names only the
  /// columns to change and every column it leaves out keeps its current value,
  /// so there is no read-modify-write and no way to blank a field by forgetting
  /// it.
  ///
  /// A class of media with one shared shape — packshots, datasheets, line
  /// drawings. The family decides which attributes an asset of it carries (alt
  /// text, copyright, an expiry date) and, through `naming_convention`, how a
  /// file of it is named — which is what lets an import bind a file to a
  /// product with no mapping table.
  ///
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `code` answers 409.
  Future<models.Error> productsAssetFamiliesUpdate(
      {required String id,
      String? code,
      Map? labels,
      Map? namingConvention}) async {
    final String apiPath =
        '/v1/products/asset_families/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (code != null) 'code': code,
      'labels': labels,
      'naming_convention': namingConvention,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The KIND of relation two products can have — cross-sell, accessory, spare
  /// part, bill of materials. `is_two_way` declares the relation symmetric and
  /// `is_quantified` declares that it carries a quantity; both are declarations
  /// a client READS rather than behaviour this app performs — it stores one
  /// row per direction and never creates the mirror for you.
  ///
  /// Every column of `association_types` is an exact-match query parameter,
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
  Future productsAssociationTypesList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? code,
      bool? isTwoWay,
      bool? isQuantified,
      String? labels,
      String? createdAt}) async {
    const String apiPath = '/v1/products/association_types';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (isTwoWay != null) 'is_two_way': isTwoWay,
      if (isQuantified != null) 'is_quantified': isQuantified,
      if (labels != null) 'labels': labels,
      if (createdAt != null) 'created_at': createdAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Creates one association type and answers 201 with the stored row, including
  /// the id and the timestamps the database filled in — a client never sends
  /// an id, it reads one back and uses it in the path of every later call.
  ///
  /// The KIND of relation two products can have — cross-sell, accessory, spare
  /// part, bill of materials. `is_two_way` declares the relation symmetric and
  /// `is_quantified` declares that it carries a quantity; both are declarations
  /// a client READS rather than behaviour this app performs — it stores one
  /// row per direction and never creates the mirror for you.
  ///
  /// `code` is the only column the database refuses the row without; everything
  /// else has a default or is nullable. A second row with the same `code`
  /// answers 409.
  Future<models.Error> productsAssociationTypesCreate(
      {required String code,
      bool? isQuantified,
      bool? isTwoWay,
      Map? labels}) async {
    const String apiPath = '/v1/products/association_types';

    final Map<String, dynamic> apiParams = {
      'code': code,
      if (isQuantified != null) 'is_quantified': isQuantified,
      if (isTwoWay != null) 'is_two_way': isTwoWay,
      'labels': labels,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deletes one association type by id. It is a hard delete — the row is
  /// gone, and the answer is a confirmation rather than a result to branch on.
  ///
  /// It takes what hangs off it: product associations (`association_type_id`)
  /// are deleted with it.
  ///
  /// An id no association type of this tenant carries answers 404; there is no
  /// 409, because every foreign key pointing at this entity resolves itself on
  /// delete rather than blocking one.
  Future<models.Error> productsAssociationTypesDelete(
      {required String id}) async {
    final String apiPath =
        '/v1/products/association_types/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Reads one association type by its id — the whole row, every column, as it
  /// is stored.
  ///
  /// The KIND of relation two products can have — cross-sell, accessory, spare
  /// part, bill of materials. `is_two_way` declares the relation symmetric and
  /// `is_quantified` declares that it carries a quantity; both are declarations
  /// a client READS rather than behaviour this app performs — it stores one
  /// row per direction and never creates the mirror for you.
  ///
  /// An id no association type of this tenant carries answers 404, and so does
  /// one belonging to another tenant: row-level security makes that row
  /// invisible rather than forbidden. A malformed id answers 400 before the
  /// route is reached.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsAssociationTypesGet({required String id}) async {
    final String apiPath =
        '/v1/products/association_types/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Updates one association type by id. A partial patch: the body names only
  /// the columns to change and every column it leaves out keeps its current
  /// value, so there is no read-modify-write and no way to blank a field by
  /// forgetting it.
  ///
  /// The KIND of relation two products can have — cross-sell, accessory, spare
  /// part, bill of materials. `is_two_way` declares the relation symmetric and
  /// `is_quantified` declares that it carries a quantity; both are declarations
  /// a client READS rather than behaviour this app performs — it stores one
  /// row per direction and never creates the mirror for you.
  ///
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `code` answers 409.
  Future<models.Error> productsAssociationTypesUpdate(
      {required String id,
      String? code,
      bool? isQuantified,
      bool? isTwoWay,
      Map? labels}) async {
    final String apiPath =
        '/v1/products/association_types/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (code != null) 'code': code,
      if (isQuantified != null) 'is_quantified': isQuantified,
      if (isTwoWay != null) 'is_two_way': isTwoWay,
      'labels': labels,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Which fields does this family have — one ready-to-render list, not six
  /// joined tables. The catalog's SHAPE is tenant data: a product's properties
  /// are rows in `attributes`, grouped by `attribute_groups`, selected per
  /// family by `family_attributes`, with their permitted values in
  /// `attribute_options` and their variant axes in `family_variants`. Reading
  /// that shape used to mean five reads, a join, and a private `attributes.type`
  /// → input mapping in every client — and that mapping is the part that
  /// must live here, because the type list carries no CHECK by design and an
  /// integrator extends it. Answers one field list instead, ordered by group
  /// then by the family's own ordering. Without a family it answers every
  /// attribute declared for `entity_type`/`entity_ref` — the shape of a
  /// reference entity's records or an asset family, which have attributes but no
  /// family. Writes nothing.
  Future<models.Error> productsAttributeSchema(
      {String? familyId,
      String? familyCode,
      enums.EntityType? entityType,
      String? entityRef,
      String? locale,
      String? channel,
      enums.Kind? kind}) async {
    const String apiPath = '/v1/products/attribute-schema';

    final Map<String, dynamic> apiParams = {
      if (familyId != null) 'family_id': familyId,
      if (familyCode != null) 'family_code': familyCode,
      if (entityType != null) 'entity_type': entityType.value,
      if (entityRef != null) 'entity_ref': entityRef,
      if (locale != null) 'locale': locale,
      if (channel != null) 'channel': channel,
      if (kind != null) 'kind': kind.value,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// An attribute group is a SECTION of a product form — "Technical
  /// attributes", "Logistics" — and the thing every attribute is filed under.
  /// It carries a `position`, which is the order the sections appear in, and
  /// per-language `labels`, which is what an operator reads; the `code` is what
  /// an attribute joins on and is never shown. `GET /products/attribute-schema`
  /// already resolves a group's heading onto every field it returns, so these
  /// routes are for MANAGING the sections, not for rendering a form.
  ///
  /// Every column of `attribute_groups` is an exact-match query parameter,
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
  Future productsAttributeGroupsList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? code,
      int? position,
      String? labels,
      String? createdAt,
      String? updatedAt}) async {
    const String apiPath = '/v1/products/attribute_groups';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (position != null) 'position': position,
      if (labels != null) 'labels': labels,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Creates one attribute group and answers 201 with the stored row, including
  /// the id and the timestamps the database filled in — a client never sends
  /// an id, it reads one back and uses it in the path of every later call.
  ///
  /// An attribute group is a SECTION of a product form — "Technical
  /// attributes", "Logistics" — and the thing every attribute is filed under.
  /// It carries a `position`, which is the order the sections appear in, and
  /// per-language `labels`, which is what an operator reads; the `code` is what
  /// an attribute joins on and is never shown. `GET /products/attribute-schema`
  /// already resolves a group's heading onto every field it returns, so these
  /// routes are for MANAGING the sections, not for rendering a form.
  ///
  /// `code` is the only column the database refuses the row without; everything
  /// else has a default or is nullable. A second row with the same `code`
  /// answers 409.
  Future<models.Error> productsAttributeGroupsCreate(
      {required String code, Map? labels, int? position}) async {
    const String apiPath = '/v1/products/attribute_groups';

    final Map<String, dynamic> apiParams = {
      'code': code,
      'labels': labels,
      if (position != null) 'position': position,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deletes one attribute group by id. It is a hard delete — the row is gone,
  /// and the answer is a confirmation rather than a result to branch on.
  ///
  /// `attributes.group_id` is set to null instead, so the rows that pointed at
  /// it survive the delete rather than going with it.
  ///
  /// An id no attribute group of this tenant carries answers 404; there is no
  /// 409, because every foreign key pointing at this entity resolves itself on
  /// delete rather than blocking one.
  Future<models.Error> productsAttributeGroupsDelete(
      {required String id}) async {
    final String apiPath =
        '/v1/products/attribute_groups/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Reads one attribute group by its id — the whole row, every column, as it
  /// is stored.
  ///
  /// An attribute group is a SECTION of a product form — "Technical
  /// attributes", "Logistics" — and the thing every attribute is filed under.
  /// It carries a `position`, which is the order the sections appear in, and
  /// per-language `labels`, which is what an operator reads; the `code` is what
  /// an attribute joins on and is never shown. `GET /products/attribute-schema`
  /// already resolves a group's heading onto every field it returns, so these
  /// routes are for MANAGING the sections, not for rendering a form.
  ///
  /// An id no attribute group of this tenant carries answers 404, and so does
  /// one belonging to another tenant: row-level security makes that row
  /// invisible rather than forbidden. A malformed id answers 400 before the
  /// route is reached.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsAttributeGroupsGet({required String id}) async {
    final String apiPath =
        '/v1/products/attribute_groups/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Updates one attribute group by id. A partial patch: the body names only the
  /// columns to change and every column it leaves out keeps its current value,
  /// so there is no read-modify-write and no way to blank a field by forgetting
  /// it.
  ///
  /// An attribute group is a SECTION of a product form — "Technical
  /// attributes", "Logistics" — and the thing every attribute is filed under.
  /// It carries a `position`, which is the order the sections appear in, and
  /// per-language `labels`, which is what an operator reads; the `code` is what
  /// an attribute joins on and is never shown. `GET /products/attribute-schema`
  /// already resolves a group's heading onto every field it returns, so these
  /// routes are for MANAGING the sections, not for rendering a form.
  ///
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `code` answers 409.
  Future<models.Error> productsAttributeGroupsUpdate(
      {required String id, String? code, Map? labels, int? position}) async {
    final String apiPath =
        '/v1/products/attribute_groups/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (code != null) 'code': code,
      'labels': labels,
      if (position != null) 'position': position,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The permitted values of one select or multi-select attribute. A record
  /// stores the option's CODE and never its label, so renaming an option in
  /// every language leaves every product that picked it untouched, and
  /// `position` is the order it appears in the dropdown. `GET
  /// /products/attribute-schema` republishes these as a field's `options`,
  /// already resolved for a locale.
  ///
  /// Every column of `attribute_options` is an exact-match query parameter,
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
  Future productsAttributeOptionsList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? attributeId,
      String? code,
      int? position,
      String? swatch,
      String? labels,
      String? createdAt}) async {
    const String apiPath = '/v1/products/attribute_options';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (attributeId != null) 'attribute_id': attributeId,
      if (code != null) 'code': code,
      if (position != null) 'position': position,
      if (swatch != null) 'swatch': swatch,
      if (labels != null) 'labels': labels,
      if (createdAt != null) 'created_at': createdAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Creates one attribute option and answers 201 with the stored row, including
  /// the id and the timestamps the database filled in — a client never sends
  /// an id, it reads one back and uses it in the path of every later call.
  ///
  /// The permitted values of one select or multi-select attribute. A record
  /// stores the option's CODE and never its label, so renaming an option in
  /// every language leaves every product that picked it untouched, and
  /// `position` is the order it appears in the dropdown. `GET
  /// /products/attribute-schema` republishes these as a field's `options`,
  /// already resolved for a locale.
  ///
  /// `attribute_id` and `code` are the only columns the database refuses the row
  /// without; everything else has a default or is nullable. A second row with
  /// the same `attribute_id` and `code` answers 409.
  Future<models.Error> productsAttributeOptionsCreate(
      {required String attributeId,
      required String code,
      Map? labels,
      int? position,
      Map? swatch}) async {
    const String apiPath = '/v1/products/attribute_options';

    final Map<String, dynamic> apiParams = {
      'attribute_id': attributeId,
      'code': code,
      'labels': labels,
      if (position != null) 'position': position,
      'swatch': swatch,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deletes one attribute option by id. It is a hard delete — the row is
  /// gone, and the answer is a confirmation rather than a result to branch on.
  ///
  /// Nothing in this schema references it, so nothing else changes.
  ///
  /// An id no attribute option of this tenant carries answers 404; there is no
  /// 409, because every foreign key pointing at this entity resolves itself on
  /// delete rather than blocking one.
  Future<models.Error> productsAttributeOptionsDelete(
      {required String id}) async {
    final String apiPath =
        '/v1/products/attribute_options/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Reads one attribute option by its id — the whole row, every column, as it
  /// is stored.
  ///
  /// The permitted values of one select or multi-select attribute. A record
  /// stores the option's CODE and never its label, so renaming an option in
  /// every language leaves every product that picked it untouched, and
  /// `position` is the order it appears in the dropdown. `GET
  /// /products/attribute-schema` republishes these as a field's `options`,
  /// already resolved for a locale.
  ///
  /// An id no attribute option of this tenant carries answers 404, and so does
  /// one belonging to another tenant: row-level security makes that row
  /// invisible rather than forbidden. A malformed id answers 400 before the
  /// route is reached.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsAttributeOptionsGet({required String id}) async {
    final String apiPath =
        '/v1/products/attribute_options/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Updates one attribute option by id. A partial patch: the body names only
  /// the columns to change and every column it leaves out keeps its current
  /// value, so there is no read-modify-write and no way to blank a field by
  /// forgetting it.
  ///
  /// The permitted values of one select or multi-select attribute. A record
  /// stores the option's CODE and never its label, so renaming an option in
  /// every language leaves every product that picked it untouched, and
  /// `position` is the order it appears in the dropdown. `GET
  /// /products/attribute-schema` republishes these as a field's `options`,
  /// already resolved for a locale.
  ///
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `attribute_id` and `code` answers 409.
  Future<models.Error> productsAttributeOptionsUpdate(
      {required String id,
      String? attributeId,
      String? code,
      Map? labels,
      int? position,
      Map? swatch}) async {
    final String apiPath =
        '/v1/products/attribute_options/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (attributeId != null) 'attribute_id': attributeId,
      if (code != null) 'code': code,
      'labels': labels,
      if (position != null) 'position': position,
      'swatch': swatch,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// An attribute is one property a record can carry, and in an attribute-driven
  /// PIM it is a ROW rather than a column: giving the catalog a "net weight" is
  /// a create here, not a migration. Its own flags decide everything downstream
  /// — `localizable` and `scopable` pick which of the four `attribute_values`
  /// buckets its values are written to, `type` picks the editor that renders it,
  /// `usable_in_grid` and `is_filterable` are what the product grid reads.
  /// `entity_type`/`entity_ref` say which kind of record carries it: a product,
  /// one reference entity's records, one asset family, or a category.
  ///
  /// Every column of `attributes` is an exact-match query parameter, `order`
  /// sorts by one column, and `limit`/`offset` page through `page.total`. A
  /// query key that is NOT a column is dropped rather than refused, and the
  /// `filter` object echoes the ones that were understood — that echo is the
  /// only way to tell an unfiltered answer from an empty one. It reads rows
  /// exactly as they are stored: no join is resolved, no jsonb value is
  /// unpacked.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future productsAttributesList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? code,
      String? entityType,
      String? entityRef,
      String? type,
      String? groupId,
      bool? localizable,
      bool? scopable,
      bool? isUnique,
      bool? isFilterable,
      bool? usableInGrid,
      String? validation,
      String? config,
      String? labels,
      int? position,
      String? createdAt,
      String? updatedAt}) async {
    const String apiPath = '/v1/products/attributes';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (entityType != null) 'entity_type': entityType,
      if (entityRef != null) 'entity_ref': entityRef,
      if (type != null) 'type': type,
      if (groupId != null) 'group_id': groupId,
      if (localizable != null) 'localizable': localizable,
      if (scopable != null) 'scopable': scopable,
      if (isUnique != null) 'is_unique': isUnique,
      if (isFilterable != null) 'is_filterable': isFilterable,
      if (usableInGrid != null) 'usable_in_grid': usableInGrid,
      if (validation != null) 'validation': validation,
      if (config != null) 'config': config,
      if (labels != null) 'labels': labels,
      if (position != null) 'position': position,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Creates one attribute and answers 201 with the stored row, including the id
  /// and the timestamps the database filled in — a client never sends an id,
  /// it reads one back and uses it in the path of every later call.
  ///
  /// An attribute is one property a record can carry, and in an attribute-driven
  /// PIM it is a ROW rather than a column: giving the catalog a "net weight" is
  /// a create here, not a migration. Its own flags decide everything downstream
  /// — `localizable` and `scopable` pick which of the four `attribute_values`
  /// buckets its values are written to, `type` picks the editor that renders it,
  /// `usable_in_grid` and `is_filterable` are what the product grid reads.
  /// `entity_type`/`entity_ref` say which kind of record carries it: a product,
  /// one reference entity's records, one asset family, or a category.
  ///
  /// `code` and `type` are the only columns the database refuses the row
  /// without; everything else has a default or is nullable. A second row with
  /// the same `entity_type`, `entity_ref`, `code` answers 409.
  Future<models.Error> productsAttributesCreate(
      {required String code,
      required String type,
      Map? config,
      String? entityRef,
      String? entityType,
      String? groupId,
      bool? isFilterable,
      bool? isUnique,
      Map? labels,
      bool? localizable,
      int? position,
      bool? scopable,
      bool? usableInGrid,
      Map? validation}) async {
    const String apiPath = '/v1/products/attributes';

    final Map<String, dynamic> apiParams = {
      'code': code,
      'config': config,
      'entity_ref': entityRef,
      if (entityType != null) 'entity_type': entityType,
      'group_id': groupId,
      if (isFilterable != null) 'is_filterable': isFilterable,
      if (isUnique != null) 'is_unique': isUnique,
      'labels': labels,
      if (localizable != null) 'localizable': localizable,
      if (position != null) 'position': position,
      if (scopable != null) 'scopable': scopable,
      'type': type,
      if (usableInGrid != null) 'usable_in_grid': usableInGrid,
      'validation': validation,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deletes one attribute by id. It is a hard delete — the row is gone, and
  /// the answer is a confirmation rather than a result to branch on.
  ///
  /// It takes what hangs off it: attribute options (`attribute_id`), family
  /// attributes (`attribute_id`) are deleted with it.
  ///
  /// An id no attribute of this tenant carries answers 404; there is no 409,
  /// because every foreign key pointing at this entity resolves itself on delete
  /// rather than blocking one.
  Future<models.Error> productsAttributesDelete({required String id}) async {
    final String apiPath =
        '/v1/products/attributes/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Reads one attribute by its id — the whole row, every column, as it is
  /// stored.
  ///
  /// An attribute is one property a record can carry, and in an attribute-driven
  /// PIM it is a ROW rather than a column: giving the catalog a "net weight" is
  /// a create here, not a migration. Its own flags decide everything downstream
  /// — `localizable` and `scopable` pick which of the four `attribute_values`
  /// buckets its values are written to, `type` picks the editor that renders it,
  /// `usable_in_grid` and `is_filterable` are what the product grid reads.
  /// `entity_type`/`entity_ref` say which kind of record carries it: a product,
  /// one reference entity's records, one asset family, or a category.
  ///
  /// An id no attribute of this tenant carries answers 404, and so does one
  /// belonging to another tenant: row-level security makes that row invisible
  /// rather than forbidden. A malformed id answers 400 before the route is
  /// reached.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsAttributesGet({required String id}) async {
    final String apiPath =
        '/v1/products/attributes/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Updates one attribute by id. A partial patch: the body names only the
  /// columns to change and every column it leaves out keeps its current value,
  /// so there is no read-modify-write and no way to blank a field by forgetting
  /// it.
  ///
  /// An attribute is one property a record can carry, and in an attribute-driven
  /// PIM it is a ROW rather than a column: giving the catalog a "net weight" is
  /// a create here, not a migration. Its own flags decide everything downstream
  /// — `localizable` and `scopable` pick which of the four `attribute_values`
  /// buckets its values are written to, `type` picks the editor that renders it,
  /// `usable_in_grid` and `is_filterable` are what the product grid reads.
  /// `entity_type`/`entity_ref` say which kind of record carries it: a product,
  /// one reference entity's records, one asset family, or a category.
  ///
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `entity_type`, `entity_ref`, `code` answers 409.
  Future<models.Error> productsAttributesUpdate(
      {required String id,
      String? code,
      Map? config,
      String? entityRef,
      String? entityType,
      String? groupId,
      bool? isFilterable,
      bool? isUnique,
      Map? labels,
      bool? localizable,
      int? position,
      bool? scopable,
      String? type,
      bool? usableInGrid,
      Map? validation}) async {
    final String apiPath =
        '/v1/products/attributes/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (code != null) 'code': code,
      'config': config,
      'entity_ref': entityRef,
      if (entityType != null) 'entity_type': entityType,
      'group_id': groupId,
      if (isFilterable != null) 'is_filterable': isFilterable,
      if (isUnique != null) 'is_unique': isUnique,
      'labels': labels,
      if (localizable != null) 'localizable': localizable,
      if (position != null) 'position': position,
      if (scopable != null) 'scopable': scopable,
      if (type != null) 'type': type,
      if (usableInGrid != null) 'usable_in_grid': usableInGrid,
      'validation': validation,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A family decides WHICH attributes a product has — the set is
  /// `family_attributes`, and every family-driven surface follows from it. It
  /// also names which attribute carries the display name (`label_attribute`) and
  /// which carries the main image. A product with no family has no required
  /// attributes at all, so its completeness cannot be measured and its name
  /// never resolves past the SKU; `POST /products/{id}/family` is the call that
  /// ends that state.
  ///
  /// Every column of `families` is an exact-match query parameter, `order` sorts
  /// by one column, and `limit`/`offset` page through `page.total`. A query key
  /// that is NOT a column is dropped rather than refused, and the `filter`
  /// object echoes the ones that were understood — that echo is the only way
  /// to tell an unfiltered answer from an empty one. It reads rows exactly as
  /// they are stored: no join is resolved, no jsonb value is unpacked.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future productsFamiliesList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? code,
      String? labelAttribute,
      String? imageAttribute,
      String? labels,
      String? createdAt,
      String? updatedAt}) async {
    const String apiPath = '/v1/products/families';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (labelAttribute != null) 'label_attribute': labelAttribute,
      if (imageAttribute != null) 'image_attribute': imageAttribute,
      if (labels != null) 'labels': labels,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Creates one family and answers 201 with the stored row, including the id
  /// and the timestamps the database filled in — a client never sends an id,
  /// it reads one back and uses it in the path of every later call.
  ///
  /// A family decides WHICH attributes a product has — the set is
  /// `family_attributes`, and every family-driven surface follows from it. It
  /// also names which attribute carries the display name (`label_attribute`) and
  /// which carries the main image. A product with no family has no required
  /// attributes at all, so its completeness cannot be measured and its name
  /// never resolves past the SKU; `POST /products/{id}/family` is the call that
  /// ends that state.
  ///
  /// `code` is the only column the database refuses the row without; everything
  /// else has a default or is nullable. A second row with the same `code`
  /// answers 409.
  Future<models.Error> productsFamiliesCreate(
      {required String code,
      String? imageAttribute,
      String? labelAttribute,
      Map? labels}) async {
    const String apiPath = '/v1/products/families';

    final Map<String, dynamic> apiParams = {
      'code': code,
      'image_attribute': imageAttribute,
      'label_attribute': labelAttribute,
      'labels': labels,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deletes one family by id. It is a hard delete — the row is gone, and the
  /// answer is a confirmation rather than a result to branch on.
  ///
  /// It takes what hangs off it: family attributes (`family_id`), family
  /// variants (`family_id`) are deleted with it. `products.family_id` is set to
  /// null instead, so the rows that pointed at it survive the delete rather than
  /// going with it.
  ///
  /// An id no family of this tenant carries answers 404; there is no 409,
  /// because every foreign key pointing at this entity resolves itself on delete
  /// rather than blocking one.
  Future<models.Error> productsFamiliesDelete({required String id}) async {
    final String apiPath = '/v1/products/families/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Reads one family by its id — the whole row, every column, as it is
  /// stored.
  ///
  /// A family decides WHICH attributes a product has — the set is
  /// `family_attributes`, and every family-driven surface follows from it. It
  /// also names which attribute carries the display name (`label_attribute`) and
  /// which carries the main image. A product with no family has no required
  /// attributes at all, so its completeness cannot be measured and its name
  /// never resolves past the SKU; `POST /products/{id}/family` is the call that
  /// ends that state.
  ///
  /// An id no family of this tenant carries answers 404, and so does one
  /// belonging to another tenant: row-level security makes that row invisible
  /// rather than forbidden. A malformed id answers 400 before the route is
  /// reached.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsFamiliesGet({required String id}) async {
    final String apiPath = '/v1/products/families/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Updates one family by id. A partial patch: the body names only the columns
  /// to change and every column it leaves out keeps its current value, so there
  /// is no read-modify-write and no way to blank a field by forgetting it.
  ///
  /// A family decides WHICH attributes a product has — the set is
  /// `family_attributes`, and every family-driven surface follows from it. It
  /// also names which attribute carries the display name (`label_attribute`) and
  /// which carries the main image. A product with no family has no required
  /// attributes at all, so its completeness cannot be measured and its name
  /// never resolves past the SKU; `POST /products/{id}/family` is the call that
  /// ends that state.
  ///
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `code` answers 409.
  Future<models.Error> productsFamiliesUpdate(
      {required String id,
      String? code,
      String? imageAttribute,
      String? labelAttribute,
      Map? labels}) async {
    final String apiPath = '/v1/products/families/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (code != null) 'code': code,
      'image_attribute': imageAttribute,
      'label_attribute': labelAttribute,
      'labels': labels,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One link between a family and an attribute — the row that puts an
  /// attribute INTO a family's form. It carries the family's own ordering of
  /// that attribute, which overrides the attribute's default position, and
  /// `is_required`, which is the flag `POST /products/{id}/completeness`
  /// measures and nothing else reads. `required_channels` narrows "required" to
  /// named channels; null or empty means required EVERYWHERE, not nowhere.
  ///
  /// Every column of `family_attributes` is an exact-match query parameter,
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
  Future productsFamilyAttributesList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? familyId,
      String? attributeId,
      int? position,
      bool? isRequired,
      String? requiredChannels,
      String? createdAt}) async {
    const String apiPath = '/v1/products/family_attributes';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (familyId != null) 'family_id': familyId,
      if (attributeId != null) 'attribute_id': attributeId,
      if (position != null) 'position': position,
      if (isRequired != null) 'is_required': isRequired,
      if (requiredChannels != null) 'required_channels': requiredChannels,
      if (createdAt != null) 'created_at': createdAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Creates one family attribute and answers 201 with the stored row, including
  /// the id and the timestamps the database filled in — a client never sends
  /// an id, it reads one back and uses it in the path of every later call.
  ///
  /// One link between a family and an attribute — the row that puts an
  /// attribute INTO a family's form. It carries the family's own ordering of
  /// that attribute, which overrides the attribute's default position, and
  /// `is_required`, which is the flag `POST /products/{id}/completeness`
  /// measures and nothing else reads. `required_channels` narrows "required" to
  /// named channels; null or empty means required EVERYWHERE, not nowhere.
  ///
  /// `family_id` and `attribute_id` are the only columns the database refuses
  /// the row without; everything else has a default or is nullable. A second row
  /// with the same `family_id` and `attribute_id` answers 409.
  Future<models.Error> productsFamilyAttributesCreate(
      {required String attributeId,
      required String familyId,
      bool? isRequired,
      int? position,
      Map? requiredChannels}) async {
    const String apiPath = '/v1/products/family_attributes';

    final Map<String, dynamic> apiParams = {
      'attribute_id': attributeId,
      'family_id': familyId,
      if (isRequired != null) 'is_required': isRequired,
      if (position != null) 'position': position,
      'required_channels': requiredChannels,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deletes one family attribute by id. It is a hard delete — the row is
  /// gone, and the answer is a confirmation rather than a result to branch on.
  ///
  /// Nothing in this schema references it, so nothing else changes.
  ///
  /// An id no family attribute of this tenant carries answers 404; there is no
  /// 409, because every foreign key pointing at this entity resolves itself on
  /// delete rather than blocking one.
  Future<models.Error> productsFamilyAttributesDelete(
      {required String id}) async {
    final String apiPath =
        '/v1/products/family_attributes/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Reads one family attribute by its id — the whole row, every column, as it
  /// is stored.
  ///
  /// One link between a family and an attribute — the row that puts an
  /// attribute INTO a family's form. It carries the family's own ordering of
  /// that attribute, which overrides the attribute's default position, and
  /// `is_required`, which is the flag `POST /products/{id}/completeness`
  /// measures and nothing else reads. `required_channels` narrows "required" to
  /// named channels; null or empty means required EVERYWHERE, not nowhere.
  ///
  /// An id no family attribute of this tenant carries answers 404, and so does
  /// one belonging to another tenant: row-level security makes that row
  /// invisible rather than forbidden. A malformed id answers 400 before the
  /// route is reached.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsFamilyAttributesGet({required String id}) async {
    final String apiPath =
        '/v1/products/family_attributes/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Updates one family attribute by id. A partial patch: the body names only
  /// the columns to change and every column it leaves out keeps its current
  /// value, so there is no read-modify-write and no way to blank a field by
  /// forgetting it.
  ///
  /// One link between a family and an attribute — the row that puts an
  /// attribute INTO a family's form. It carries the family's own ordering of
  /// that attribute, which overrides the attribute's default position, and
  /// `is_required`, which is the flag `POST /products/{id}/completeness`
  /// measures and nothing else reads. `required_channels` narrows "required" to
  /// named channels; null or empty means required EVERYWHERE, not nowhere.
  ///
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `family_id` and `attribute_id` answers 409.
  Future<models.Error> productsFamilyAttributesUpdate(
      {required String id,
      String? attributeId,
      String? familyId,
      bool? isRequired,
      int? position,
      Map? requiredChannels}) async {
    final String apiPath =
        '/v1/products/family_attributes/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (attributeId != null) 'attribute_id': attributeId,
      if (familyId != null) 'family_id': familyId,
      if (isRequired != null) 'is_required': isRequired,
      if (position != null) 'position': position,
      'required_channels': requiredChannels,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A variant structure of a family: the attribute axes a product model splits
  /// its variants on — colour, then size. A product follows one through
  /// `family_variant_id`, and an attribute named as an axis becomes read-only on
  /// the model and is set on each variant instead, which is what `GET
  /// /products/attribute-schema` reports as `readonly_reason`. Two axis shapes
  /// are in the wild and both are read: a bare list of codes, or one entry per
  /// level.
  ///
  /// Every column of `family_variants` is an exact-match query parameter,
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
  Future productsFamilyVariantsList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? familyId,
      String? code,
      String? labels,
      String? axes,
      String? createdAt,
      String? updatedAt}) async {
    const String apiPath = '/v1/products/family_variants';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (familyId != null) 'family_id': familyId,
      if (code != null) 'code': code,
      if (labels != null) 'labels': labels,
      if (axes != null) 'axes': axes,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Creates one family variant and answers 201 with the stored row, including
  /// the id and the timestamps the database filled in — a client never sends
  /// an id, it reads one back and uses it in the path of every later call.
  ///
  /// A variant structure of a family: the attribute axes a product model splits
  /// its variants on — colour, then size. A product follows one through
  /// `family_variant_id`, and an attribute named as an axis becomes read-only on
  /// the model and is set on each variant instead, which is what `GET
  /// /products/attribute-schema` reports as `readonly_reason`. Two axis shapes
  /// are in the wild and both are read: a bare list of codes, or one entry per
  /// level.
  ///
  /// `family_id` and `code` are the only columns the database refuses the row
  /// without; everything else has a default or is nullable. A second row with
  /// the same `code` answers 409.
  Future<models.Error> productsFamilyVariantsCreate(
      {required String code,
      required String familyId,
      Map? axes,
      Map? labels}) async {
    const String apiPath = '/v1/products/family_variants';

    final Map<String, dynamic> apiParams = {
      'axes': axes,
      'code': code,
      'family_id': familyId,
      'labels': labels,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deletes one family variant by id. It is a hard delete — the row is gone,
  /// and the answer is a confirmation rather than a result to branch on.
  ///
  /// `products.family_variant_id` is set to null instead, so the rows that
  /// pointed at it survive the delete rather than going with it.
  ///
  /// An id no family variant of this tenant carries answers 404; there is no
  /// 409, because every foreign key pointing at this entity resolves itself on
  /// delete rather than blocking one.
  Future<models.Error> productsFamilyVariantsDelete(
      {required String id}) async {
    final String apiPath =
        '/v1/products/family_variants/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Reads one family variant by its id — the whole row, every column, as it
  /// is stored.
  ///
  /// A variant structure of a family: the attribute axes a product model splits
  /// its variants on — colour, then size. A product follows one through
  /// `family_variant_id`, and an attribute named as an axis becomes read-only on
  /// the model and is set on each variant instead, which is what `GET
  /// /products/attribute-schema` reports as `readonly_reason`. Two axis shapes
  /// are in the wild and both are read: a bare list of codes, or one entry per
  /// level.
  ///
  /// An id no family variant of this tenant carries answers 404, and so does one
  /// belonging to another tenant: row-level security makes that row invisible
  /// rather than forbidden. A malformed id answers 400 before the route is
  /// reached.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsFamilyVariantsGet({required String id}) async {
    final String apiPath =
        '/v1/products/family_variants/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Updates one family variant by id. A partial patch: the body names only the
  /// columns to change and every column it leaves out keeps its current value,
  /// so there is no read-modify-write and no way to blank a field by forgetting
  /// it.
  ///
  /// A variant structure of a family: the attribute axes a product model splits
  /// its variants on — colour, then size. A product follows one through
  /// `family_variant_id`, and an attribute named as an axis becomes read-only on
  /// the model and is set on each variant instead, which is what `GET
  /// /products/attribute-schema` reports as `readonly_reason`. Two axis shapes
  /// are in the wild and both are read: a bare list of codes, or one entry per
  /// level.
  ///
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `code` answers 409.
  Future<models.Error> productsFamilyVariantsUpdate(
      {required String id,
      Map? axes,
      String? code,
      String? familyId,
      Map? labels}) async {
    final String apiPath =
        '/v1/products/family_variants/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      'axes': axes,
      if (code != null) 'code': code,
      if (familyId != null) 'family_id': familyId,
      'labels': labels,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A family of units and the standard one they all convert to — weight in
  /// kilograms, length in metres. A `measure` attribute names one and then
  /// offers exactly that family's units, and each unit's `convert_factor` is
  /// what makes two values recorded in different units comparable at all.
  ///
  /// Every column of `measurement_families` is an exact-match query parameter,
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
  Future productsMeasurementFamiliesList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? code,
      String? standardUnit,
      String? units,
      String? labels,
      String? createdAt,
      String? updatedAt}) async {
    const String apiPath = '/v1/products/measurement_families';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (standardUnit != null) 'standard_unit': standardUnit,
      if (units != null) 'units': units,
      if (labels != null) 'labels': labels,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Creates one measurement family and answers 201 with the stored row,
  /// including the id and the timestamps the database filled in — a client
  /// never sends an id, it reads one back and uses it in the path of every later
  /// call.
  ///
  /// A family of units and the standard one they all convert to — weight in
  /// kilograms, length in metres. A `measure` attribute names one and then
  /// offers exactly that family's units, and each unit's `convert_factor` is
  /// what makes two values recorded in different units comparable at all.
  ///
  /// `code` and `standard_unit` are the only columns the database refuses the
  /// row without; everything else has a default or is nullable. A second row
  /// with the same `code` answers 409.
  Future<models.Error> productsMeasurementFamiliesCreate(
      {required String code,
      required String standardUnit,
      Map? labels,
      Map? units}) async {
    const String apiPath = '/v1/products/measurement_families';

    final Map<String, dynamic> apiParams = {
      'code': code,
      'labels': labels,
      'standard_unit': standardUnit,
      'units': units,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deletes one measurement family by id. It is a hard delete — the row is
  /// gone, and the answer is a confirmation rather than a result to branch on.
  ///
  /// Nothing in this schema references it, so nothing else changes.
  ///
  /// An id no measurement family of this tenant carries answers 404; there is no
  /// 409, because every foreign key pointing at this entity resolves itself on
  /// delete rather than blocking one.
  Future<models.Error> productsMeasurementFamiliesDelete(
      {required String id}) async {
    final String apiPath =
        '/v1/products/measurement_families/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Reads one measurement family by its id — the whole row, every column, as
  /// it is stored.
  ///
  /// A family of units and the standard one they all convert to — weight in
  /// kilograms, length in metres. A `measure` attribute names one and then
  /// offers exactly that family's units, and each unit's `convert_factor` is
  /// what makes two values recorded in different units comparable at all.
  ///
  /// An id no measurement family of this tenant carries answers 404, and so does
  /// one belonging to another tenant: row-level security makes that row
  /// invisible rather than forbidden. A malformed id answers 400 before the
  /// route is reached.
  ///
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsMeasurementFamiliesGet(
      {required String id}) async {
    final String apiPath =
        '/v1/products/measurement_families/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Updates one measurement family by id. A partial patch: the body names only
  /// the columns to change and every column it leaves out keeps its current
  /// value, so there is no read-modify-write and no way to blank a field by
  /// forgetting it.
  ///
  /// A family of units and the standard one they all convert to — weight in
  /// kilograms, length in metres. A `measure` attribute names one and then
  /// offers exactly that family's units, and each unit's `convert_factor` is
  /// what makes two values recorded in different units comparable at all.
  ///
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `code` answers 409.
  Future<models.Error> productsMeasurementFamiliesUpdate(
      {required String id,
      String? code,
      Map? labels,
      String? standardUnit,
      Map? units}) async {
    final String apiPath =
        '/v1/products/measurement_families/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (code != null) 'code': code,
      'labels': labels,
      if (standardUnit != null) 'standard_unit': standardUnit,
      'units': units,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}

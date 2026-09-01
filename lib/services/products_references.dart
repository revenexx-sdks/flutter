part of '../revenexx.dart';

  /// Reference entities and their records — the domains this catalog POINTS AT
  /// instead of duplicating. A brand, a manufacturer, a care instruction is one
  /// record here, edited once, and every product that uses it stores only its
  /// code. A reference entity carries attributes of its own, so its records hold
  /// real data rather than just a name; that shape is declared in Data model and
  /// read back with the attribute-schema call there.
class ProductsReferences extends Service {
  /// Initializes a [ProductsReferences] service
  ProductsReferences(super.client);

  /// A domain of records the catalog POINTS AT instead of duplicating —
  /// brands, manufacturers, care instructions. Declaring one is how a brand
  /// comes to be edited in one place rather than on nine thousand products. A
  /// reference entity has attributes of its own (`attributes` rows with
  /// `entity_type: "reference_entity"` and this entity's code as `entity_ref`),
  /// which is what makes its records more than a label.
  /// 
  /// Every column of `reference_entities` is an exact-match query parameter,
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
  Future productsReferenceEntitiesList({int? limit, int? offset, String? order, String? id, String? code, String? labels, String? image, String? createdAt, String? updatedAt}) async {
    const String apiPath = '/v1/products/reference_entities';

        final Map<String, dynamic> apiParams = {
            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

            if (id != null) 'id': id,

            if (code != null) 'code': code,

            if (labels != null) 'labels': labels,

            if (image != null) 'image': image,

            if (createdAt != null) 'created_at': createdAt,

            if (updatedAt != null) 'updated_at': updatedAt,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Creates one reference entity and answers 201 with the stored row, including
  /// the id and the timestamps the database filled in — a client never sends
  /// an id, it reads one back and uses it in the path of every later call.
  /// 
  /// A domain of records the catalog POINTS AT instead of duplicating —
  /// brands, manufacturers, care instructions. Declaring one is how a brand
  /// comes to be edited in one place rather than on nine thousand products. A
  /// reference entity has attributes of its own (`attributes` rows with
  /// `entity_type: "reference_entity"` and this entity's code as `entity_ref`),
  /// which is what makes its records more than a label.
  /// 
  /// `code` is the only column the database refuses the row without; everything
  /// else has a default or is nullable. A second row with the same `code`
  /// answers 409.
  Future<models.Error> productsReferenceEntitiesCreate({required String code, String? image, Map? labels}) async {
    const String apiPath = '/v1/products/reference_entities';

        final Map<String, dynamic> apiParams = {
            'code': code,

            'image': image,

            'labels': labels,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Deletes one reference entity by id. It is a hard delete — the row is
  /// gone, and the answer is a confirmation rather than a result to branch on.
  /// 
  /// It takes what hangs off it: reference entity records
  /// (`reference_entity_id`) are deleted with it.
  /// 
  /// An id no reference entity of this tenant carries answers 404; there is no
  /// 409, because every foreign key pointing at this entity resolves itself on
  /// delete rather than blocking one.
  Future<models.Error> productsReferenceEntitiesDelete({required String id}) async {
    final String apiPath = '/v1/products/reference_entities/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Reads one reference entity by its id — the whole row, every column, as it
  /// is stored.
  /// 
  /// A domain of records the catalog POINTS AT instead of duplicating —
  /// brands, manufacturers, care instructions. Declaring one is how a brand
  /// comes to be edited in one place rather than on nine thousand products. A
  /// reference entity has attributes of its own (`attributes` rows with
  /// `entity_type: "reference_entity"` and this entity's code as `entity_ref`),
  /// which is what makes its records more than a label.
  /// 
  /// An id no reference entity of this tenant carries answers 404, and so does
  /// one belonging to another tenant: row-level security makes that row
  /// invisible rather than forbidden. A malformed id answers 400 before the
  /// route is reached.
  /// 
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsReferenceEntitiesGet({required String id}) async {
    final String apiPath = '/v1/products/reference_entities/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Updates one reference entity by id. A partial patch: the body names only
  /// the columns to change and every column it leaves out keeps its current
  /// value, so there is no read-modify-write and no way to blank a field by
  /// forgetting it.
  /// 
  /// A domain of records the catalog POINTS AT instead of duplicating —
  /// brands, manufacturers, care instructions. Declaring one is how a brand
  /// comes to be edited in one place rather than on nine thousand products. A
  /// reference entity has attributes of its own (`attributes` rows with
  /// `entity_type: "reference_entity"` and this entity's code as `entity_ref`),
  /// which is what makes its records more than a label.
  /// 
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `code` answers 409.
  Future<models.Error> productsReferenceEntitiesUpdate({required String id, String? code, String? image, Map? labels}) async {
    final String apiPath = '/v1/products/reference_entities/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            'image': image,

            'labels': labels,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// One record of a reference entity — one brand, one manufacturer. A product
  /// that points at it stores this record's CODE, exactly the way a select
  /// stores an option code, and the record's own properties live in its scoped
  /// `attribute_values` document. `GET /products/attribute-schema` offers these
  /// records as the `options` of any attribute that points at their entity, so a
  /// picker needs no second call.
  /// 
  /// Every column of `reference_entity_records` is an exact-match query
  /// parameter, `order` sorts by one column, and `limit`/`offset` page through
  /// `page.total`. A query key that is NOT a column is dropped rather than
  /// refused, and the `filter` object echoes the ones that were understood —
  /// that echo is the only way to tell an unfiltered answer from an empty one.
  /// It reads rows exactly as they are stored: no join is resolved, no jsonb
  /// value is unpacked.
  /// 
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future productsReferenceEntityRecordsList({int? limit, int? offset, String? order, String? id, String? referenceEntityId, String? code, String? labels, String? attributeValues, String? createdAt, String? updatedAt}) async {
    const String apiPath = '/v1/products/reference_entity_records';

        final Map<String, dynamic> apiParams = {
            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

            if (id != null) 'id': id,

            if (referenceEntityId != null) 'reference_entity_id': referenceEntityId,

            if (code != null) 'code': code,

            if (labels != null) 'labels': labels,

            if (attributeValues != null) 'attribute_values': attributeValues,

            if (createdAt != null) 'created_at': createdAt,

            if (updatedAt != null) 'updated_at': updatedAt,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Creates one reference entity record and answers 201 with the stored row,
  /// including the id and the timestamps the database filled in — a client
  /// never sends an id, it reads one back and uses it in the path of every later
  /// call.
  /// 
  /// One record of a reference entity — one brand, one manufacturer. A product
  /// that points at it stores this record's CODE, exactly the way a select
  /// stores an option code, and the record's own properties live in its scoped
  /// `attribute_values` document. `GET /products/attribute-schema` offers these
  /// records as the `options` of any attribute that points at their entity, so a
  /// picker needs no second call.
  /// 
  /// `reference_entity_id` and `code` are the only columns the database refuses
  /// the row without; everything else has a default or is nullable. A second row
  /// with the same `reference_entity_id` and `code` answers 409.
  Future<models.Error> productsReferenceEntityRecordsCreate({required String code, required String referenceEntityId, Map? attributeValues, Map? labels}) async {
    const String apiPath = '/v1/products/reference_entity_records';

        final Map<String, dynamic> apiParams = {
            if (attributeValues != null) 'attribute_values': attributeValues,

            'code': code,

            'labels': labels,

            'reference_entity_id': referenceEntityId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Deletes one reference entity record by id. It is a hard delete — the row
  /// is gone, and the answer is a confirmation rather than a result to branch
  /// on.
  /// 
  /// Nothing in this schema references it, so nothing else changes.
  /// 
  /// An id no reference entity record of this tenant carries answers 404; there
  /// is no 409, because every foreign key pointing at this entity resolves
  /// itself on delete rather than blocking one.
  Future<models.Error> productsReferenceEntityRecordsDelete({required String id}) async {
    final String apiPath = '/v1/products/reference_entity_records/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Reads one reference entity record by its id — the whole row, every
  /// column, as it is stored.
  /// 
  /// One record of a reference entity — one brand, one manufacturer. A product
  /// that points at it stores this record's CODE, exactly the way a select
  /// stores an option code, and the record's own properties live in its scoped
  /// `attribute_values` document. `GET /products/attribute-schema` offers these
  /// records as the `options` of any attribute that points at their entity, so a
  /// picker needs no second call.
  /// 
  /// An id no reference entity record of this tenant carries answers 404, and so
  /// does one belonging to another tenant: row-level security makes that row
  /// invisible rather than forbidden. A malformed id answers 400 before the
  /// route is reached.
  /// 
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsReferenceEntityRecordsGet({required String id}) async {
    final String apiPath = '/v1/products/reference_entity_records/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Updates one reference entity record by id. A partial patch: the body names
  /// only the columns to change and every column it leaves out keeps its current
  /// value, so there is no read-modify-write and no way to blank a field by
  /// forgetting it.
  /// 
  /// One record of a reference entity — one brand, one manufacturer. A product
  /// that points at it stores this record's CODE, exactly the way a select
  /// stores an option code, and the record's own properties live in its scoped
  /// `attribute_values` document. `GET /products/attribute-schema` offers these
  /// records as the `options` of any attribute that points at their entity, so a
  /// picker needs no second call.
  /// 
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `reference_entity_id` and `code` answers 409.
  Future<models.Error> productsReferenceEntityRecordsUpdate({required String id, Map? attributeValues, String? code, Map? labels, String? referenceEntityId}) async {
    final String apiPath = '/v1/products/reference_entity_records/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (attributeValues != null) 'attribute_values': attributeValues,

            if (code != null) 'code': code,

            'labels': labels,

            if (referenceEntityId != null) 'reference_entity_id': referenceEntityId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }
}
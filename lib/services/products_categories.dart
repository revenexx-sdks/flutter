part of '../revenexx.dart';

  /// The category tree and how products get into it. The nodes themselves, the
  /// memberships that file a product into a node — hand-picked or materialized
  /// by a rule — and the rule engine that maintains the second kind: preview a
  /// selector before storing it, recompute one category, or recompute every
  /// category that carries rules. Read this group when the question is &quot;which
  /// products are in this category, and how did they get there&quot;.
class ProductsCategories extends Service {
  /// Initializes a [ProductsCategories] service
  ProductsCategories(super.client);

  /// One node of the category tree. `parent_id` is the structure this app
  /// navigates — null is a root — while `path` is kept only for importers
  /// that carry one and nothing here reads or writes it. A category is
  /// hand-picked or RULE-DRIVEN: a non-null `rules` selector makes every
  /// matching product a `product_categories` row with source `rule`, alongside
  /// the hand-picked ones, and `rules_computed_at` says when that last
  /// completed.
  /// 
  /// Every column of `categories` is an exact-match query parameter, `order`
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
  Future productsCategoriesList({int? limit, int? offset, String? order, String? id, String? code, String? parentId, String? path, int? position, String? labels, String? values, String? rules, enums.RuleMatch? ruleMatch, String? rulesComputedAt, String? createdAt, String? updatedAt}) async {
    const String apiPath = '/v1/products/categories';

        final Map<String, dynamic> apiParams = {
            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

            if (id != null) 'id': id,

            if (code != null) 'code': code,

            if (parentId != null) 'parent_id': parentId,

            if (path != null) 'path': path,

            if (position != null) 'position': position,

            if (labels != null) 'labels': labels,

            if (values != null) 'values': values,

            if (rules != null) 'rules': rules,

            if (ruleMatch != null) 'rule_match': ruleMatch.value,

            if (rulesComputedAt != null) 'rules_computed_at': rulesComputedAt,

            if (createdAt != null) 'created_at': createdAt,

            if (updatedAt != null) 'updated_at': updatedAt,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Creates one category and answers 201 with the stored row, including the id
  /// and the timestamps the database filled in — a client never sends an id,
  /// it reads one back and uses it in the path of every later call.
  /// 
  /// One node of the category tree. `parent_id` is the structure this app
  /// navigates — null is a root — while `path` is kept only for importers
  /// that carry one and nothing here reads or writes it. A category is
  /// hand-picked or RULE-DRIVEN: a non-null `rules` selector makes every
  /// matching product a `product_categories` row with source `rule`, alongside
  /// the hand-picked ones, and `rules_computed_at` says when that last
  /// completed.
  /// 
  /// `code` is the only column the database refuses the row without; everything
  /// else has a default or is nullable. A second row with the same `code`
  /// answers 409.
  Future<models.Error> productsCategoriesCreate({required String code, Map? labels, String? parentId, String? path, int? position, enums.CategoriesRuleMatch? ruleMatch, Map? rules, String? rulesComputedAt, Map? values}) async {
    const String apiPath = '/v1/products/categories';

        final Map<String, dynamic> apiParams = {
            'code': code,

            'labels': labels,

            'parent_id': parentId,

            'path': path,

            if (position != null) 'position': position,

            'rule_match': ruleMatch?.value,

            'rules': rules,

            'rules_computed_at': rulesComputedAt,

            'values': values,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// What the nightly `recompute-category-rules` schedule calls, and the call to
  /// reach for after a bulk import has changed what the rules select. Same sync
  /// as the single-category recompute, applied to every category with non-null
  /// rules. The whole run shares ONE budget: a category the budget no longer
  /// reaches is reported as `skipped` and picked up by the next run, and a
  /// failing category is reported in its result entry instead of aborting the
  /// run.
  Future<models.Error> productsCategoriesRulesRecomputeAll({required Map data}) async {
    const String apiPath = '/v1/products/categories/rules/recompute-all';

        final Map<String, dynamic> apiParams = {
            'data': data,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Dry-runs a rule: how many products it selects, plus a sample of up to ten,
  /// and it WRITES NOTHING. Evaluates the rule in the request body against the
  /// live catalog WITHOUT touching product_categories — this powers the
  /// cockpit's "matches N products" preview while an operator edits a rule.
  /// Soft-deleted products are excluded. Counting is delegated to the database,
  /// never enumerated: a rule that compiles to a single query is answered by one
  /// exact-count request whatever its match set. A rule that needs several
  /// queries (rule_match "any", or a repeated column such as a range) is
  /// combined in the app and stops at `cap` ids — check `capped` before
  /// showing `count` as a total.
  Future<models.Error> productsCategoriesRulesPreview({required String categoryId, required List<models.CategoryRuleCondition> conditions, enums.CategoryRuleMatch? ruleMatch}) async {
    final String apiPath = '/v1/products/categories/{category_id}/rules/preview'.replaceAll('{category_id}', categoryId);

        final Map<String, dynamic> apiParams = {
            'conditions': conditions.map((p) => p.toMap()).toList(),

            'rule_match': ruleMatch?.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Syncs one category's rule-derived memberships to what its stored rule
  /// selects today. Evaluates categories.rules (NOT the request body), then
  /// inserts the newly matching products as source='rule' rows and deletes the
  /// rule rows that no longer match. Manual (source='manual') memberships are
  /// never inserted, deleted or shadowed. Stamps categories.rules_computed_at.
  /// 
  /// A large category does NOT finish in one call: the run stops when its
  /// wall-clock budget is spent and answers `done: false` with the `cursor` to
  /// send back, so drive it in a loop until `done` is true.
  Future<models.Error> productsCategoriesRulesRecompute({required String categoryId, String? cursor}) async {
    final String apiPath = '/v1/products/categories/{category_id}/rules/recompute'.replaceAll('{category_id}', categoryId);

        final Map<String, dynamic> apiParams = {
            'cursor': cursor,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Deletes one category by id. It is a hard delete — the row is gone, and
  /// the answer is a confirmation rather than a result to branch on.
  /// 
  /// It takes what hangs off it: product category memberships (`category_id`)
  /// are deleted with it. `categories.parent_id` is set to null instead, so the
  /// rows that pointed at it survive the delete rather than going with it.
  /// 
  /// An id no category of this tenant carries answers 404; there is no 409,
  /// because every foreign key pointing at this entity resolves itself on delete
  /// rather than blocking one.
  Future<models.Error> productsCategoriesDelete({required String id}) async {
    final String apiPath = '/v1/products/categories/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Reads one category by its id — the whole row, every column, as it is
  /// stored.
  /// 
  /// One node of the category tree. `parent_id` is the structure this app
  /// navigates — null is a root — while `path` is kept only for importers
  /// that carry one and nothing here reads or writes it. A category is
  /// hand-picked or RULE-DRIVEN: a non-null `rules` selector makes every
  /// matching product a `product_categories` row with source `rule`, alongside
  /// the hand-picked ones, and `rules_computed_at` says when that last
  /// completed.
  /// 
  /// An id no category of this tenant carries answers 404, and so does one
  /// belonging to another tenant: row-level security makes that row invisible
  /// rather than forbidden. A malformed id answers 400 before the route is
  /// reached.
  /// 
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsCategoriesGet({required String id}) async {
    final String apiPath = '/v1/products/categories/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Updates one category by id. A partial patch: the body names only the
  /// columns to change and every column it leaves out keeps its current value,
  /// so there is no read-modify-write and no way to blank a field by forgetting
  /// it.
  /// 
  /// One node of the category tree. `parent_id` is the structure this app
  /// navigates — null is a root — while `path` is kept only for importers
  /// that carry one and nothing here reads or writes it. A category is
  /// hand-picked or RULE-DRIVEN: a non-null `rules` selector makes every
  /// matching product a `product_categories` row with source `rule`, alongside
  /// the hand-picked ones, and `rules_computed_at` says when that last
  /// completed.
  /// 
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `code` answers 409.
  Future<models.Error> productsCategoriesUpdate({required String id, String? code, Map? labels, String? parentId, String? path, int? position, enums.CategoriesRuleMatch? ruleMatch, Map? rules, String? rulesComputedAt, Map? values}) async {
    final String apiPath = '/v1/products/categories/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            'labels': labels,

            'parent_id': parentId,

            'path': path,

            if (position != null) 'position': position,

            'rule_match': ruleMatch?.value,

            'rules': rules,

            'rules_computed_at': rulesComputedAt,

            'values': values,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// One membership: this product is filed in this category. `source` says how
  /// it got there — `manual` is hand-picked, `rule` was materialized by a
  /// category rule — and the two never touch each other: a recompute only ever
  /// inserts and deletes `rule` rows, so a hand-picked membership survives every
  /// pass. `POST /products/{id}/categories` is the friendlier way to create one,
  /// because it takes the product from the path and answers with the category
  /// code and the SKU.
  /// 
  /// Every column of `product_categories` is an exact-match query parameter,
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
  Future productsProductCategoriesList({int? limit, int? offset, String? order, String? id, String? productId, String? categoryId, int? position, enums.Source? source, String? createdAt}) async {
    const String apiPath = '/v1/products/product_categories';

        final Map<String, dynamic> apiParams = {
            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

            if (id != null) 'id': id,

            if (productId != null) 'product_id': productId,

            if (categoryId != null) 'category_id': categoryId,

            if (position != null) 'position': position,

            if (source != null) 'source': source.value,

            if (createdAt != null) 'created_at': createdAt,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Creates one product category membership and answers 201 with the stored
  /// row, including the id and the timestamps the database filled in — a
  /// client never sends an id, it reads one back and uses it in the path of
  /// every later call.
  /// 
  /// One membership: this product is filed in this category. `source` says how
  /// it got there — `manual` is hand-picked, `rule` was materialized by a
  /// category rule — and the two never touch each other: a recompute only ever
  /// inserts and deletes `rule` rows, so a hand-picked membership survives every
  /// pass. `POST /products/{id}/categories` is the friendlier way to create one,
  /// because it takes the product from the path and answers with the category
  /// code and the SKU.
  /// 
  /// `product_id` and `category_id` are the only columns the database refuses
  /// the row without; everything else has a default or is nullable. A second row
  /// with the same `product_id` and `category_id` answers 409.
  Future<models.Error> productsProductCategoriesCreate({required String categoryId, required String productId, int? position, enums.ProductCategoriesSource? source}) async {
    const String apiPath = '/v1/products/product_categories';

        final Map<String, dynamic> apiParams = {
            'category_id': categoryId,

            if (position != null) 'position': position,

            'product_id': productId,

            if (source != null) 'source': source.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Deletes one product category membership by id. It is a hard delete — the
  /// row is gone, and the answer is a confirmation rather than a result to
  /// branch on.
  /// 
  /// Nothing in this schema references it, so nothing else changes.
  /// 
  /// An id no product category membership of this tenant carries answers 404;
  /// there is no 409, because every foreign key pointing at this entity resolves
  /// itself on delete rather than blocking one.
  Future<models.Error> productsProductCategoriesDelete({required String id}) async {
    final String apiPath = '/v1/products/product_categories/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Reads one product category membership by its id — the whole row, every
  /// column, as it is stored.
  /// 
  /// One membership: this product is filed in this category. `source` says how
  /// it got there — `manual` is hand-picked, `rule` was materialized by a
  /// category rule — and the two never touch each other: a recompute only ever
  /// inserts and deletes `rule` rows, so a hand-picked membership survives every
  /// pass. `POST /products/{id}/categories` is the friendlier way to create one,
  /// because it takes the product from the path and answers with the category
  /// code and the SKU.
  /// 
  /// An id no product category membership of this tenant carries answers 404,
  /// and so does one belonging to another tenant: row-level security makes that
  /// row invisible rather than forbidden. A malformed id answers 400 before the
  /// route is reached.
  /// 
  /// Answered from the gateway's tenant cache for up to 30 minutes and dropped
  /// the moment this entity is written, because the data model changes weekly at
  /// most and every product page asks the same question.
  Future<models.Error> productsProductCategoriesGet({required String id}) async {
    final String apiPath = '/v1/products/product_categories/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Updates one product category membership by id. A partial patch: the body
  /// names only the columns to change and every column it leaves out keeps its
  /// current value, so there is no read-modify-write and no way to blank a field
  /// by forgetting it.
  /// 
  /// One membership: this product is filed in this category. `source` says how
  /// it got there — `manual` is hand-picked, `rule` was materialized by a
  /// category rule — and the two never touch each other: a recompute only ever
  /// inserts and deletes `rule` rows, so a hand-picked membership survives every
  /// pass. `POST /products/{id}/categories` is the friendlier way to create one,
  /// because it takes the product from the path and answers with the category
  /// code and the SKU.
  /// 
  /// A body that names nothing writable is refused with 400 rather than answered
  /// as a no-op, an id nobody carries answers 404, and a value that collides on
  /// `product_id` and `category_id` answers 409.
  Future<models.Error> productsProductCategoriesUpdate({required String id, String? categoryId, int? position, String? productId, enums.ProductCategoriesSource? source}) async {
    final String apiPath = '/v1/products/product_categories/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (categoryId != null) 'category_id': categoryId,

            if (position != null) 'position': position,

            if (productId != null) 'product_id': productId,

            if (source != null) 'source': source.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Files one product into one category by hand, and the membership is always
  /// `source: 'manual'` — a rule recompute never deletes or shadows it.
  /// product_categories holds 28 758 rows and had no write surface that named
  /// the product it was filing. This takes the product from the route and the
  /// category from the body, which is what a bulk 'add the selected products to
  /// …' needs. The membership is always source='manual', so a rule recompute
  /// never deletes or shadows it.
  Future<models.Error> productsCategoriesAssign({required String id, required String categoryId, int? position}) async {
    final String apiPath = '/v1/products/{id}/categories'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            'category_id': categoryId,

            if (position != null) 'position': position,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }
}
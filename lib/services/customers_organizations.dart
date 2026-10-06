part of '../revenexx.dart';

/// The buying COMPANIES and everything keyed to one: the company rows
/// themselves, their postal addresses, and the revenue/order projection pulled
/// from the orders app. An organization is the unit a contract, a credit
/// limit, a price list and a payment term belong to — not a person, and not
/// a household. Addresses live here because a B2B address is the company&#039;s (a
/// contact may own a private one, and that row is reached the same way). The
/// people inside a company are in Contacts, and the groups a company falls
/// into are in Segments.
class CustomersOrganizations extends Service {
  /// Initializes a [CustomersOrganizations] service
  CustomersOrganizations(super.client);

  /// A postal address used for billing or for shipping, owned by exactly one of
  /// the two parties: an organization (the company address everyone in it may
  /// use) or a contact (a private one only that person uses). Both owner columns
  /// are nullable and exactly one is set — sending both, or neither, is
  /// refused. Every address this tenant holds, filterable by owner
  /// (`organization_id`, `contact_id`), by `type` and by any other column. It is
  /// how the addresses tab of a company or a person is filled; the page is
  /// `limit`/`offset`/`order`.
  Future customersAddressesList(
      {String? id,
      String? organizationId,
      String? contactId,
      String? type,
      String? company,
      String? name,
      String? street,
      String? street2,
      String? zip,
      String? city,
      String? region,
      String? country,
      String? phone,
      bool? isDefault,
      String? createdAt,
      String? updatedAt,
      int? limit,
      int? offset,
      String? order}) async {
    const String apiPath = '/v1/customers/addresses';

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (organizationId != null) 'organization_id': organizationId,
      if (contactId != null) 'contact_id': contactId,
      if (type != null) 'type': type,
      if (company != null) 'company': company,
      if (name != null) 'name': name,
      if (street != null) 'street': street,
      if (street2 != null) 'street2': street2,
      if (zip != null) 'zip': zip,
      if (city != null) 'city': city,
      if (region != null) 'region': region,
      if (country != null) 'country': country,
      if (phone != null) 'phone': phone,
      if (isDefault != null) 'is_default': isDefault,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// A postal address used for billing or for shipping, owned by exactly one of
  /// the two parties: an organization (the company address everyone in it may
  /// use) or a contact (a private one only that person uses). Both owner columns
  /// are nullable and exactly one is set — sending both, or neither, is
  /// refused. `type` names one of this tenant's own address types — billing
  /// and shipping are seeded, and a merchant may add a works entrance or a
  /// central accounts office without a release of this app. `is_default` picks
  /// the one a checkout should preselect for that owner and that type. A create
  /// cannot omit `street`, `zip`, `city` and `country`; everything else is
  /// optional or defaulted by the database.
  Future<models.Error> customersAddressesCreate(
      {required String city,
      required String country,
      required String street,
      required String zip,
      String? company,
      String? contactId,
      bool? isDefault,
      String? name,
      String? organizationId,
      String? phone,
      String? region,
      String? street2,
      String? type}) async {
    const String apiPath = '/v1/customers/addresses';

    final Map<String, dynamic> apiParams = {
      'city': city,
      'company': company,
      'contact_id': contactId,
      'country': country,
      if (isDefault != null) 'is_default': isDefault,
      'name': name,
      'organization_id': organizationId,
      'phone': phone,
      'region': region,
      'street': street,
      'street2': street2,
      if (type != null) 'type': type,
      'zip': zip,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A postal address used for billing or for shipping, owned by exactly one of
  /// the two parties: an organization (the company address everyone in it may
  /// use) or a contact (a private one only that person uses). Both owner columns
  /// are nullable and exactly one is set — sending both, or neither, is
  /// refused. Removes the address. Orders already placed keep the address they
  /// were placed with; nothing in this app reaches back. Nothing else in this
  /// app points at it, so nothing else goes with it.
  Future<models.Error> customersAddressesDelete({required String id}) async {
    final String apiPath =
        '/v1/customers/addresses/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A postal address used for billing or for shipping, owned by exactly one of
  /// the two parties: an organization (the company address everyone in it may
  /// use) or a contact (a private one only that person uses). Both owner columns
  /// are nullable and exactly one is set — sending both, or neither, is
  /// refused. One address by id, whichever of the two owners it hangs off.
  Future<models.Error> customersAddressesGet({required String id}) async {
    final String apiPath =
        '/v1/customers/addresses/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A postal address used for billing or for shipping, owned by exactly one of
  /// the two parties: an organization (the company address everyone in it may
  /// use) or a contact (a private one only that person uses). Both owner columns
  /// are nullable and exactly one is set — sending both, or neither, is
  /// refused. A partial update — send only what changes. An empty body is
  /// refused rather than answered as a no-op, so a client that built the wrong
  /// patch finds out.
  Future<models.Error> customersAddressesUpdate(
      {required String id,
      String? city,
      String? company,
      String? contactId,
      String? country,
      bool? isDefault,
      String? name,
      String? organizationId,
      String? phone,
      String? region,
      String? street,
      String? street2,
      String? type,
      String? zip}) async {
    final String apiPath =
        '/v1/customers/addresses/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (city != null) 'city': city,
      'company': company,
      'contact_id': contactId,
      if (country != null) 'country': country,
      if (isDefault != null) 'is_default': isDefault,
      'name': name,
      'organization_id': organizationId,
      'phone': phone,
      'region': region,
      if (street != null) 'street': street,
      'street2': street2,
      if (type != null) 'type': type,
      if (zip != null) 'zip': zip,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// What an organization has BOUGHT, materialized into this app from the orders
  /// app: lifetime revenue, revenue over the last 30/90/365 days, order count,
  /// average order value, and the first and last order dates. Revenue lives in
  /// orders and may not be joined (ADR-0055: no cross-app foreign key, grant or
  /// view), so it is pulled on a schedule and stored here — one row per
  /// organization, all-zero for a company that never ordered, so that a "never
  /// bought anything" rule has something to match. The customer-value list: sort
  /// by `revenue_365d` for the best customers, filter `last_order_at` for the
  /// dormant ones. Every row carries `computed_at`, and a row is only as current
  /// as the last refresh — `GET /customers/organization_metrics/freshness`
  /// says how stale the set is before a number is shown to anybody.
  Future customersOrganizationMetricsList(
      {String? id,
      String? organizationId,
      int? orderCount,
      int? orderCount30d,
      int? orderCount90d,
      int? orderCount365d,
      double? revenueTotal,
      double? revenue30d,
      double? revenue90d,
      double? revenue365d,
      double? avgOrderValue,
      double? avgOrderValue365d,
      String? firstOrderAt,
      String? lastOrderAt,
      String? currency,
      bool? currencyMixed,
      String? ordersAsOf,
      String? computedAt,
      String? createdAt,
      String? updatedAt,
      int? limit,
      int? offset,
      String? order}) async {
    const String apiPath = '/v1/customers/organization_metrics';

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (organizationId != null) 'organization_id': organizationId,
      if (orderCount != null) 'order_count': orderCount,
      if (orderCount30d != null) 'order_count_30d': orderCount30d,
      if (orderCount90d != null) 'order_count_90d': orderCount90d,
      if (orderCount365d != null) 'order_count_365d': orderCount365d,
      if (revenueTotal != null) 'revenue_total': revenueTotal,
      if (revenue30d != null) 'revenue_30d': revenue30d,
      if (revenue90d != null) 'revenue_90d': revenue90d,
      if (revenue365d != null) 'revenue_365d': revenue365d,
      if (avgOrderValue != null) 'avg_order_value': avgOrderValue,
      if (avgOrderValue365d != null) 'avg_order_value_365d': avgOrderValue365d,
      if (firstOrderAt != null) 'first_order_at': firstOrderAt,
      if (lastOrderAt != null) 'last_order_at': lastOrderAt,
      if (currency != null) 'currency': currency,
      if (currencyMixed != null) 'currency_mixed': currencyMixed,
      if (ordersAsOf != null) 'orders_as_of': ordersAsOf,
      if (computedAt != null) 'computed_at': computedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// The projection is materialized, so it is only as true as its last refresh.
  /// This is that fact as one answer: the OLDEST computed_at in the table (the
  /// floor, not an average), the anchor those numbers were measured from, and
  /// how many organizations are not covered at all yet.
  Future<models.OrganizationMetricsFreshness>
      customersOrganizationMetricsFreshness() async {
    const String apiPath = '/v1/customers/organization_metrics/freshness';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OrganizationMetricsFreshness.fromMap(res.data);
  }

  /// Revenue lives in the orders app and cannot be joined (ADR-0055: no
  /// cross-app FK, grant or view), so it is PULLED: this route walks
  /// organizations in id order, asks orders.reports.customer-rollup about a
  /// batch of them at a time and materializes the answer into
  /// organization_metrics — one row per organization, all-zero for those that
  /// never ordered, so that 'never bought' rules match something. Rows are only
  /// rewritten when a value actually changed, so a routine refresh costs almost
  /// no writes. Bounded by a wall-clock budget below the gateway's upstream
  /// timeout: while 'done' is false, POST again with the returned 'cursor' AND
  /// 'as_of' (pinning as_of is what stops the rolling windows sliding during a
  /// multi-call refresh). 'organization_ids' refreshes exactly those
  /// organizations in a single call — the targeted path after a customer
  /// ordered.
  Future<models.Error> customersOrganizationMetricsRefresh(
      {String? asOf, String? cursor, List<String>? organizationIds}) async {
    const String apiPath = '/v1/customers/organization_metrics/refresh';

    final Map<String, dynamic> apiParams = {
      'as_of': asOf,
      'cursor': cursor,
      'organization_ids': organizationIds,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// What an organization has BOUGHT, materialized into this app from the orders
  /// app: lifetime revenue, revenue over the last 30/90/365 days, order count,
  /// average order value, and the first and last order dates. Revenue lives in
  /// orders and may not be joined (ADR-0055: no cross-app foreign key, grant or
  /// view), so it is pulled on a schedule and stored here — one row per
  /// organization, all-zero for a company that never ordered, so that a "never
  /// bought anything" rule has something to match. One company's numbers by the
  /// metrics row id. All zeroes mean the company has never ordered, not that the
  /// projection is missing — a missing row means the refresh has not reached
  /// that company yet.
  Future<models.Error> customersOrganizationMetricsGet(
      {required String id}) async {
    final String apiPath =
        '/v1/customers/organization_metrics/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// An organization is a buying COMPANY — the unit a contract, a credit
  /// limit, a price list and a payment term belong to, and the unit an order is
  /// placed on behalf of. It is not a household and not a person: the people are
  /// `contacts`, and a company with no contacts yet is a perfectly normal row.
  /// Every organization is mirrored into platform auth as a team, so a name
  /// written here is the name storefront authentication shows. The company list
  /// a sales or service desk works from, and the read a segment rule is written
  /// against. Every column of the table is a filter and the page is
  /// `limit`/`offset`/`order` — including the two that are constantly
  /// confused: `status` is ACCESS (active or blocked) and `lifecycle_stage` is
  /// the sales PIPELINE, so filtering the wrong one answers with the wrong
  /// companies rather than with an error.
  Future customersOrganizationsList(
      {String? id,
      String? name,
      String? vatId,
      String? branche,
      String? customerNumber,
      enums.CustomersOrganizationsListStatus? status,
      String? lifecycleStage,
      String? paymentTerms,
      double? creditLimit,
      String? priceList,
      bool? deliveryBlock,
      String? externalTeamId,
      String? createdAt,
      String? updatedAt,
      int? limit,
      int? offset,
      String? order}) async {
    const String apiPath = '/v1/customers/organizations';

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (vatId != null) 'vat_id': vatId,
      if (branche != null) 'branche': branche,
      if (customerNumber != null) 'customer_number': customerNumber,
      if (status != null) 'status': status.value,
      if (lifecycleStage != null) 'lifecycle_stage': lifecycleStage,
      if (paymentTerms != null) 'payment_terms': paymentTerms,
      if (creditLimit != null) 'credit_limit': creditLimit,
      if (priceList != null) 'price_list': priceList,
      if (deliveryBlock != null) 'delivery_block': deliveryBlock,
      if (externalTeamId != null) 'external_team_id': externalTeamId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// An organization is a buying COMPANY — the unit a contract, a credit
  /// limit, a price list and a payment term belong to, and the unit an order is
  /// placed on behalf of. It is not a household and not a person: the people are
  /// `contacts`, and a company with no contacts yet is a perfectly normal row.
  /// Every organization is mirrored into platform auth as a team, so a name
  /// written here is the name storefront authentication shows. Registers a
  /// company as a customer. It is mirrored into platform auth as a team in the
  /// same call, so a failure of the identity service fails the create rather
  /// than leaving half a company behind. `payment_terms` and `lifecycle_stage`
  /// name values from this tenant's own sets, and a newly founded company
  /// inherits the tenant's `default_payment_terms` / `default_credit_limit`
  /// where the merchant set them. `name` is the only field a create cannot omit;
  /// everything else is optional or defaulted by the database. Two rows of this
  /// tenant may not share `customer_number` (while customer_number IS NOT NULL)
  /// or `external_team_id` (while external_team_id IS NOT NULL).
  Future<models.Error> customersOrganizationsCreate(
      {required String name,
      String? branche,
      double? creditLimit,
      String? customerNumber,
      bool? deliveryBlock,
      String? lifecycleStage,
      String? paymentTerms,
      String? priceList,
      Map? settings,
      enums.OrganizationStatus? status,
      String? vatId}) async {
    const String apiPath = '/v1/customers/organizations';

    final Map<String, dynamic> apiParams = {
      'branche': branche,
      'credit_limit': creditLimit,
      'customer_number': customerNumber,
      if (deliveryBlock != null) 'delivery_block': deliveryBlock,
      if (lifecycleStage != null) 'lifecycle_stage': lifecycleStage,
      'name': name,
      'payment_terms': paymentTerms,
      'price_list': priceList,
      'settings': settings,
      if (status != null) 'status': status.value,
      'vat_id': vatId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// An organization is a buying COMPANY — the unit a contract, a credit
  /// limit, a price list and a payment term belong to, and the unit an order is
  /// placed on behalf of. It is not a household and not a person: the people are
  /// `contacts`, and a company with no contacts yet is a perfectly normal row.
  /// Every organization is mirrored into platform auth as a team, so a name
  /// written here is the name storefront authentication shows. Removes the
  /// company and its mirrored team. Its people are NOT deleted: they become
  /// standalone buyers who can still sign in and still order, which is the
  /// behaviour a merchant winding down a subsidiary wants. Deleting one takes
  /// every `contact_events`, `addresses`, `organization_metrics` and
  /// `segment_members` row that points at it with it and clears
  /// `contacts.organization_id` rather than deleting those rows — the foreign
  /// keys decide, not this route.
  Future<models.Error> customersOrganizationsDelete(
      {required String id}) async {
    final String apiPath =
        '/v1/customers/organizations/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// An organization is a buying COMPANY — the unit a contract, a credit
  /// limit, a price list and a payment term belong to, and the unit an order is
  /// placed on behalf of. It is not a household and not a person: the people are
  /// `contacts`, and a company with no contacts yet is a perfectly normal row.
  /// Every organization is mirrored into platform auth as a team, so a name
  /// written here is the name storefront authentication shows. One company by
  /// id, with its commercial terms as stored. What it has BOUGHT is not in here
  /// — that is the `organization_metrics` row for the same id, refreshed on
  /// its own schedule.
  Future<models.Error> customersOrganizationsGet({required String id}) async {
    final String apiPath =
        '/v1/customers/organizations/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// An organization is a buying COMPANY — the unit a contract, a credit
  /// limit, a price list and a payment term belong to, and the unit an order is
  /// placed on behalf of. It is not a household and not a person: the people are
  /// `contacts`, and a company with no contacts yet is a perfectly normal row.
  /// Every organization is mirrored into platform auth as a team, so a name
  /// written here is the name storefront authentication shows. A partial update
  /// — send only what changes. `external_team_id` is mirror-managed and
  /// ignored if sent. Blocking a company here is what stops it trading; moving
  /// it through the pipeline is `lifecycle_stage`, and the two are independent.
  /// Two rows of this tenant may not share `customer_number` (while
  /// customer_number IS NOT NULL) or `external_team_id` (while external_team_id
  /// IS NOT NULL).
  Future<models.Error> customersOrganizationsUpdate(
      {required String id,
      String? branche,
      double? creditLimit,
      String? customerNumber,
      bool? deliveryBlock,
      String? lifecycleStage,
      String? name,
      String? paymentTerms,
      String? priceList,
      Map? settings,
      enums.OrganizationStatus? status,
      String? vatId}) async {
    final String apiPath =
        '/v1/customers/organizations/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      'branche': branche,
      'credit_limit': creditLimit,
      'customer_number': customerNumber,
      if (deliveryBlock != null) 'delivery_block': deliveryBlock,
      if (lifecycleStage != null) 'lifecycle_stage': lifecycleStage,
      if (name != null) 'name': name,
      'payment_terms': paymentTerms,
      'price_list': priceList,
      'settings': settings,
      if (status != null) 'status': status.value,
      'vat_id': vatId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}

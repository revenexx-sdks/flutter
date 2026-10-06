part of '../revenexx.dart';

/// The value sets a merchant owns, and the fixed ones they do not. Payment
/// terms, address types, lifecycle stages and activity types were CHECK
/// constraints until a wholesaler wanted net 45 and a pipeline step of their
/// own — they are the tenant&#039;s ROWS now, so adding one is a call rather than
/// a release of this app. Alongside them the vocabularies: the enums this app
/// really does fix (status, registration status, membership source), published
/// with the titles, descriptions and badge tones a client needs to render a
/// value it has never seen. Plus the one call that seeds a fresh tenant with
/// all four sets.
class CustomersValueLists extends Service {
  /// Initializes a [CustomersValueLists] service
  CustomersValueLists(super.client);

  /// What an address is used for. Billing and shipping are what a checkout
  /// needs; a works entrance or a central accounts office is the tenant's own. A
  /// fresh install is seeded with billing, shipping, and the set seeds on first
  /// read too, so the page is never empty and `addresses.type` always has a
  /// value it may carry. The whole set comes back in one page in the tenant's
  /// own order — this route takes no limit/offset/order and no column filters,
  /// so `page` describes the full set and `filter` is always empty.
  Future customersAddressTypesList() async {
    const String apiPath = '/v1/customers/address-types';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Extends this tenant's address types set with a value of their own — the
  /// whole reason these four stopped being CHECK constraints. What an address is
  /// used for. Billing and shipping are what a checkout needs; a works entrance
  /// or a central accounts office is the tenant's own. The code is lowercase and
  /// becomes what `addresses.type` stores; it cannot be changed afterwards,
  /// because every record carrying it would be orphaned.
  Future<models.Error> customersAddressTypesCreate(
      {required String code,
      required String title,
      String? description,
      Map? descriptions,
      bool? isDefault,
      Map? labels,
      int? position,
      enums.Tone? tone}) async {
    const String apiPath = '/v1/customers/address-types';

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

  /// Takes a value out of the address types set. There is no foreign key behind
  /// `addresses.type` — one added to a table that starts empty fails the
  /// migration of every existing tenant — so this route IS the integrity: it
  /// refuses while any record still carries the code, and it refuses to empty
  /// the set. Retiring a value that is in use is therefore a two-step job: move
  /// the records onto another value first, then remove it.
  Future<models.Error> customersAddressTypesDelete({required String id}) async {
    final String apiPath =
        '/v1/customers/address-types/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One value of the address types set, by its id — its code, its fallback
  /// title, the per-language `labels` an operator reads and the badge `tone` a
  /// client renders it with. What an address is used for. Billing and shipping
  /// are what a checkout needs; a works entrance or a central accounts office is
  /// the tenant's own. Reading one value is the rare path: `GET
  /// /customers/address-types` answers the whole set in a single page, which is
  /// what a select needs.
  Future<models.Error> customersAddressTypesGet({required String id}) async {
    final String apiPath =
        '/v1/customers/address-types/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Everything about a value except the value itself: its titles, its help
  /// text, its badge tone, its `position` in the select, and which one of the
  /// set is the default. The `code` is immutable, so no record carrying it is
  /// ever orphaned by an edit here — a merchant who retitles `shipping` to
  /// wording of their own changes what people READ and nothing about what
  /// `addresses.type` stores. Seeded values (`is_system`) are renameable like
  /// any other, and re-seeding leaves the rename alone.
  Future<models.Error> customersAddressTypesUpdate(
      {required String id,
      String? description,
      Map? descriptions,
      bool? isDefault,
      Map? labels,
      int? position,
      String? title,
      enums.Tone? tone}) async {
    final String apiPath =
        '/v1/customers/address-types/{id}'.replaceAll('{id}', id);

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

  /// What kind of entry lands on a customer timeline. 'system' is the app's own
  /// decision trail and a caller may not file one, whatever the set says. A
  /// fresh install is seeded with system, note, call, email, meeting, visit,
  /// task, and the set seeds on first read too, so the page is never empty and
  /// `contact_events.kind` always has a value it may carry. The whole set comes
  /// back in one page in the tenant's own order — this route takes no
  /// limit/offset/order and no column filters, so `page` describes the full set
  /// and `filter` is always empty.
  Future customersContactEventKindsList() async {
    const String apiPath = '/v1/customers/contact-event-kinds';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Extends this tenant's activity types set with a value of their own — the
  /// whole reason these four stopped being CHECK constraints. What kind of entry
  /// lands on a customer timeline. 'system' is the app's own decision trail and
  /// a caller may not file one, whatever the set says. The code is lowercase and
  /// becomes what `contact_events.kind` stores; it cannot be changed afterwards,
  /// because every record carrying it would be orphaned.
  Future<models.Error> customersContactEventKindsCreate(
      {required String code,
      required String title,
      String? description,
      Map? descriptions,
      bool? isDefault,
      Map? labels,
      int? position,
      enums.Tone? tone}) async {
    const String apiPath = '/v1/customers/contact-event-kinds';

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

  /// Takes a value out of the activity types set. There is no foreign key behind
  /// `contact_events.kind` — one added to a table that starts empty fails the
  /// migration of every existing tenant — so this route IS the integrity: it
  /// refuses while any record still carries the code, and it refuses to empty
  /// the set. Retiring a value that is in use is therefore a two-step job: move
  /// the records onto another value first, then remove it.
  Future<models.Error> customersContactEventKindsDelete(
      {required String id}) async {
    final String apiPath =
        '/v1/customers/contact-event-kinds/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One value of the activity types set, by its id — its code, its fallback
  /// title, the per-language `labels` an operator reads and the badge `tone` a
  /// client renders it with. What kind of entry lands on a customer timeline.
  /// 'system' is the app's own decision trail and a caller may not file one,
  /// whatever the set says. Reading one value is the rare path: `GET
  /// /customers/contact-event-kinds` answers the whole set in a single page,
  /// which is what a select needs.
  Future<models.Error> customersContactEventKindsGet(
      {required String id}) async {
    final String apiPath =
        '/v1/customers/contact-event-kinds/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Everything about a value except the value itself: its titles, its help
  /// text, its badge tone, its `position` in the select, and which one of the
  /// set is the default. The `code` is immutable, so no record carrying it is
  /// ever orphaned by an edit here — a merchant who retitles `call` to wording
  /// of their own changes what people READ and nothing about what
  /// `contact_events.kind` stores. Seeded values (`is_system`) are renameable
  /// like any other, and re-seeding leaves the rename alone.
  Future<models.Error> customersContactEventKindsUpdate(
      {required String id,
      String? description,
      Map? descriptions,
      bool? isDefault,
      Map? labels,
      int? position,
      String? title,
      enums.Tone? tone}) async {
    final String apiPath =
        '/v1/customers/contact-event-kinds/{id}'.replaceAll('{id}', id);

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

  /// What the app.installed event runs. It fills all four of the value sets a
  /// tenant needs before anything else works — the payment terms, the address
  /// types, the lifecycle stages and the activity types — in one call.
  /// Idempotent by code: a set that already has its rows is left completely
  /// alone, so a re-delivered event and a merchant's renames both survive. A
  /// tenant installed before these tables existed is seeded lazily instead, by
  /// the first read that finds one empty.
  Future<models.Error> customersDefaults({required Map data}) async {
    const String apiPath = '/v1/customers/defaults';

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

  /// Where a company stands in the sales pipeline — a separate axis from
  /// status, and one whose steps are a sales team's own. A fresh install is
  /// seeded with lead, prospect, customer, churned, and the set seeds on first
  /// read too, so the page is never empty and `organizations.lifecycle_stage`
  /// always has a value it may carry. The whole set comes back in one page in
  /// the tenant's own order — this route takes no limit/offset/order and no
  /// column filters, so `page` describes the full set and `filter` is always
  /// empty.
  Future customersLifecycleStagesList() async {
    const String apiPath = '/v1/customers/lifecycle-stages';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Extends this tenant's lifecycle stages set with a value of their own —
  /// the whole reason these four stopped being CHECK constraints. Where a
  /// company stands in the sales pipeline — a separate axis from status, and
  /// one whose steps are a sales team's own. The code is lowercase and becomes
  /// what `organizations.lifecycle_stage` stores; it cannot be changed
  /// afterwards, because every record carrying it would be orphaned.
  Future<models.Error> customersLifecycleStagesCreate(
      {required String code,
      required String title,
      String? description,
      Map? descriptions,
      bool? isDefault,
      Map? labels,
      int? position,
      enums.Tone? tone}) async {
    const String apiPath = '/v1/customers/lifecycle-stages';

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

  /// Takes a value out of the lifecycle stages set. There is no foreign key
  /// behind `organizations.lifecycle_stage` — one added to a table that starts
  /// empty fails the migration of every existing tenant — so this route IS the
  /// integrity: it refuses while any record still carries the code, and it
  /// refuses to empty the set. Retiring a value that is in use is therefore a
  /// two-step job: move the records onto another value first, then remove it.
  Future<models.Error> customersLifecycleStagesDelete(
      {required String id}) async {
    final String apiPath =
        '/v1/customers/lifecycle-stages/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One value of the lifecycle stages set, by its id — its code, its fallback
  /// title, the per-language `labels` an operator reads and the badge `tone` a
  /// client renders it with. Where a company stands in the sales pipeline — a
  /// separate axis from status, and one whose steps are a sales team's own.
  /// Reading one value is the rare path: `GET /customers/lifecycle-stages`
  /// answers the whole set in a single page, which is what a select needs.
  Future<models.Error> customersLifecycleStagesGet({required String id}) async {
    final String apiPath =
        '/v1/customers/lifecycle-stages/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Everything about a value except the value itself: its titles, its help
  /// text, its badge tone, its `position` in the select, and which one of the
  /// set is the default. The `code` is immutable, so no record carrying it is
  /// ever orphaned by an edit here — a merchant who retitles `customer` to
  /// wording of their own changes what people READ and nothing about what
  /// `organizations.lifecycle_stage` stores. Seeded values (`is_system`) are
  /// renameable like any other, and re-seeding leaves the rename alone.
  Future<models.Error> customersLifecycleStagesUpdate(
      {required String id,
      String? description,
      Map? descriptions,
      bool? isDefault,
      Map? labels,
      int? position,
      String? title,
      enums.Tone? tone}) async {
    final String apiPath =
        '/v1/customers/lifecycle-stages/{id}'.replaceAll('{id}', id);

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

  /// When a company has to pay. A wholesaler who agrees net 45 with one customer
  /// used to need a release of this app to say so. A fresh install is seeded
  /// with prepayment, direct_debit, net_7, net_14, net_30, net_60, net_90, and
  /// the set seeds on first read too, so the page is never empty and
  /// `organizations.payment_terms` always has a value it may carry. The whole
  /// set comes back in one page in the tenant's own order — this route takes
  /// no limit/offset/order and no column filters, so `page` describes the full
  /// set and `filter` is always empty.
  Future customersPaymentTermsList() async {
    const String apiPath = '/v1/customers/payment-terms';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Extends this tenant's payment terms set with a value of their own — the
  /// whole reason these four stopped being CHECK constraints. When a company has
  /// to pay. A wholesaler who agrees net 45 with one customer used to need a
  /// release of this app to say so. The code is lowercase and becomes what
  /// `organizations.payment_terms` stores; it cannot be changed afterwards,
  /// because every record carrying it would be orphaned.
  Future<models.Error> customersPaymentTermsCreate(
      {required String code,
      required String title,
      String? description,
      Map? descriptions,
      bool? isDefault,
      Map? labels,
      int? position,
      enums.Tone? tone}) async {
    const String apiPath = '/v1/customers/payment-terms';

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

  /// Takes a value out of the payment terms set. There is no foreign key behind
  /// `organizations.payment_terms` — one added to a table that starts empty
  /// fails the migration of every existing tenant — so this route IS the
  /// integrity: it refuses while any record still carries the code, and it
  /// refuses to empty the set. Retiring a value that is in use is therefore a
  /// two-step job: move the records onto another value first, then remove it.
  Future<models.Error> customersPaymentTermsDelete({required String id}) async {
    final String apiPath =
        '/v1/customers/payment-terms/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One value of the payment terms set, by its id — its code, its fallback
  /// title, the per-language `labels` an operator reads and the badge `tone` a
  /// client renders it with. When a company has to pay. A wholesaler who agrees
  /// net 45 with one customer used to need a release of this app to say so.
  /// Reading one value is the rare path: `GET /customers/payment-terms` answers
  /// the whole set in a single page, which is what a select needs.
  Future<models.Error> customersPaymentTermsGet({required String id}) async {
    final String apiPath =
        '/v1/customers/payment-terms/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Everything about a value except the value itself: its titles, its help
  /// text, its badge tone, its `position` in the select, and which one of the
  /// set is the default. The `code` is immutable, so no record carrying it is
  /// ever orphaned by an edit here — a merchant who retitles `net_30` to
  /// wording of their own changes what people READ and nothing about what
  /// `organizations.payment_terms` stores. Seeded values (`is_system`) are
  /// renameable like any other, and re-seeding leaves the rename alone.
  Future<models.Error> customersPaymentTermsUpdate(
      {required String id,
      String? description,
      Map? descriptions,
      bool? isDefault,
      Map? labels,
      int? position,
      String? title,
      enums.Tone? tone}) async {
    final String apiPath =
        '/v1/customers/payment-terms/{id}'.replaceAll('{id}', id);

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

  /// Discovery for the vocabulary routes: every enum this app publishes, each as
  /// a name, a title and a description. The VALUES are deliberately left out —
  /// this is the call that says which vocabularies exist, and the detail route
  /// is the one that answers what is in them. Names: address-types,
  /// contact-event-kinds, contact-statuses, lifecycle-stages, locales,
  /// organization-statuses, payment-terms, registration-statuses, roles,
  /// rule-matches, segment-sources. Fetch one with GET
  /// /customers/vocabularies/{name}; a client holding the qualified pair
  /// 'customers.<name>' builds that URL from the pair alone.
  Future<models.VocabularyIndex> customersVocabulariesList() async {
    const String apiPath = '/v1/customers/vocabularies';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.VocabularyIndex.fromMap(res.data);
  }

  /// One vocabulary in full: every permitted value, each with its title, its
  /// description and the badge tone a client renders it with — enough to build
  /// a select without a second call. Two kinds of set, and 'source' says which
  /// one answered. 'schema' — the values are read out of the column's CHECK
  /// constraint, so the served set IS the enforced set and the two cannot drift;
  /// a value added to the constraint appears here even before anyone labels it,
  /// titled from its own key. 'table' — the values are the TENANT's own rows
  /// (payment terms, address types, lifecycle stages, activity types, roles), so
  /// they carry labels/descriptions per locale, is_system and is_default, and a
  /// merchant may add to them without a release of this app. 'tenant'/'defaults'
  /// are the two answers for a set the merchant configures but may not extend.
  /// Either way 'closed' is true: the set is exhaustive at this moment, so a
  /// value outside it is stale data rather than a missing label. Values come
  /// back in the order a select should offer them — lifecycle order for a
  /// status, the merchant's own position for a table. Names: address-types,
  /// contact-event-kinds, contact-statuses, lifecycle-stages, locales,
  /// organization-statuses, payment-terms, registration-statuses, roles,
  /// rule-matches, segment-sources.
  Future<models.Error> customersVocabulariesGet(
      {required enums.CustomersVocabulariesGetName name}) async {
    final String apiPath =
        '/v1/customers/vocabularies/{name}'.replaceAll('{name}', name.value);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}

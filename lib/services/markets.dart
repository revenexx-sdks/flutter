part of '../revenexx.dart';

/// Commerce Studio Markets App — the market/region backbone of the Revenue
/// Cloud. A market is a distinct business context within a tenant (a country,
/// a region, a B2C storefront segment) with its own base currency, locales
/// (language + country), traded currencies and tax classes (standard, reduced,
/// …). Markets provides the &#039;market&#039; scope dimension to the Entity Scoping
/// Engine, so every other commerce app (products, orders, customers, …) can
/// slice its data per market. Storefronts resolve their full market context
/// (currency, locales, currencies, tax classes) in one call.
class Markets extends Service {
  /// Initializes a [Markets] service
  Markets(super.client);

  /// Every column is an exact-match filter and they combine with AND
  /// (?code=northwind); each one is declared as a query parameter above. A
  /// `?column=value` this entity does not have is DROPPED rather than refused
  /// — the call answers 200 with the unfiltered list — and `filter` echoes
  /// what was actually applied, which is the only way to tell that apart from a
  /// filter that matched nothing.
  Future<models.Error> marketsList(
      {String? id,
      String? code,
      String? name,
      String? labels,
      String? currency,
      enums.MarketsListStatus? status,
      bool? isDefault,
      int? position,
      String? createdAt,
      String? updatedAt,
      int? limit,
      int? offset,
      String? order}) async {
    const String apiPath = '/v1/markets';

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (labels != null) 'labels': labels,
      if (currency != null) 'currency': currency,
      if (status != null) 'status': status.value,
      if (isDefault != null) 'is_default': isDefault,
      if (position != null) 'position': position,
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

  /// A market needs a 'code' and a 'name' — currency defaults to EUR, status
  /// to active. To get a market that can actually trade, clone an existing one
  /// instead: POST /markets/{id}/clone.
  Future<models.Error> marketsCreate(
      {required String code,
      required String name,
      String? currency,
      bool? isDefault,
      Map? labels,
      int? position,
      enums.MarketStatus? status}) async {
    const String apiPath = '/v1/markets';

    final Map<String, dynamic> apiParams = {
      'code': code,
      if (currency != null) 'currency': currency,
      if (isDefault != null) 'is_default': isDefault,
      'labels': labels,
      'name': name,
      if (position != null) 'position': position,
      if (status != null) 'status': status.value,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// How this tenant keys its translations, resolved for a surface that stands
  /// in no market at all. The Cockpit edits a tenant BASELINE when no market is
  /// selected, and a baseline value has to be readable by every market — so
  /// the locale set answered here is the UNION of every market's locales, each
  /// one already resolved to the key it is written under, not one market's list
  /// and not a pair of setting names to re-implement. Each entry names the
  /// markets that asked for that locale: an editor listing six inputs without
  /// saying who needs them invites translations nobody will ever read.
  /// Write/read keys follow the same two settings as the per-market answer, so a
  /// baseline and a market value can never be keyed differently.
  Future<models.TenantLocalePolicy> marketsLocalePolicy() async {
    const String apiPath = '/v1/markets/locale-policy';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.TenantLocalePolicy.fromMap(res.data);
  }

  /// Every closed value set this app owns, listed by name with its title and its
  /// description but WITHOUT its values — enough to build a menu of them, and
  /// a name to fetch one by when a select box actually needs the values. Static
  /// per app version; nothing about a tenant changes it. It reads no table and
  /// takes no parameter, so 200 is the only answer it has beyond the gateway's
  /// own.
  Future<models.MarketsVocabularyIndex> marketsVocabularies() async {
    const String apiPath = '/v1/markets/vocabularies';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MarketsVocabularyIndex.fromMap(res.data);
  }

  /// One value set in full: every value the column may hold, in the order it may
  /// hold them, with the copy and the badge tone a client renders each one as.
  /// The values are not kept in a list beside the database, they are parsed out
  /// of the CHECK constraint in this app's own schema.json — so the set served
  /// here IS the set enforced on a write, and a select box built from it cannot
  /// offer a value the write would then refuse. A name outside the declared enum
  /// is a 404 rather than an empty list — an empty vocabulary and an unknown
  /// one mean different things to a select box.
  Future<models.Error> marketsVocabulary(
      {required enums.MarketsVocabularyName name}) async {
    final String apiPath =
        '/v1/markets/vocabularies/{name}'.replaceAll('{name}', name.value);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Deleting a market takes its locales, currencies and tax classes with it:
  /// all three carry an ON DELETE CASCADE onto markets.id, so this is never
  /// refused for having children.
  Future<models.Error> marketsDelete({required String id}) async {
    final String apiPath = '/v1/markets/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Resolved by uuid only — unlike /readiness, /clone, /backfill and
  /// /make-default, a market CODE here is a 400 rather than a lookup.
  Future<models.Error> marketsGet({required String id}) async {
    final String apiPath = '/v1/markets/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Partial: omitted fields keep their value.
  Future<models.Error> marketsUpdate(
      {required String id,
      String? code,
      String? currency,
      bool? isDefault,
      Map? labels,
      String? name,
      int? position,
      enums.MarketStatus? status}) async {
    final String apiPath = '/v1/markets/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (code != null) 'code': code,
      if (currency != null) 'currency': currency,
      if (isDefault != null) 'is_default': isDefault,
      'labels': labels,
      if (name != null) 'name': name,
      if (position != null) 'position': position,
      if (status != null) 'status': status.value,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Repairs the market in the path out of a source market that is already
  /// right. The two are compared by CODE, collection by collection, and only the
  /// codes this market does not already carry are added — so a locale, a
  /// currency or a tax class it already holds is left exactly as the merchant
  /// left it, rate included, and is never overwritten. Both the path id and
  /// `source` are resolved by uuid OR by market code. Idempotent: running it
  /// twice adds nothing the second time.
  Future<models.Error> marketsBackfill(
      {required String id,
      required String source,
      bool? currencies,
      bool? locales,
      bool? taxClasses}) async {
    final String apiPath = '/v1/markets/{id}/backfill'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (currencies != null) 'currencies': currencies,
      if (locales != null) 'locales': locales,
      'source': source,
      if (taxClasses != null) 'tax_classes': taxClasses,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Creates a NEW market out of an existing one, taking its locales, its traded
  /// currencies and its tax classes with it in a single call. That is the
  /// difference between this and POST /markets: a plain create leaves a row that
  /// cannot serve anybody, while what comes back here is a market with a
  /// language to render in, a currency to price in and a rate to tax with. The
  /// path id is the SOURCE market, resolved by uuid OR by market code.
  Future<models.Error> marketsClone(
      {required String id,
      required String code,
      bool? copyCurrencies,
      bool? copyLocales,
      bool? copyTaxClasses,
      String? currency,
      String? name,
      enums.MarketStatus? status}) async {
    final String apiPath = '/v1/markets/{id}/clone'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      'code': code,
      if (copyCurrencies != null) 'copy_currencies': copyCurrencies,
      if (copyLocales != null) 'copy_locales': copyLocales,
      if (copyTaxClasses != null) 'copy_tax_classes': copyTaxClasses,
      if (currency != null) 'currency': currency,
      if (name != null) 'name': name,
      if (status != null) 'status': status.value,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The storefront bootstrap: everything a frontend needs to render one market,
  /// resolved server-side so no client re-derives it — the market row, its
  /// locales, the currencies it trades in and its tax classes; WHICH locale to
  /// actually render in and where that answer came from; which key to read and
  /// write a translation under; whether the prices it will be handed are gross
  /// or net; and whether any of it is trustworthy. One call rather than five,
  /// and — more to the point — one place the resolution rules live, instead
  /// of a slightly different copy of them in every storefront. This one resolves
  /// the market by id only: unlike /readiness, /clone and /backfill, a market
  /// CODE here is a 400, not a lookup.
  Future<models.Error> marketsContext({required String id}) async {
    final String apiPath = '/v1/markets/{id}/context'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A tenant has ONE default market: it is what every call naming none falls
  /// back to. Moving the flag from a client was promote-then-demote, two PATCHes
  /// that leave two defaults when the second does not land and none when the
  /// first does. This is the one call instead — it promotes the market in the
  /// path and demotes whoever held the flag in the same operation, writing once
  /// per row that was actually wrong and not touching the rest. Accepts an id or
  /// a market CODE. Answers the market plus the codes it demoted; repeating the
  /// call writes nothing.
  Future<models.Error> marketsMakeDefault(
      {required String id, required Map data}) async {
    final String apiPath =
        '/v1/markets/{id}/make-default'.replaceAll('{id}', id);

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

  /// Whether this market can actually trade, and if not, what is missing. Every
  /// check runs on every call and comes back with its own severity, so the
  /// answer is a diagnosis rather than a yes or a no: a market with no currency
  /// registered has nothing to price in and a market with no tax class has
  /// nothing to tax with, and both of those fail BLOCKING, which is what turns
  /// `ready` false. A check that is merely degraded — no locale of its own,
  /// while the tenant declares a fallback_locale that covers for it — fails as
  /// a warning and leaves the market serviceable. Resolves the market by uuid OR
  /// by market code.
  Future<models.Error> marketsReadiness({required String id}) async {
    final String apiPath = '/v1/markets/{id}/readiness'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Every column is an exact-match filter and they combine with AND
  /// (?code=EUR); each one is declared as a query parameter above. A
  /// `?column=value` this entity does not have is DROPPED rather than refused
  /// — the call answers 200 with the unfiltered list — and `filter` echoes
  /// what was actually applied, which is the only way to tell that apart from a
  /// filter that matched nothing. `market_id` is not among them: the owning
  /// market comes from the path and overwrites anything the query says. An
  /// unknown but well-formed market lists empty rather than 404 — the parent
  /// is filtered on, not verified.
  Future<models.Error> marketsCurrenciesList(
      {required String marketId,
      String? id,
      String? code,
      bool? isDefault,
      int? position,
      String? createdAt,
      int? limit,
      int? offset,
      String? order}) async {
    final String apiPath = '/v1/markets/{market_id}/currencies'
        .replaceAll('{market_id}', marketId);

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (isDefault != null) 'is_default': isDefault,
      if (position != null) 'position': position,
      if (createdAt != null) 'created_at': createdAt,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The owning market comes from the path and overrides anything in the body.
  Future<models.Error> marketsCurrenciesCreate(
      {required String marketId,
      required String code,
      bool? isDefault,
      int? position}) async {
    final String apiPath = '/v1/markets/{market_id}/currencies'
        .replaceAll('{market_id}', marketId);

    final Map<String, dynamic> apiParams = {
      'code': code,
      if (isDefault != null) 'is_default': isDefault,
      if (position != null) 'position': position,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Scoped to the market in the path — a row belonging to another market is a
  /// 404 here, and is never deleted.
  Future<models.Error> marketsCurrenciesDelete(
      {required String marketId, required String id}) async {
    final String apiPath = '/v1/markets/{market_id}/currencies/{id}'
        .replaceAll('{market_id}', marketId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Scoped strictly to the market in the path: a row belonging to another
  /// market is a 404 here, never a 200.
  Future<models.Error> marketsCurrenciesGet(
      {required String marketId, required String id}) async {
    final String apiPath = '/v1/markets/{market_id}/currencies/{id}'
        .replaceAll('{market_id}', marketId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Partial: omitted fields keep their value.
  Future<models.Error> marketsCurrenciesUpdate(
      {required String marketId,
      required String id,
      String? code,
      bool? isDefault,
      int? position}) async {
    final String apiPath = '/v1/markets/{market_id}/currencies/{id}'
        .replaceAll('{market_id}', marketId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (code != null) 'code': code,
      if (isDefault != null) 'is_default': isDefault,
      if (position != null) 'position': position,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Every column is an exact-match filter and they combine with AND
  /// (?code=de-DE); each one is declared as a query parameter above. A
  /// `?column=value` this entity does not have is DROPPED rather than refused
  /// — the call answers 200 with the unfiltered list — and `filter` echoes
  /// what was actually applied, which is the only way to tell that apart from a
  /// filter that matched nothing. `market_id` is not among them: the owning
  /// market comes from the path and overwrites anything the query says. An
  /// unknown but well-formed market lists empty rather than 404 — the parent
  /// is filtered on, not verified.
  Future<models.Error> marketsLocalesList(
      {required String marketId,
      String? id,
      String? code,
      String? language,
      String? country,
      bool? isDefault,
      int? position,
      String? createdAt,
      int? limit,
      int? offset,
      String? order}) async {
    final String apiPath =
        '/v1/markets/{market_id}/locales'.replaceAll('{market_id}', marketId);

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (language != null) 'language': language,
      if (country != null) 'country': country,
      if (isDefault != null) 'is_default': isDefault,
      if (position != null) 'position': position,
      if (createdAt != null) 'created_at': createdAt,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The owning market comes from the path and overrides anything in the body.
  Future<models.Error> marketsLocalesCreate(
      {required String marketId,
      required String code,
      required String country,
      required String language,
      bool? isDefault,
      int? position}) async {
    final String apiPath =
        '/v1/markets/{market_id}/locales'.replaceAll('{market_id}', marketId);

    final Map<String, dynamic> apiParams = {
      'code': code,
      'country': country,
      if (isDefault != null) 'is_default': isDefault,
      'language': language,
      if (position != null) 'position': position,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Scoped to the market in the path — a row belonging to another market is a
  /// 404 here, and is never deleted.
  Future<models.Error> marketsLocalesDelete(
      {required String marketId, required String id}) async {
    final String apiPath = '/v1/markets/{market_id}/locales/{id}'
        .replaceAll('{market_id}', marketId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Scoped strictly to the market in the path: a row belonging to another
  /// market is a 404 here, never a 200.
  Future<models.Error> marketsLocalesGet(
      {required String marketId, required String id}) async {
    final String apiPath = '/v1/markets/{market_id}/locales/{id}'
        .replaceAll('{market_id}', marketId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Partial: omitted fields keep their value.
  Future<models.Error> marketsLocalesUpdate(
      {required String marketId,
      required String id,
      String? code,
      String? country,
      bool? isDefault,
      String? language,
      int? position}) async {
    final String apiPath = '/v1/markets/{market_id}/locales/{id}'
        .replaceAll('{market_id}', marketId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (code != null) 'code': code,
      if (country != null) 'country': country,
      if (isDefault != null) 'is_default': isDefault,
      if (language != null) 'language': language,
      if (position != null) 'position': position,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Every column is an exact-match filter and they combine with AND
  /// (?code=standard); each one is declared as a query parameter above. A
  /// `?column=value` this entity does not have is DROPPED rather than refused
  /// — the call answers 200 with the unfiltered list — and `filter` echoes
  /// what was actually applied, which is the only way to tell that apart from a
  /// filter that matched nothing. `market_id` is not among them: the owning
  /// market comes from the path and overwrites anything the query says. An
  /// unknown but well-formed market lists empty rather than 404 — the parent
  /// is filtered on, not verified.
  Future<models.Error> marketsTaxClassesList(
      {required String marketId,
      String? id,
      String? code,
      String? name,
      String? labels,
      double? rate,
      bool? isDefault,
      int? position,
      String? createdAt,
      String? updatedAt,
      int? limit,
      int? offset,
      String? order}) async {
    final String apiPath = '/v1/markets/{market_id}/tax_classes'
        .replaceAll('{market_id}', marketId);

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (labels != null) 'labels': labels,
      if (rate != null) 'rate': rate,
      if (isDefault != null) 'is_default': isDefault,
      if (position != null) 'position': position,
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

  /// The owning market comes from the path and overrides anything in the body.
  Future<models.Error> marketsTaxClassesCreate(
      {required String marketId,
      required String code,
      required String name,
      bool? isDefault,
      Map? labels,
      int? position,
      double? rate}) async {
    final String apiPath = '/v1/markets/{market_id}/tax_classes'
        .replaceAll('{market_id}', marketId);

    final Map<String, dynamic> apiParams = {
      'code': code,
      if (isDefault != null) 'is_default': isDefault,
      'labels': labels,
      'name': name,
      if (position != null) 'position': position,
      if (rate != null) 'rate': rate,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Refused with a 409 for as long as another app still points at this tax
  /// class by its code. A tax class is the source of record for a rate, and
  /// other apps name it by CODE with no foreign key behind it — a cross-app FK
  /// is what ADR-0055 forbids. So this asks the shipping app what still uses the
  /// code (shipping.tax-classes.usage) and answers 409 with the count and the
  /// first few names rather than leaving methods quoting a rate nobody defines.
  /// The check FAILS OPEN: a tenant without the shipping app, or an unreachable
  /// one, deletes as before, and the answer says which happened in
  /// 'usage_checked'. Matched on the code, which is shared across markets —
  /// the refusal message says so.
  Future<models.Error> marketsTaxClassesDelete(
      {required String marketId, required String id}) async {
    final String apiPath = '/v1/markets/{market_id}/tax_classes/{id}'
        .replaceAll('{market_id}', marketId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Scoped strictly to the market in the path: a row belonging to another
  /// market is a 404 here, never a 200.
  Future<models.Error> marketsTaxClassesGet(
      {required String marketId, required String id}) async {
    final String apiPath = '/v1/markets/{market_id}/tax_classes/{id}'
        .replaceAll('{market_id}', marketId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Partial: omitted fields keep their value.
  Future<models.Error> marketsTaxClassesUpdate(
      {required String marketId,
      required String id,
      String? code,
      bool? isDefault,
      Map? labels,
      String? name,
      int? position,
      double? rate}) async {
    final String apiPath = '/v1/markets/{market_id}/tax_classes/{id}'
        .replaceAll('{market_id}', marketId)
        .replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (code != null) 'code': code,
      if (isDefault != null) 'is_default': isDefault,
      'labels': labels,
      if (name != null) 'name': name,
      if (position != null) 'position': position,
      if (rate != null) 'rate': rate,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}

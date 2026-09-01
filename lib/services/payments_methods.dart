part of '../revenexx.dart';

  /// WHAT a buyer may pay with, and what it costs them. A payment method is the
  /// line a checkout offers: a `code`, buyer-facing `labels`, a kind
  /// (&#039;self_managed&#039; for invoice and prepayment, &#039;psp&#039; for anything an acquirer
  /// moves), a fee (&#039;none&#039;, &#039;fixed&#039; or &#039;percent&#039; of the order), the countries it
  /// may be offered into and the order-value bounds it applies between. POST
  /// /payments/methods/eligible is the read side of everything in here — it
  /// takes the buyer context and answers only the methods that apply, with their
  /// computed fees, plus an `excluded` list naming the ones that did not and
  /// why. Note what eligibility does NOT ask: whether the method&#039;s PSP is
  /// configured and enabled. A method is joined to the ledger by CODE and not by
  /// a foreign key, which is why both deleting one and renaming its `code` are
  /// refused while a payment still names it.
class PaymentsMethods extends Service {
  /// Initializes a [PaymentsMethods] service
  PaymentsMethods(super.client);

  /// Every method this tenant has configured, enabled or not — what the
  /// Cockpit's Payment methods screen shows and how an integration finds out
  /// which codes exist. It answers CONFIGURATION, never an offer: nothing here
  /// is evaluated against a buyer, so a method restricted to Germany, one whose
  /// order-value bounds exclude this basket and one whose PSP was never set up
  /// all come back the same way. The call a checkout makes is POST
  /// /payments/methods/eligible. Rows come back in whatever order the database
  /// returns them, so a storefront-shaped list needs `?order=position.asc` —
  /// `position` is the merchant's intended sequence and nothing sorts by it here
  /// on its own.
  Future paymentsMethodsList({int? limit, int? offset, String? order, String? code, enums.PaymentMethodKind? kind, bool? enabled, String? provider}) async {
    const String apiPath = '/v1/payments/methods';

        final Map<String, dynamic> apiParams = {
            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

            if (code != null) 'code': code,

            if (kind != null) 'kind': kind.value,

            if (enabled != null) 'enabled': enabled,

            if (provider != null) 'provider': provider,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Adds a line a checkout can offer. A create cannot omit `code` and `name`;
  /// every other column is optional or defaulted by the database. Two rows of
  /// this tenant may not share `code` — that is the 409. Two defaults are
  /// worth knowing before the first call: `enabled` is false, so a new method
  /// reaches no checkout until it is switched on, and `kind` is 'self_managed'
  /// — a card or wallet method needs `kind: "psp"` plus a `provider` the
  /// catalog carries, or it falls back to the tenant's `default_provider` at
  /// payment time and fails there if none is set. The `code` is the value every
  /// payment, every checkout and every ERP will name this method by from now on,
  /// and once a single payment has been made under it a rename is refused with
  /// 409: choose it once.
  Future<models.Error> paymentsMethodsCreate({required String code, required String name, List<String>? countries, String? description, bool? enabled, double? feeAmount, String? feeCurrency, enums.PaymentFeeType? feeType, enums.PaymentMethodKind? kind, Map? labels, double? maxOrderValue, Map? metadata, double? minOrderValue, int? position, String? provider, String? providerMethod}) async {
    const String apiPath = '/v1/payments/methods';

        final Map<String, dynamic> apiParams = {
            'code': code,

            'countries': countries,

            'description': description,

            if (enabled != null) 'enabled': enabled,

            if (feeAmount != null) 'fee_amount': feeAmount,

            if (feeCurrency != null) 'fee_currency': feeCurrency,

            if (feeType != null) 'fee_type': feeType.value,

            if (kind != null) 'kind': kind.value,

            'labels': labels,

            'max_order_value': maxOrderValue,

            'metadata': metadata,

            'min_order_value': minOrderValue,

            'name': name,

            if (position != null) 'position': position,

            'provider': provider,

            'provider_method': providerMethod,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Writes the four methods a shop starts with — invoice and prepayment as
  /// self-managed, card and PayPal routed at the mock PSP so a fresh install can
  /// complete a checkout end to end — together with the four provider rows
  /// behind them: the built-in mock plus Stripe, PayPal and Novalnet, the three
  /// connectors this app opens outbound. The app already runs this for itself
  /// when it is installed (it listens on app.installed), so calling the route is
  /// for the second time and after: a method someone deleted, or a row a later
  /// release added that an existing install never got. Stripe, PayPal and
  /// Novalnet arrive disabled, in test mode and without credentials — the
  /// operator fills those in — while the mock arrives enabled, because it
  /// moves no money. Re-running is safe by design: it never duplicates a row and
  /// never overwrites an existing one, so nothing an operator has set can be
  /// undone by calling it again. Only genuinely missing option keys (a logo
  /// added after the first install) are filled, and those rows are reported as
  /// "updated" rather than created.
  Future paymentsMethodsDefaults() async {
    const String apiPath = '/v1/payments/methods/defaults';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// The checkout's question — "what can THIS buyer pay with?" — answered
  /// server-side before any PSP is involved, so the storefront never renders a
  /// method the create would then refuse with 422. It evaluates the buyer
  /// context against every configured method: disabled, a country outside
  /// `countries`, an amount outside `min_order_value`/`max_order_value`.
  /// Restriction dimensions are ANDed and entries within one are ORed, and an
  /// empty dimension means unrestricted. Eligible methods come back sorted by
  /// `position` with their fee already computed for this amount; everything else
  /// lands in `excluded` with the reason in words, which is what makes a support
  /// question answerable. It reads only — nothing is written and no provider
  /// is called. Two things it does NOT check: whether the method's PSP is
  /// configured and enabled (a method whose provider is switched off is still
  /// offered here and fails at POST /payments — a provider a method names can
  /// no longer be deleted, which closes the other half of the same gap), and
  /// anything about the buyer beyond country and amount. A context that matches
  /// nothing is 200 with an empty `methods` list, never 404.
  Future paymentsMethodsEligible({double? amount, String? country, String? currency}) async {
    const String apiPath = '/v1/payments/methods/eligible';

        final Map<String, dynamic> apiParams = {
            'amount': amount,

            'country': country,

            'currency': currency,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// payments.method_code is a CODE, not a foreign key: a payment records what
  /// happened and has to survive the configuration it was made with. The cost of
  /// that looseness is that deleting a method turns every payment made with it
  /// into a row naming something that no longer exists. So the count is taken
  /// HERE and answered as 409 with the number, rather than left to whoever is
  /// about to click delete — a client that pre-counts asks a second question
  /// whose answer disagrees the moment a payment lands between the two calls.
  /// Disabling the method (enabled: false) is what an operator usually meant and
  /// stays available.
  Future<models.Error> paymentsMethodsDelete({required String id}) async {
    final String apiPath = '/v1/payments/methods/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// One configuration, every column, addressed by its row id — the edit
  /// form's read. It is addressed by ID and there is no route that takes a
  /// `code`, which matters because the CODE is what a checkout, a payment and an
  /// ERP name a method by: to resolve one, filter the list (`GET
  /// /payments/methods?code=invoice`), which answers a page of at most one row
  /// because (tenant_id, code) is unique. Reading a method says nothing about
  /// whether a buyer may use it — that is POST /payments/methods/eligible —
  /// and nothing about whether its PSP can transact, which is under the provider
  /// configuration.
  Future<models.Error> paymentsMethodsGet({required String id}) async {
    final String apiPath = '/v1/payments/methods/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A PUT that PATCHES: only the keys in the body are written and every omitted
  /// column keeps its value, so `{"enabled": false}` is the whole request for
  /// taking a method out of checkout. A body with no writable key is refused
  /// with 400 rather than treated as a no-op. This is the route for all three
  /// things an operator changes about a method after it exists — the `enabled`
  /// switch that puts it in or out of checkout, the fee it charges (`fee_type`,
  /// `fee_amount`, `fee_currency`) and the restrictions that decide who is
  /// offered it (`countries`, `min_order_value`, `max_order_value`) —
  /// alongside its labels, description and `position`. `enabled: false` is the
  /// safe way to retire one — it disappears from POST
  /// /payments/methods/eligible immediately and stays on every payment ever made
  /// with it. The one write this route refuses is a rename of `code` while the
  /// ledger still names the old one. The three tables of this app carry no
  /// foreign keys at all: a payment names its method by `method_code` and its
  /// acquirer by `provider`, both plain text, because a payment records what
  /// happened and has to survive the configuration it was made with. So the
  /// database will not stop this — whatever the ledger still names, it goes on
  /// naming. A rename would therefore leave every recorded payment pointing at a
  /// code no configuration carries, which is the same harm DELETE on this row
  /// answers 409 for — so it answers the same 409, with the same
  /// `method_in_use` code and the same count. Renaming a method nothing has been
  /// paid with is still free, and so is every other column at any time.
  Future<models.Error> paymentsMethodsUpdate({required String id, String? code, List<String>? countries, String? description, bool? enabled, double? feeAmount, String? feeCurrency, enums.PaymentFeeType? feeType, enums.PaymentMethodKind? kind, Map? labels, double? maxOrderValue, Map? metadata, double? minOrderValue, String? name, int? position, String? provider, String? providerMethod}) async {
    final String apiPath = '/v1/payments/methods/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            'countries': countries,

            'description': description,

            if (enabled != null) 'enabled': enabled,

            if (feeAmount != null) 'fee_amount': feeAmount,

            if (feeCurrency != null) 'fee_currency': feeCurrency,

            if (feeType != null) 'fee_type': feeType.value,

            if (kind != null) 'kind': kind.value,

            'labels': labels,

            'max_order_value': maxOrderValue,

            'metadata': metadata,

            'min_order_value': minOrderValue,

            if (name != null) 'name': name,

            if (position != null) 'position': position,

            'provider': provider,

            'provider_method': providerMethod,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }
}
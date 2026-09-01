part of '../../models.dart';

/// A method needs its identity: code + name.
class PaymentMethodCreateRequest implements Model {
    /// The machine name of the method, unique per tenant and lower case by convention ('invoice', 'prepayment', 'card', 'paypal'). It is the string the checkout asks for, the string every payment stores, and therefore the one value here that cannot be changed freely: renaming it would leave the ledger naming something that no longer exists, so it is refused with 409 for as long as any payment names it. Required on create.
    final String code;

    /// Allowed ISO 3166-1 alpha-2 country codes, compared upper-cased against the buyer country. null or an empty list means unrestricted — the invoice method this app seeds is restricted to DE, which is why an eligibility call without a country sees it excluded.
    final List<String>? countries;

    /// One line explaining the method where it is offered — payment terms, what happens after the order. Shown to the buyer, so it is the merchant's wording rather than the app's.
    final String? description;

    /// A disabled method is never eligible and never reaches a checkout. This is the switch an operator wants: deleting a method the ledger still names — or renaming its `code` — is refused with 409. Defaults to false, so a half-configured method cannot reach a checkout by accident.
    final bool? enabled;

    /// The surcharge this method costs the buyer, read as an amount or as a percentage depending on `fee_type`. Never negative — a discount for paying a certain way is not expressible here. Defaults to 0.
    final double? fee_amount;

    /// ISO 4217 code a fixed fee is expressed in. The database bounds the length at three characters and nothing else, so lower case is stored as written. Defaults to EUR, and lower case is accepted here exactly as the handlers accept it.
    final String? fee_currency;

    /// How `fee_amount` applies: 'none' (no surcharge), 'fixed' (that many units of `fee_currency`) or 'percent' (that share of the order amount). Defaults to 'none'.
    final enums.PaymentFeeType? fee_type;

    /// Who moves the money. 'self_managed' — invoice, prepayment — means the merchant fulfils and reconciles it outside any PSP, and such a payment authorizes the moment it is created. 'psp' means a configured provider authorizes, captures and refunds it. Defaults to 'self_managed'; 'psp' needs a 'provider' to transact.
    final enums.PaymentMethodKind? kind;

    /// Buyer-facing names keyed by language tag — what a storefront shows instead of the operator-facing `name`. Free jsonb: the database constrains neither the tags nor the values, so a client reads the tag it wants and falls back to `en`.
    final Map? labels;

    /// Largest order amount this method may be used for — the usual credit-risk cap on invoice and prepayment. null means no upper bound.
    final double? max_order_value;

    /// Free-form merchant data carried on the configuration. This app never reads it — it is storage for the integrations that do (an ERP key for the method, a ledger account, a display hint).
    final Map? metadata;

    /// Smallest order amount this method may be used for — the usual guard against paying a €5 order by invoice. null means no lower bound.
    final double? min_order_value;

    /// Operator-facing name, in the language the merchant administers in. What a buyer sees comes from `labels`. Required on create.
    final String name;

    /// Sort order at checkout, ascending — the merchant's preferred payment method first. Defaults to 0.
    final int? position;

    /// The PSP code this method transacts through, from GET /payments/providers/catalog. Only meaningful for kind 'psp'; a PSP method that names none falls back to the tenant's `default_provider` setting. Must be a code GET /payments/providers/catalog carries.
    final String? provider;

    /// The provider's own payment-method id ('card', 'paypal', 'sepa_debit') — what the driver is told to charge. Copied onto every payment created with this method as `metadata.provider_method`.
    final String? provider_method;

    PaymentMethodCreateRequest({
        required this.code,
        this.countries,
        this.description,
        this.enabled,
        this.fee_amount,
        this.fee_currency,
        this.fee_type,
        this.kind,
        this.labels,
        this.max_order_value,
        this.metadata,
        this.min_order_value,
        required this.name,
        this.position,
        this.provider,
        this.provider_method,
    });

    factory PaymentMethodCreateRequest.fromMap(Map<String, dynamic> map) {
        return PaymentMethodCreateRequest(
            code: map['code'].toString(),
            countries: List.from(map['countries'] ?? []),
            description: map['description']?.toString(),
            enabled: map['enabled'],
            fee_amount: map['fee_amount']?.toDouble(),
            fee_currency: map['fee_currency']?.toString(),
            fee_type: map['fee_type'] != null ? enums.PaymentFeeType.values.firstWhere((e) => e.value == map['fee_type']) : null,
            kind: map['kind'] != null ? enums.PaymentMethodKind.values.firstWhere((e) => e.value == map['kind']) : null,
            labels: map['labels'],
            max_order_value: map['max_order_value']?.toDouble(),
            metadata: map['metadata'],
            min_order_value: map['min_order_value']?.toDouble(),
            name: map['name'].toString(),
            position: map['position'],
            provider: map['provider']?.toString(),
            provider_method: map['provider_method']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "countries": countries,
            "description": description,
            "enabled": enabled,
            "fee_amount": fee_amount,
            "fee_currency": fee_currency,
            "fee_type": fee_type?.value,
            "kind": kind?.value,
            "labels": labels,
            "max_order_value": max_order_value,
            "metadata": metadata,
            "min_order_value": min_order_value,
            "name": name,
            "position": position,
            "provider": provider,
            "provider_method": provider_method,
        };
    }
}

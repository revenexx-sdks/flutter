part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class PaymentProviderUpdateRequest implements Model {
    /// The PSP's own API credentials, under the key names its auth scheme expects — `GET /payments/providers/catalog` publishes them per provider as `credential_fields` (Stripe: `api_key`; PayPal: `client_id` + `client_secret`; Novalnet: `api_key` + `payment_access_key` + `tariff_id`). They come from the provider's own dashboard, are handed to the driver in-process, and are never read back by any route. Write-only: to rotate one, write the new value. Whatever a document shows here is a placeholder.
    final Map? credentials;

    /// Only an enabled provider takes NEW payments: a method pointing at a disabled one falls through to the tenant's `fallback_provider`, and to a 422 if there is none. Nothing else reads it — capture, cancel and refund on the payments this PSP already holds go on working — which is what makes disabling the safe retirement and deleting the refused one. Defaults to false — finish the credentials before switching it on.
    final bool? enabled;

    /// Operator-facing name of the configuration. Defaults to the catalog label, and is worth changing when a tenant runs two accounts with one PSP. Written straight to the database, which refuses an empty one.
    final String? name;

    /// Per-provider switches this app understands, plus anything the merchant keeps beside them. Three keys are the app's own: `logo_url` (the bundled logo, filled in when the provider is seeded), `capture_method` and `three_ds` (what the prism driver does today). Free jsonb — an unknown key is stored and ignored.
    final Map? options;

    /// The catalog code of the PSP this row configures — one row per provider per tenant. GET /payments/providers/catalog lists every code that may appear here. It is what every payment and every method naming this PSP resolves it by, so changing it is refused with 409 for as long as one of them does. Required on create, and refused with 400 when the catalog does not carry it.
    final String? provider;

    /// Whether the driver talks to the PSP's sandbox. New configurations start in test mode: a provider nobody verified must not touch live money. Unstated takes the tenant's own `test_mode_default` setting.
    final bool? test_mode;

    /// The signing secret the PSP issues when its webhook endpoint is created, in the provider's own dashboard. webhooks.revenexx.com verifies each callback against it before the dispatcher hands the envelope to this app. Write-only, like `credentials`: it is stored, used, and never read back by any route, so there is nothing to compare a value against — to rotate it, write the new one. Whatever a document shows here is a generated placeholder, not a usable secret — writing it verbatim leaves every callback failing verification.
    final String? webhook_secret;

    PaymentProviderUpdateRequest({
        this.credentials,
        this.enabled,
        this.name,
        this.options,
        this.provider,
        this.test_mode,
        this.webhook_secret,
    });

    factory PaymentProviderUpdateRequest.fromMap(Map<String, dynamic> map) {
        return PaymentProviderUpdateRequest(
            credentials: map['credentials'],
            enabled: map['enabled'],
            name: map['name']?.toString(),
            options: map['options'],
            provider: map['provider']?.toString(),
            test_mode: map['test_mode'],
            webhook_secret: map['webhook_secret']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "credentials": credentials,
            "enabled": enabled,
            "name": name,
            "options": options,
            "provider": provider,
            "test_mode": test_mode,
            "webhook_secret": webhook_secret,
        };
    }
}

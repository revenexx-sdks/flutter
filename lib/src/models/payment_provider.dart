part of '../../models.dart';

///
class PaymentProvider implements Model {
  /// When this PSP was configured for the tenant.
  final String? created_at;

  /// Only an enabled provider takes NEW payments: a method pointing at a disabled one falls through to the tenant's `fallback_provider`, and to a 422 if there is none. Nothing else reads it — capture, cancel and refund on the payments this PSP already holds go on working — which is what makes disabling the safe retirement and deleting the refused one.
  final bool? enabled;

  /// Id of the PSP configuration row — what the provider routes address. The provider itself is named by `provider`.
  final String? id;

  /// Operator-facing name of the configuration. Defaults to the catalog label, and is worth changing when a tenant runs two accounts with one PSP.
  final String? name;

  /// Per-provider switches this app understands, plus anything the merchant keeps beside them. Three keys are the app's own: `logo_url` (the bundled logo, filled in when the provider is seeded), `capture_method` and `three_ds` (what the prism driver does today). Free jsonb — an unknown key is stored and ignored.
  final Map? options;

  /// The catalog code of the PSP this row configures — one row per provider per tenant. GET /payments/providers/catalog lists every code that may appear here. It is what every payment and every method naming this PSP resolves it by, so changing it is refused with 409 for as long as one of them does.
  final String? provider;

  /// Whether the driver talks to the PSP's sandbox. New configurations start in test mode: a provider nobody verified must not touch live money.
  final bool? test_mode;

  /// When its configuration last changed — including a credential rotation, which is otherwise invisible from the outside.
  final String? updated_at;

  PaymentProvider({
    this.created_at,
    this.enabled,
    this.id,
    this.name,
    this.options,
    this.provider,
    this.test_mode,
    this.updated_at,
  });

  factory PaymentProvider.fromMap(Map<String, dynamic> map) {
    return PaymentProvider(
      created_at: map['created_at']?.toString(),
      enabled: map['enabled'],
      id: map['id']?.toString(),
      name: map['name']?.toString(),
      options: map['options'],
      provider: map['provider']?.toString(),
      test_mode: map['test_mode'],
      updated_at: map['updated_at']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "created_at": created_at,
      "enabled": enabled,
      "id": id,
      "name": name,
      "options": options,
      "provider": provider,
      "test_mode": test_mode,
      "updated_at": updated_at,
    };
  }
}

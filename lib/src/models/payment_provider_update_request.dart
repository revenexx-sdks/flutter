part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class PaymentProviderUpdateRequest implements Model {
    /// PSP credentials — the catalog&#039;s credential_fields say which keys the auth scheme expects.
    final Map? credentials;

    /// Only enabled providers transact (default false).
    final bool? enabled;

    /// Display name — defaults to the catalog label.
    final String? name;

    /// Free-form provider options.
    final Map? options;

    /// Provider code — must exist in the catalog (GET /payments/providers/catalog).
    final String? provider;

    /// Sandbox/test credentials (default true).
    final bool? test_mode;

    /// Shared secret for PSP callback verification.
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

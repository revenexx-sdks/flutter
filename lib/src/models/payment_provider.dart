part of '../../models.dart';

/// 
class PaymentProvider implements Model {
    /// 
    final String? created_at;

    /// 
    final Map? credentials;

    /// 
    final bool? enabled;

    /// 
    final String? id;

    /// 
    final String? name;

    /// 
    final Map? options;

    /// 
    final String? provider;

    /// 
    final bool? test_mode;

    /// 
    final String? updated_at;

    /// 
    final String? webhook_secret;

    PaymentProvider({
        this.created_at,
        this.credentials,
        this.enabled,
        this.id,
        this.name,
        this.options,
        this.provider,
        this.test_mode,
        this.updated_at,
        this.webhook_secret,
    });

    factory PaymentProvider.fromMap(Map<String, dynamic> map) {
        return PaymentProvider(
            created_at: map['created_at']?.toString(),
            credentials: map['credentials'],
            enabled: map['enabled'],
            id: map['id']?.toString(),
            name: map['name']?.toString(),
            options: map['options'],
            provider: map['provider']?.toString(),
            test_mode: map['test_mode'],
            updated_at: map['updated_at']?.toString(),
            webhook_secret: map['webhook_secret']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "credentials": credentials,
            "enabled": enabled,
            "id": id,
            "name": name,
            "options": options,
            "provider": provider,
            "test_mode": test_mode,
            "updated_at": updated_at,
            "webhook_secret": webhook_secret,
        };
    }
}

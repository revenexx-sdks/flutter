part of '../../models.dart';

/// 
class PaymentMethod implements Model {
    /// 
    final String? code;

    /// 
    final Map? countries;

    /// 
    final String? created_at;

    /// 
    final String? description;

    /// 
    final bool? enabled;

    /// 
    final double? fee_amount;

    /// 
    final String? fee_currency;

    /// 
    final String? fee_type;

    /// 
    final String? id;

    /// 
    final String? kind;

    /// 
    final Map? labels;

    /// 
    final double? max_order_value;

    /// 
    final Map? metadata;

    /// 
    final double? min_order_value;

    /// 
    final String? name;

    /// 
    final int? position;

    /// 
    final String? provider;

    /// 
    final String? provider_method;

    /// 
    final String? updated_at;

    PaymentMethod({
        this.code,
        this.countries,
        this.created_at,
        this.description,
        this.enabled,
        this.fee_amount,
        this.fee_currency,
        this.fee_type,
        this.id,
        this.kind,
        this.labels,
        this.max_order_value,
        this.metadata,
        this.min_order_value,
        this.name,
        this.position,
        this.provider,
        this.provider_method,
        this.updated_at,
    });

    factory PaymentMethod.fromMap(Map<String, dynamic> map) {
        return PaymentMethod(
            code: map['code']?.toString(),
            countries: map['countries'],
            created_at: map['created_at']?.toString(),
            description: map['description']?.toString(),
            enabled: map['enabled'],
            fee_amount: map['fee_amount']?.toDouble(),
            fee_currency: map['fee_currency']?.toString(),
            fee_type: map['fee_type']?.toString(),
            id: map['id']?.toString(),
            kind: map['kind']?.toString(),
            labels: map['labels'],
            max_order_value: map['max_order_value']?.toDouble(),
            metadata: map['metadata'],
            min_order_value: map['min_order_value']?.toDouble(),
            name: map['name']?.toString(),
            position: map['position'],
            provider: map['provider']?.toString(),
            provider_method: map['provider_method']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "countries": countries,
            "created_at": created_at,
            "description": description,
            "enabled": enabled,
            "fee_amount": fee_amount,
            "fee_currency": fee_currency,
            "fee_type": fee_type,
            "id": id,
            "kind": kind,
            "labels": labels,
            "max_order_value": max_order_value,
            "metadata": metadata,
            "min_order_value": min_order_value,
            "name": name,
            "position": position,
            "provider": provider,
            "provider_method": provider_method,
            "updated_at": updated_at,
        };
    }
}

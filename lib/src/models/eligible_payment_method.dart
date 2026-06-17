part of '../../models.dart';

/// 
class EligiblePaymentMethod implements Model {
    /// 
    final String? code;

    /// 
    final String? currency;

    /// 
    final String? description;

    /// 
    final double? fee;

    /// 
    final String? fee_type;

    /// 
    final String? kind;

    /// 
    final Map? labels;

    /// 
    final String? name;

    /// 
    final int? position;

    /// 
    final String? provider;

    EligiblePaymentMethod({
        this.code,
        this.currency,
        this.description,
        this.fee,
        this.fee_type,
        this.kind,
        this.labels,
        this.name,
        this.position,
        this.provider,
    });

    factory EligiblePaymentMethod.fromMap(Map<String, dynamic> map) {
        return EligiblePaymentMethod(
            code: map['code']?.toString(),
            currency: map['currency']?.toString(),
            description: map['description']?.toString(),
            fee: map['fee']?.toDouble(),
            fee_type: map['fee_type']?.toString(),
            kind: map['kind']?.toString(),
            labels: map['labels'],
            name: map['name']?.toString(),
            position: map['position'],
            provider: map['provider']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "currency": currency,
            "description": description,
            "fee": fee,
            "fee_type": fee_type,
            "kind": kind,
            "labels": labels,
            "name": name,
            "position": position,
            "provider": provider,
        };
    }
}

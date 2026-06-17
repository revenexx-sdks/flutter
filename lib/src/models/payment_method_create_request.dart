part of '../../models.dart';

/// A method needs its identity: code + name.
class PaymentMethodCreateRequest implements Model {
    /// Stable method code (unique per tenant, e.g. &#039;invoice&#039;, &#039;card&#039;).
    final String code;

    /// Allowed ISO country codes — empty/omitted = unrestricted.
    final List<String>? countries;

    /// 
    final String? description;

    /// Disabled methods are never eligible (default false).
    final bool? enabled;

    /// Fixed amount or percent value, per fee_type (default 0).
    final double? fee_amount;

    /// ISO 4217 code (default EUR).
    final String? fee_currency;

    /// How &#039;fee_amount&#039; applies (default &#039;none&#039;).
    final enums.PaymentFeeType? fee_type;

    /// Self-managed (merchant fulfils, default) or PSP-backed (&#039;provider&#039; required to transact).
    final enums.PaymentMethodKind? kind;

    /// Localized display names ({ de, en, … }).
    final Map? labels;

    /// Maximum order amount — omitted = no upper bound.
    final double? max_order_value;

    /// Free-form metadata.
    final Map? metadata;

    /// Minimum order amount — omitted = no lower bound.
    final double? min_order_value;

    /// Display name.
    final String name;

    /// Sort position in the checkout (default 0).
    final int? position;

    /// PSP code from the catalog — only for kind &#039;psp&#039;.
    final String? provider;

    /// The provider&#039;s payment method id (e.g. &#039;card&#039;, &#039;paypal&#039;).
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

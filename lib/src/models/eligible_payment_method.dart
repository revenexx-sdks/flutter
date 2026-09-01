part of '../../models.dart';

/// One method as a checkout should render it: identity, wording, and what it costs this buyer.
class EligiblePaymentMethod implements Model {
    /// The code to send back as `method_code` when the payment is created.
    final String? code;

    /// The currency `fee` is in — the one the request asked with, echoed.
    final String? currency;

    /// The merchant's line about this method, to show beside it at checkout.
    final String? description;

    /// The surcharge this method costs THIS buyer, already computed against the requested amount — a fixed fee as it stands, a percentage resolved into an amount. Not a column: no CHECK bounds it, so none is declared.
    final double? fee;

    /// How `fee` was arrived at, for a checkout that wants to show "2 % surcharge" rather than the amount.
    final enums.PaymentFeeType? fee_type;

    /// Whether choosing this method starts a PSP flow ('psp') or authorizes immediately ('self_managed').
    final enums.PaymentMethodKind? kind;

    /// Buyer-facing names keyed by language tag, or null when the merchant configured none — then `name` is all there is.
    final Map? labels;

    /// The operator-facing name. Prefer `labels` for anything a buyer reads.
    final String? name;

    /// The merchant's sort order. The list is already sorted by it; it is carried so a client that re-sorts can put it back.
    final int? position;

    /// The PSP behind it, for a checkout that has to load a provider SDK before it can collect an instrument. null for self-managed methods.
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
            fee_type: map['fee_type'] != null ? enums.PaymentFeeType.values.firstWhere((e) => e.value == map['fee_type']) : null,
            kind: map['kind'] != null ? enums.PaymentMethodKind.values.firstWhere((e) => e.value == map['kind']) : null,
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
            "fee_type": fee_type?.value,
            "kind": kind?.value,
            "labels": labels,
            "name": name,
            "position": position,
            "provider": provider,
        };
    }
}

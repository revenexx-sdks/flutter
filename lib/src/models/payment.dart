part of '../../models.dart';

/// 
class Payment implements Model {
    /// 
    final double? amount;

    /// 
    final String? authorized_at;

    /// 
    final String? captured_at;

    /// 
    final String? cart_id;

    /// 
    final String? contact_id;

    /// 
    final String? created_at;

    /// 
    final String? currency;

    /// 
    final String? error_message;

    /// 
    final String? failed_at;

    /// 
    final double? fee_amount;

    /// 
    final String? id;

    /// 
    final String? idempotency_key;

    /// 
    final String? kind;

    /// 
    final Map? metadata;

    /// 
    final String? method_code;

    /// 
    final Map? next_action;

    /// 
    final String? order_ref;

    /// 
    final String? provider;

    /// 
    final String? psp_payment_id;

    /// 
    final String? refunded_at;

    /// 
    final String? status;

    /// 
    final String? updated_at;

    Payment({
        this.amount,
        this.authorized_at,
        this.captured_at,
        this.cart_id,
        this.contact_id,
        this.created_at,
        this.currency,
        this.error_message,
        this.failed_at,
        this.fee_amount,
        this.id,
        this.idempotency_key,
        this.kind,
        this.metadata,
        this.method_code,
        this.next_action,
        this.order_ref,
        this.provider,
        this.psp_payment_id,
        this.refunded_at,
        this.status,
        this.updated_at,
    });

    factory Payment.fromMap(Map<String, dynamic> map) {
        return Payment(
            amount: map['amount']?.toDouble(),
            authorized_at: map['authorized_at']?.toString(),
            captured_at: map['captured_at']?.toString(),
            cart_id: map['cart_id']?.toString(),
            contact_id: map['contact_id']?.toString(),
            created_at: map['created_at']?.toString(),
            currency: map['currency']?.toString(),
            error_message: map['error_message']?.toString(),
            failed_at: map['failed_at']?.toString(),
            fee_amount: map['fee_amount']?.toDouble(),
            id: map['id']?.toString(),
            idempotency_key: map['idempotency_key']?.toString(),
            kind: map['kind']?.toString(),
            metadata: map['metadata'],
            method_code: map['method_code']?.toString(),
            next_action: map['next_action'],
            order_ref: map['order_ref']?.toString(),
            provider: map['provider']?.toString(),
            psp_payment_id: map['psp_payment_id']?.toString(),
            refunded_at: map['refunded_at']?.toString(),
            status: map['status']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "amount": amount,
            "authorized_at": authorized_at,
            "captured_at": captured_at,
            "cart_id": cart_id,
            "contact_id": contact_id,
            "created_at": created_at,
            "currency": currency,
            "error_message": error_message,
            "failed_at": failed_at,
            "fee_amount": fee_amount,
            "id": id,
            "idempotency_key": idempotency_key,
            "kind": kind,
            "metadata": metadata,
            "method_code": method_code,
            "next_action": next_action,
            "order_ref": order_ref,
            "provider": provider,
            "psp_payment_id": psp_payment_id,
            "refunded_at": refunded_at,
            "status": status,
            "updated_at": updated_at,
        };
    }
}

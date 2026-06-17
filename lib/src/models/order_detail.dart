part of '../../models.dart';

/// The order aggregate: every column of the order plus its items, shipments (with positions), returns and cancellations.
class OrderDetail implements Model {
    /// 
    final String? acknowledged_at;

    /// 
    final Map? billing_address;

    /// 
    final Map? buyer;

    /// 
    final List<OrderCancellation>? cancellations;

    /// 
    final String? cancelled_at;

    /// 
    final String? cart_id;

    /// 
    final String? channel_id;

    /// 
    final String? completed_at;

    /// 
    final String? contact_id;

    /// 
    final String? created_at;

    /// 
    final String? currency;

    /// 
    final String? customer_order_number;

    /// 
    final String? external_ref;

    /// 
    final String? fulfillment_status;

    /// 
    final double? grand_total;

    /// 
    final String? hold_reason;

    /// 
    final String? id;

    /// 
    final int? item_count;

    /// 
    final List<OrderItem>? items;

    /// 
    final String? market_id;

    /// 
    final Map? metadata;

    /// 
    final String? number;

    /// 
    final bool? on_hold;

    /// 
    final String? organization_id;

    /// 
    final Map? payment;

    /// 
    final String? payment_status;

    /// 
    final String? placed_at;

    /// 
    final List<OrderReturn>? returns;

    /// 
    final List<OrderShipment>? shipments;

    /// 
    final Map? shipping;

    /// 
    final Map? shipping_address;

    /// 
    final double? shipping_total;

    /// 
    final String? status;

    /// 
    final double? subtotal;

    /// 
    final double? tax_total;

    /// 
    final String? updated_at;

    /// 
    final Map? user_data;

    OrderDetail({
        this.acknowledged_at,
        this.billing_address,
        this.buyer,
        this.cancellations,
        this.cancelled_at,
        this.cart_id,
        this.channel_id,
        this.completed_at,
        this.contact_id,
        this.created_at,
        this.currency,
        this.customer_order_number,
        this.external_ref,
        this.fulfillment_status,
        this.grand_total,
        this.hold_reason,
        this.id,
        this.item_count,
        this.items,
        this.market_id,
        this.metadata,
        this.number,
        this.on_hold,
        this.organization_id,
        this.payment,
        this.payment_status,
        this.placed_at,
        this.returns,
        this.shipments,
        this.shipping,
        this.shipping_address,
        this.shipping_total,
        this.status,
        this.subtotal,
        this.tax_total,
        this.updated_at,
        this.user_data,
    });

    factory OrderDetail.fromMap(Map<String, dynamic> map) {
        return OrderDetail(
            acknowledged_at: map['acknowledged_at']?.toString(),
            billing_address: map['billing_address'],
            buyer: map['buyer'],
            cancellations: List<OrderCancellation>.from(map['cancellations'].map((p) => OrderCancellation.fromMap(p))),
            cancelled_at: map['cancelled_at']?.toString(),
            cart_id: map['cart_id']?.toString(),
            channel_id: map['channel_id']?.toString(),
            completed_at: map['completed_at']?.toString(),
            contact_id: map['contact_id']?.toString(),
            created_at: map['created_at']?.toString(),
            currency: map['currency']?.toString(),
            customer_order_number: map['customer_order_number']?.toString(),
            external_ref: map['external_ref']?.toString(),
            fulfillment_status: map['fulfillment_status']?.toString(),
            grand_total: map['grand_total']?.toDouble(),
            hold_reason: map['hold_reason']?.toString(),
            id: map['id']?.toString(),
            item_count: map['item_count'],
            items: List<OrderItem>.from(map['items'].map((p) => OrderItem.fromMap(p))),
            market_id: map['market_id']?.toString(),
            metadata: map['metadata'],
            number: map['number']?.toString(),
            on_hold: map['on_hold'],
            organization_id: map['organization_id']?.toString(),
            payment: map['payment'],
            payment_status: map['payment_status']?.toString(),
            placed_at: map['placed_at']?.toString(),
            returns: List<OrderReturn>.from(map['returns'].map((p) => OrderReturn.fromMap(p))),
            shipments: List<OrderShipment>.from(map['shipments'].map((p) => OrderShipment.fromMap(p))),
            shipping: map['shipping'],
            shipping_address: map['shipping_address'],
            shipping_total: map['shipping_total']?.toDouble(),
            status: map['status']?.toString(),
            subtotal: map['subtotal']?.toDouble(),
            tax_total: map['tax_total']?.toDouble(),
            updated_at: map['updated_at']?.toString(),
            user_data: map['user_data'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "acknowledged_at": acknowledged_at,
            "billing_address": billing_address,
            "buyer": buyer,
            "cancellations": cancellations.map((p) => p.toMap()).toList(),
            "cancelled_at": cancelled_at,
            "cart_id": cart_id,
            "channel_id": channel_id,
            "completed_at": completed_at,
            "contact_id": contact_id,
            "created_at": created_at,
            "currency": currency,
            "customer_order_number": customer_order_number,
            "external_ref": external_ref,
            "fulfillment_status": fulfillment_status,
            "grand_total": grand_total,
            "hold_reason": hold_reason,
            "id": id,
            "item_count": item_count,
            "items": items.map((p) => p.toMap()).toList(),
            "market_id": market_id,
            "metadata": metadata,
            "number": number,
            "on_hold": on_hold,
            "organization_id": organization_id,
            "payment": payment,
            "payment_status": payment_status,
            "placed_at": placed_at,
            "returns": returns.map((p) => p.toMap()).toList(),
            "shipments": shipments.map((p) => p.toMap()).toList(),
            "shipping": shipping,
            "shipping_address": shipping_address,
            "shipping_total": shipping_total,
            "status": status,
            "subtotal": subtotal,
            "tax_total": tax_total,
            "updated_at": updated_at,
            "user_data": user_data,
        };
    }
}

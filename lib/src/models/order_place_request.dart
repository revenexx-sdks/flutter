part of '../../models.dart';

/// The snapshot payload: items plus frozen buyer/addresses/payment/shipping. The order number is drawn from the order range, totals are computed from the items.
class OrderPlaceRequest implements Model {
    /// Frozen billing address.
    final Map? billing_address;

    /// Frozen buyer snapshot (name, email, …).
    final Map? buyer;

    /// Source cart (the carts.order hand-over).
    final String? cart_id;

    /// 
    final String? channel_id;

    /// Ordering customer contact.
    final String? contact_id;

    /// ISO 4217 code (default EUR).
    final String? currency;

    /// The buyer&#039;s own order/PO number.
    final String? customer_order_number;

    /// Override — computed as subtotal + shipping + tax when omitted.
    final double? grand_total;

    /// The order positions (at most 500).
    final List<OrderItemCreateRequest> items;

    /// 
    final String? market_id;

    /// Free-form metadata.
    final Map? metadata;

    /// B2B organization.
    final String? organization_id;

    /// Frozen payment snapshot — a known &#039;payment.status&#039; seeds payment_status (otherwise &#039;open&#039;).
    final Map? payment;

    /// Frozen shipping snapshot — &#039;shipping.price&#039; seeds shipping_total.
    final Map? shipping;

    /// Frozen shipping address.
    final Map? shipping_address;

    /// Shipping total (fallback when &#039;shipping.price&#039; is absent).
    final double? shipping_total;

    /// Free-form user data.
    final Map? user_data;

    OrderPlaceRequest({
        this.billing_address,
        this.buyer,
        this.cart_id,
        this.channel_id,
        this.contact_id,
        this.currency,
        this.customer_order_number,
        this.grand_total,
        required this.items,
        this.market_id,
        this.metadata,
        this.organization_id,
        this.payment,
        this.shipping,
        this.shipping_address,
        this.shipping_total,
        this.user_data,
    });

    factory OrderPlaceRequest.fromMap(Map<String, dynamic> map) {
        return OrderPlaceRequest(
            billing_address: map['billing_address'],
            buyer: map['buyer'],
            cart_id: map['cart_id']?.toString(),
            channel_id: map['channel_id']?.toString(),
            contact_id: map['contact_id']?.toString(),
            currency: map['currency']?.toString(),
            customer_order_number: map['customer_order_number']?.toString(),
            grand_total: map['grand_total']?.toDouble(),
            items: List<OrderItemCreateRequest>.from(map['items'].map((p) => OrderItemCreateRequest.fromMap(p))),
            market_id: map['market_id']?.toString(),
            metadata: map['metadata'],
            organization_id: map['organization_id']?.toString(),
            payment: map['payment'],
            shipping: map['shipping'],
            shipping_address: map['shipping_address'],
            shipping_total: map['shipping_total']?.toDouble(),
            user_data: map['user_data'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "billing_address": billing_address,
            "buyer": buyer,
            "cart_id": cart_id,
            "channel_id": channel_id,
            "contact_id": contact_id,
            "currency": currency,
            "customer_order_number": customer_order_number,
            "grand_total": grand_total,
            "items": items.map((p) => p.toMap()).toList(),
            "market_id": market_id,
            "metadata": metadata,
            "organization_id": organization_id,
            "payment": payment,
            "shipping": shipping,
            "shipping_address": shipping_address,
            "shipping_total": shipping_total,
            "user_data": user_data,
        };
    }
}

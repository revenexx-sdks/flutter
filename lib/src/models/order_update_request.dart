part of '../../models.dart';

/// Narrow modification — these six columns and no others. Anything else in the body is ignored, and a body with none of them at all is a 400 naming the allowed set. A whole key REPLACES the value it names; there is no merge into an existing snapshot. Nothing here moves the order: status, payment and fulfillment travel through the action routes.
class OrderUpdateRequest implements Model {
    /// The invoice address, FROZEN at place-time. Changing the customer's address afterwards does not change what this order was billed to. Replaced wholesale — send the whole address, not a patch of it.
    final Map<String, dynamic>? billing_address;

    /// The ordering party as it was at place-time, FROZEN: a copy, not a reference, so the order still reads correctly after the customer record is renamed, merged or deleted. The caller decides what goes in; this app stores it and reads nothing out of it. Replaced wholesale — send the whole snapshot, not a patch of it.
    final Map<String, dynamic>? buyer;

    /// The BUYER's own reference — their purchase-order number. Free text, not unique, never generated here: it exists so the paperwork can carry the number the buyer's accounts payable will look for. One of the few fields PUT /orders/{id} may still change.
    final String? customer_order_number;

    /// Free-form data belonging to the INTEGRATION side — an ERP's own bookkeeping about this order. Stored and returned untouched; nothing here reads it. Replaced wholesale.
    final Map<String, dynamic>? metadata;

    /// The delivery address, FROZEN at place-time — what goes on the label of every shipment of this order. Null on an order that is never delivered (a service, a digital item, a collection). Replaced wholesale. This is the one correction that actually matters after placement: the label of every shipment still to go out is printed from it.
    final Map<String, dynamic>? shipping_address;

    /// Free-form data belonging to the ORDERING side — carried through from the storefront or the cart and handed back untouched. One of the few fields PUT /orders/{id} may still change. Replaced wholesale.
    final Map<String, dynamic>? user_data;

    OrderUpdateRequest({
        this.billing_address,
        this.buyer,
        this.customer_order_number,
        this.metadata,
        this.shipping_address,
        this.user_data,
    });

    factory OrderUpdateRequest.fromMap(Map<String, dynamic> map) {
        return OrderUpdateRequest(
            billing_address: map['billing_address'],
            buyer: map['buyer'],
            customer_order_number: map['customer_order_number']?.toString(),
            metadata: map['metadata'],
            shipping_address: map['shipping_address'],
            user_data: map['user_data'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "billing_address": billing_address,
            "buyer": buyer,
            "customer_order_number": customer_order_number,
            "metadata": metadata,
            "shipping_address": shipping_address,
            "user_data": user_data,
        };
    }
}

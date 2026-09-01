part of '../../models.dart';

/// Every field is optional — the buyer, the organization and the positions all come from the list.
class OrderListToOrderRequest implements Model {
    /// ISO 4217 code. Omit to let the orders app apply the market default.
    final String? currency;

    /// The BUYER's own order or purchase-order number, forwarded to the orders app verbatim. Free text and never generated here: it exists so the paperwork can carry the number the buyer's accounts payable will look for.
    final String? customer_order_number;

    OrderListToOrderRequest({
        this.currency,
        this.customer_order_number,
    });

    factory OrderListToOrderRequest.fromMap(Map<String, dynamic> map) {
        return OrderListToOrderRequest(
            currency: map['currency']?.toString(),
            customer_order_number: map['customer_order_number']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "currency": currency,
            "customer_order_number": customer_order_number,
        };
    }
}

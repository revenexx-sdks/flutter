part of '../../models.dart';

/// Narrow modification — only these columns are touchable, and only until the order is acknowledged. Status moves through the action routes.
class OrderUpdateRequest implements Model {
    /// 
    final Map? billing_address;

    /// 
    final Map? buyer;

    /// 
    final String? customer_order_number;

    /// Free-form metadata.
    final Map? metadata;

    /// 
    final Map? shipping_address;

    /// Free-form user data.
    final Map? user_data;

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

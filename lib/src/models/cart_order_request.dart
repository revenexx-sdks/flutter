part of '../../models.dart';

/// 
class CartOrderRequest implements Model {
    /// External order reference from order management.
    final String? order_ref;

    CartOrderRequest({
        this.order_ref,
    });

    factory CartOrderRequest.fromMap(Map<String, dynamic> map) {
        return CartOrderRequest(
            order_ref: map['order_ref']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "order_ref": order_ref,
        };
    }
}

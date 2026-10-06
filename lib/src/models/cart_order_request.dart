part of '../../models.dart';

///
class CartOrderRequest implements Model {
  /// The order number this cart becomes, in order management's own numbering. Stored on the cart — filtering on it is how anyone gets from an order back to the cart behind it — and it is also the reference the stock reservation is booked under. Omit it and the cart id is used for the reservation instead.
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

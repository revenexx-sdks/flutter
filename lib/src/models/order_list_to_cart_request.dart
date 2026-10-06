part of '../../models.dart';

/// Every field is optional: with an empty body the list goes into a NEW cart for its owner, on the tenant defaults.
class OrderListToCartRequest implements Model {
  /// Add to this existing cart. Omit to create one for the list owner and make it their current cart.
  final String? cart_id;

  /// ISO 4217 code for the cart and its lines. Omit to let the carts app decide.
  final String? currency;

  /// 'append' adds the positions (the carts app merges a line by product and price, so quantities accumulate); 'replace' makes the list the cart's entire contents. Defaults to the tenant's 'cart_merge_mode' setting.
  final enums.OrderListCartMode? mode;

  OrderListToCartRequest({
    this.cart_id,
    this.currency,
    this.mode,
  });

  factory OrderListToCartRequest.fromMap(Map<String, dynamic> map) {
    return OrderListToCartRequest(
      cart_id: map['cart_id']?.toString(),
      currency: map['currency']?.toString(),
      mode: map['mode'] != null
          ? enums.OrderListCartMode.values
              .firstWhere((e) => e.value == map['mode'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "cart_id": cart_id,
      "currency": currency,
      "mode": mode?.value,
    };
  }
}

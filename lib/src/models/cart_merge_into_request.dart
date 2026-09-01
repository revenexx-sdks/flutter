part of '../../models.dart';

///
class CartMergeIntoRequest implements Model {
  /// Receiving cart (must be active). The cart in the path is the source and becomes status merged.
  final String target_cart_id;

  CartMergeIntoRequest({
    required this.target_cart_id,
  });

  factory CartMergeIntoRequest.fromMap(Map<String, dynamic> map) {
    return CartMergeIntoRequest(
      target_cart_id: map['target_cart_id'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "target_cart_id": target_cart_id,
    };
  }
}

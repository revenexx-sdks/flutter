part of '../../models.dart';

///
class CartMergeRequest implements Model {
  /// The cart being folded in. It must be active, and it does NOT survive as a workspace: its lines are copied into the target, it becomes status merged, and merged_into_cart_id points at the target. Its own lines stay on it as the record of what was moved.
  final String source_cart_id;

  /// The cart that SURVIVES. Must be active; it gains the source's lines (identical product lines at the same price adding up) and its totals are recomputed.
  final String target_cart_id;

  CartMergeRequest({
    required this.source_cart_id,
    required this.target_cart_id,
  });

  factory CartMergeRequest.fromMap(Map<String, dynamic> map) {
    return CartMergeRequest(
      source_cart_id: map['source_cart_id'].toString(),
      target_cart_id: map['target_cart_id'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "source_cart_id": source_cart_id,
      "target_cart_id": target_cart_id,
    };
  }
}

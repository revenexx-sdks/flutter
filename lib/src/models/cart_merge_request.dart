part of '../../models.dart';

/// 
class CartMergeRequest implements Model {
    /// Cart whose lines move into the target (becomes status merged).
    final String source_cart_id;

    /// Receiving cart (must be active).
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

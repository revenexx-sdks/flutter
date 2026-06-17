part of '../../models.dart';

/// 
class CartItemsReplaceRequest implements Model {
    /// The complete new item set (set semantics).
    final List<CartItemCreateRequest> items;

    CartItemsReplaceRequest({
        required this.items,
    });

    factory CartItemsReplaceRequest.fromMap(Map<String, dynamic> map) {
        return CartItemsReplaceRequest(
            items: List<CartItemCreateRequest>.from(map['items'].map((p) => CartItemCreateRequest.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "items": items.map((p) => p.toMap()).toList(),
        };
    }
}

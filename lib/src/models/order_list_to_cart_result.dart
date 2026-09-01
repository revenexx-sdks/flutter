part of '../../models.dart';

/// 
class OrderListToCartResult implements Model {
    /// Positions written to the cart. Equal to the list's position count minus `skipped`.
    final int? added;

    /// True when this call created the cart. A created cart is the owner's CURRENT cart, because a cart the buyer cannot see is not "added to cart".
    final bool? cart_created;

    /// The cart the positions landed in: the one that was passed in, or the one this call created.
    final String? cart_id;

    /// The list that was converted. Unchanged by the call — a conversion reads the list, it never empties it.
    final String? list_id;

    /// The mode that was actually applied — the one that was asked for, or the tenant's 'cart_merge_mode' default when the call named none.
    final enums.OrderListCartMode? mode;

    /// Positions left out because the catalogue no longer knows their article. Only ever non-empty when 'on_missing_article' is 'skip' — 'include' converts them anyway and 'fail' answers 400 instead.
    final List<OrderListSkippedPosition>? skipped;

    OrderListToCartResult({
        this.added,
        this.cart_created,
        this.cart_id,
        this.list_id,
        this.mode,
        this.skipped,
    });

    factory OrderListToCartResult.fromMap(Map<String, dynamic> map) {
        return OrderListToCartResult(
            added: map['added'],
            cart_created: map['cart_created'],
            cart_id: map['cart_id']?.toString(),
            list_id: map['list_id']?.toString(),
            mode: map['mode'] != null ? enums.OrderListCartMode.values.firstWhere((e) => e.value == map['mode']) : null,
            skipped: map['skipped'] != null ? List<OrderListSkippedPosition>.from(map['skipped'].map((p) => OrderListSkippedPosition.fromMap(p))) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "added": added,
            "cart_created": cart_created,
            "cart_id": cart_id,
            "list_id": list_id,
            "mode": mode?.value,
            "skipped": skipped?.map((p) => p.toMap()).toList(),
        };
    }
}

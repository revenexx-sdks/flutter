part of '../../models.dart';

/// Replace ALL positions of the list (set semantics).
class OrderListItemsReplaceRequest implements Model {
    /// The new full set of positions, in the order they should carry. An empty array empties the list. Every existing position is deleted and rewritten, so ids are NOT preserved. The array order is the DEFAULT and not an override: an entry that names no `position` takes its index, one that names its own keeps it — so a replace does not by itself renumber the list from zero.
    final List<OrderListItemInput> items;

    OrderListItemsReplaceRequest({
        required this.items,
    });

    factory OrderListItemsReplaceRequest.fromMap(Map<String, dynamic> map) {
        return OrderListItemsReplaceRequest(
            items: List<OrderListItemInput>.from(map['items'].map((p) => OrderListItemInput.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "items": items.map((p) => p.toMap()).toList(),
        };
    }
}

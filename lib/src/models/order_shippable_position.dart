part of '../../models.dart';

/// One order position with the quantity that may still be shipped, and the three numbers that quantity is made of. Every position of the order is here, including the ones with nothing left open — a dialog needs to show a fully shipped line as fully shipped, not omit it.
class OrderShippablePosition implements Model {
    /// The article name as it stood at place-time, frozen. Falls back to the sku when the caller sent none — a position always reads as something.
    final String? name;

    /// The position, by the id a positions[] payload names it with. This is what POST /orders/{id}/ship expects — copy it, do not construct it.
    final String? order_item_id;

    /// The line number a human reads, and what the order is sorted by. Numbered in steps of the range's position_step (10, 20, 30) unless the caller set it explicitly — the gap is what lets a line be inserted later without renumbering.
    final int? position;

    /// The catalog product this line was taken from (the products app). Null on a custom line, and it stays a reference — the position keeps working after the product is retired.
    final String? product_id;

    /// How much was ORDERED on this position. Unchanged by anything that happens afterwards.
    final double? quantity;

    /// How much was cancelled and will never go out.
    final double? quantity_cancelled;

    /// quantity − shipped − cancelled: the budget POST /orders/{id}/ship guards this position against, and the largest quantity it will accept. Zero means the line is done.
    final double? quantity_open;

    /// How much has already gone out.
    final double? quantity_shipped;

    /// The article number as it stood at place-time, frozen with the rest of the line. The value an ERP and a warehouse both join on, and the one field a picker reads. Null only on a line that never had one.
    final String? sku;

    /// The unit the quantity is counted in — piece, metre, kilogram, package. Free text as the catalog carries it; this app does no conversion.
    final String? unit;

    OrderShippablePosition({
        this.name,
        this.order_item_id,
        this.position,
        this.product_id,
        this.quantity,
        this.quantity_cancelled,
        this.quantity_open,
        this.quantity_shipped,
        this.sku,
        this.unit,
    });

    factory OrderShippablePosition.fromMap(Map<String, dynamic> map) {
        return OrderShippablePosition(
            name: map['name']?.toString(),
            order_item_id: map['order_item_id']?.toString(),
            position: map['position'],
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            quantity_cancelled: map['quantity_cancelled']?.toDouble(),
            quantity_open: map['quantity_open']?.toDouble(),
            quantity_shipped: map['quantity_shipped']?.toDouble(),
            sku: map['sku']?.toString(),
            unit: map['unit']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "name": name,
            "order_item_id": order_item_id,
            "position": position,
            "product_id": product_id,
            "quantity": quantity,
            "quantity_cancelled": quantity_cancelled,
            "quantity_open": quantity_open,
            "quantity_shipped": quantity_shipped,
            "sku": sku,
            "unit": unit,
        };
    }
}

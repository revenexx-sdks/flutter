part of '../../models.dart';

/// A position of the placed order — needs an identity: 'name' or 'sku'. Items are SNAPSHOTS: carry the product copy, prices are frozen at place-time.
class OrderItemCreateRequest implements Model {
    /// The chosen options of a configured line — what the configurator produced, in whatever shape it produces. Only meaningful for type 'configuration'; null everywhere else.
    final Map<String, dynamic>? configuration;

    /// The buyer's own cost centre for this line — a B2B field: the same order is split across several of them and the buyer's finance department needs the split per line, not per order.
    final String? cost_center;

    /// Free-form data belonging to the integration side, per position. Stored and returned untouched.
    final Map<String, dynamic>? metadata;

    /// The article name as it stood at place-time, frozen. Falls back to the sku when the caller sent none — a position always reads as something. Falls back to 'sku' when omitted; one of the two is required.
    final String? name;

    /// The line number a human reads, and what the order is sorted by. Numbered in steps of the range's position_step (10, 20, 30) unless the caller set it explicitly — the gap is what lets a line be inserted later without renumbering. Omitted = numbered in steps of the order range's position_step.
    final int? position;

    /// A free note the buyer attached to this line — an engraving, a delivery instruction, the drawing number the line refers to. Printed on the paperwork, read by nothing.
    final String? position_text;

    /// The product as it was at place-time, FROZEN: the copy that makes the order still correct after the catalog changes its price, its name or its attributes. The caller decides how much of the product to freeze; this app stores it and reads nothing out of it. 'snapshot' is accepted as an alias for this key.
    final Map<String, dynamic>? product;

    /// The catalog product this line was taken from (the products app). Null on a custom line, and it stays a reference — the position keeps working after the product is retired.
    final String? product_id;

    /// How much was ORDERED, in `unit`. Three decimal places, so 2.5 m of cable is a real order line. Never changed afterwards — cancelling or returning writes the quantity_* columns instead, which is what keeps the order a truthful record of what was asked for. Defaults to 1.
    final double? quantity;

    /// The article number as it stood at place-time, frozen with the rest of the line. The value an ERP and a warehouse both join on, and the one field a picker reads. Null only on a line that never had one.
    final String? sku;

    /// The product as it was at place-time, FROZEN: the copy that makes the order still correct after the catalog changes its price, its name or its attributes. The caller decides how much of the product to freeze; this app stores it and reads nothing out of it. Alias for 'product' — send one or the other, not both.
    final Map<String, dynamic>? snapshot;

    /// Tax on this line in `currency`. Derived from line_total × tax_rate/100 when the caller sent none, which is the normal case — but a caller may send it, for a market whose rounding rules differ from ours. Send it only where your market rounds differently from line_total × tax_rate/100.
    final double? tax_amount;

    /// Tax percentage for this line, as a number (19 means 19 %). Frozen at place-time with everything else. Defaults to 0.
    final double? tax_rate;

    /// What kind of line this is: 'product' is a catalog article, 'configuration' a configured one carrying its configuration, 'custom' a line typed by hand that no catalog knows. Defaults to 'product'.
    final enums.OrderItemType? type;

    /// The unit the quantity is counted in — piece, metre, kilogram, package. Free text as the catalog carries it; this app does no conversion.
    final String? unit;

    /// NET price per unit, FROZEN at place-time. A later price change in the catalog does not reach this order. Defaults to 0. line_total is always derived from it and never taken from the body.
    final double? unit_price;

    /// Free-form data belonging to the ordering side, per position — carried through from the cart line and handed back untouched.
    final Map<String, dynamic>? user_data;

    OrderItemCreateRequest({
        this.configuration,
        this.cost_center,
        this.metadata,
        this.name,
        this.position,
        this.position_text,
        this.product,
        this.product_id,
        this.quantity,
        this.sku,
        this.snapshot,
        this.tax_amount,
        this.tax_rate,
        this.type,
        this.unit,
        this.unit_price,
        this.user_data,
    });

    factory OrderItemCreateRequest.fromMap(Map<String, dynamic> map) {
        return OrderItemCreateRequest(
            configuration: map['configuration'],
            cost_center: map['cost_center']?.toString(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
            position: map['position'],
            position_text: map['position_text']?.toString(),
            product: map['product'],
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            sku: map['sku']?.toString(),
            snapshot: map['snapshot'],
            tax_amount: map['tax_amount']?.toDouble(),
            tax_rate: map['tax_rate']?.toDouble(),
            type: map['type'] != null ? enums.OrderItemType.values.firstWhere((e) => e.value == map['type']) : null,
            unit: map['unit']?.toString(),
            unit_price: map['unit_price']?.toDouble(),
            user_data: map['user_data'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "configuration": configuration,
            "cost_center": cost_center,
            "metadata": metadata,
            "name": name,
            "position": position,
            "position_text": position_text,
            "product": product,
            "product_id": product_id,
            "quantity": quantity,
            "sku": sku,
            "snapshot": snapshot,
            "tax_amount": tax_amount,
            "tax_rate": tax_rate,
            "type": type?.value,
            "unit": unit,
            "unit_price": unit_price,
            "user_data": user_data,
        };
    }
}

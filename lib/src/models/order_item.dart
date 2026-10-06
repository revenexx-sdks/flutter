part of '../../models.dart';

/// One POSITION of an order, frozen at place-time: the article as it was, the price as it was, and three running quantities (shipped, cancelled, returned) that everything after placement books against. `quantity` itself never changes.
class OrderItem implements Model {
  /// The chosen options of a configured line — what the configurator produced, in whatever shape it produces. Only meaningful for type 'configuration'; null everywhere else.
  final Map<String, dynamic>? configuration;

  /// The buyer's own cost centre for this line — a B2B field: the same order is split across several of them and the buyer's finance department needs the split per line, not per order.
  final String? cost_center;

  /// When the position was written — the moment the order was placed.
  final String? created_at;

  /// Primary key of the position. This is the id every positions[] payload names: /ship, /items/cancel and /return all take order_item_id.
  final String? id;

  /// quantity × unit_price, NET, always COMPUTED here — a caller cannot set it. The order's subtotal is the sum of these.
  final double? line_total;

  /// Free-form data belonging to the integration side, per position. Stored and returned untouched.
  final Map<String, dynamic>? metadata;

  /// The article name as it stood at place-time, frozen. Falls back to the sku when the caller sent none — a position always reads as something.
  final String? name;

  /// The order this position belongs to. Deleting the order deletes its positions.
  final String? order_id;

  /// The line number a human reads, and what the order is sorted by. Numbered in steps of the range's position_step (10, 20, 30) unless the caller set it explicitly — the gap is what lets a line be inserted later without renumbering.
  final int? position;

  /// A free note the buyer attached to this line — an engraving, a delivery instruction, the drawing number the line refers to. Printed on the paperwork, read by nothing.
  final String? position_text;

  /// The product as it was at place-time, FROZEN: the copy that makes the order still correct after the catalog changes its price, its name or its attributes. The caller decides how much of the product to freeze; this app stores it and reads nothing out of it.
  final Map<String, dynamic>? product;

  /// The catalog product this line was taken from (the products app). Null on a custom line, and it stays a reference — the position keeps working after the product is retired.
  final String? product_id;

  /// How much was ORDERED, in `unit`. Three decimal places, so 2.5 m of cable is a real order line. Never changed afterwards — cancelling or returning writes the quantity_* columns instead, which is what keeps the order a truthful record of what was asked for.
  final double? quantity;

  /// How much of this position was cancelled and will never ship. Written by /cancel (all of it) and /items/cancel (a named quantity). Cancelling reduces the effective quantity, so an order whose every position is fully cancelled becomes cancelled itself.
  final double? quantity_cancelled;

  /// How much of this position came BACK, booked when a return is completed — not when it is registered or received. This is the goods accounting: it never reduces quantity_shipped, so a position can be shipped 3 and returned 3.
  final double? quantity_returned;

  /// How much of this position has GONE OUT, summed over the shipments. Written only by POST /orders/{id}/ship; it is what fulfillment_status is derived from, and what a return is guarded against.
  final double? quantity_shipped;

  /// The article number as it stood at place-time, frozen with the rest of the line. The value an ERP and a warehouse both join on, and the one field a picker reads. Null only on a line that never had one.
  final String? sku;

  /// Tax on this line in `currency`. Derived from line_total × tax_rate/100 when the caller sent none, which is the normal case — but a caller may send it, for a market whose rounding rules differ from ours.
  final double? tax_amount;

  /// Tax percentage for this line, as a number (19 means 19 %). Frozen at place-time with everything else.
  final double? tax_rate;

  /// What kind of line this is: 'product' is a catalog article, 'configuration' a configured one carrying its configuration, 'custom' a line typed by hand that no catalog knows.
  final enums.OrderItemType? type;

  /// The unit the quantity is counted in — piece, metre, kilogram, package. Free text as the catalog carries it; this app does no conversion.
  final String? unit;

  /// NET price per unit, FROZEN at place-time. A later price change in the catalog does not reach this order.
  final double? unit_price;

  /// When the position last changed, which in practice means the last time a quantity was booked onto it.
  final String? updated_at;

  /// Free-form data belonging to the ordering side, per position — carried through from the cart line and handed back untouched.
  final Map<String, dynamic>? user_data;

  OrderItem({
    this.configuration,
    this.cost_center,
    this.created_at,
    this.id,
    this.line_total,
    this.metadata,
    this.name,
    this.order_id,
    this.position,
    this.position_text,
    this.product,
    this.product_id,
    this.quantity,
    this.quantity_cancelled,
    this.quantity_returned,
    this.quantity_shipped,
    this.sku,
    this.tax_amount,
    this.tax_rate,
    this.type,
    this.unit,
    this.unit_price,
    this.updated_at,
    this.user_data,
  });

  factory OrderItem.fromMap(Map<String, dynamic> map) {
    return OrderItem(
      configuration: map['configuration'],
      cost_center: map['cost_center']?.toString(),
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      line_total: map['line_total']?.toDouble(),
      metadata: map['metadata'],
      name: map['name']?.toString(),
      order_id: map['order_id']?.toString(),
      position: map['position'],
      position_text: map['position_text']?.toString(),
      product: map['product'],
      product_id: map['product_id']?.toString(),
      quantity: map['quantity']?.toDouble(),
      quantity_cancelled: map['quantity_cancelled']?.toDouble(),
      quantity_returned: map['quantity_returned']?.toDouble(),
      quantity_shipped: map['quantity_shipped']?.toDouble(),
      sku: map['sku']?.toString(),
      tax_amount: map['tax_amount']?.toDouble(),
      tax_rate: map['tax_rate']?.toDouble(),
      type: map['type'] != null
          ? enums.OrderItemType.values.firstWhere((e) => e.value == map['type'])
          : null,
      unit: map['unit']?.toString(),
      unit_price: map['unit_price']?.toDouble(),
      updated_at: map['updated_at']?.toString(),
      user_data: map['user_data'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "configuration": configuration,
      "cost_center": cost_center,
      "created_at": created_at,
      "id": id,
      "line_total": line_total,
      "metadata": metadata,
      "name": name,
      "order_id": order_id,
      "position": position,
      "position_text": position_text,
      "product": product,
      "product_id": product_id,
      "quantity": quantity,
      "quantity_cancelled": quantity_cancelled,
      "quantity_returned": quantity_returned,
      "quantity_shipped": quantity_shipped,
      "sku": sku,
      "tax_amount": tax_amount,
      "tax_rate": tax_rate,
      "type": type?.value,
      "unit": unit,
      "unit_price": unit_price,
      "updated_at": updated_at,
      "user_data": user_data,
    };
  }
}

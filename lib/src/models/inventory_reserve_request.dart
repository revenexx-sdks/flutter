part of '../../models.dart';

///
class InventoryReserveRequest implements Model {
  /// When this hold lapses. The sweeper — POST /inventories/reservations/sweep, and the 'expire-reservations' schedule that runs it every 15 minutes — releases everything past this moment exactly as a cancellation would, so an abandoned checkout stops holding stock on its own. Null means the row named no deadline: it is swept on its AGE instead once `reservation_ttl_minutes` is above 0, which is what makes turning that setting on retroactive. Omit it to let the `reservation_ttl_minutes` setting stamp one (0 — its default — means no deadline at all); send one to hold this order for a window of its own, e.g. a quote that stands until Friday.
  final String? expires_at;

  /// The items to hold, at most 200 in one call — a whole cart in one request. The call is planned before anything is written, so either every item is placed or nothing is.
  final List<InventoryStockItem>? items;

  /// Where a BACKORDERED item is booked when no location holds a stock row for it at all — the last fallback, not the allocator: which location serves an item that IS in stock comes from `allocation_strategy`. Omitted, the `default_location_code` setting decides.
  final String? location_code;

  /// The order this hold belongs to. The caller supplies it — this app mints nothing — and it is the handle POST /inventories/release and POST /inventories/commit act on, so it has to be the same string the order carries elsewhere. At least one character (CHECK `length(order_ref) > 0`). Not unique: an order holds one reservation per item, and they are released or committed together. Reserving twice under the same reference ADDS holds rather than replacing them — release first if you mean to replace.
  final String order_ref;

  /// Inline single-item form: the product to move, instead of a one-entry `items` array. The two forms are equivalent — nothing downstream knows which arrived.
  final String? product_id;

  /// Inline single-item form: how many to hold. Positive — the hold is expressed as a positive reservation, while the ledger booking it writes carries the negative.
  final double? quantity;

  /// Where the order is going. Read ONLY when the tenant's `allocation_strategy` is 'nearest' — under 'priority' or 'single_location' it is accepted and ignored, so sending it is never wrong, it is just not always heard.
  final InventoryShipTo? ship_to;

  /// Inline single-item form: the article number to move (instead of `product_id`).
  final String? sku;

  InventoryReserveRequest({
    this.expires_at,
    this.items,
    this.location_code,
    required this.order_ref,
    this.product_id,
    this.quantity,
    this.ship_to,
    this.sku,
  });

  factory InventoryReserveRequest.fromMap(Map<String, dynamic> map) {
    return InventoryReserveRequest(
      expires_at: map['expires_at']?.toString(),
      items: map['items'] != null
          ? List<InventoryStockItem>.from(
              map['items'].map((p) => InventoryStockItem.fromMap(p)))
          : null,
      location_code: map['location_code']?.toString(),
      order_ref: map['order_ref'].toString(),
      product_id: map['product_id']?.toString(),
      quantity: map['quantity']?.toDouble(),
      ship_to: map['ship_to'] != null
          ? InventoryShipTo.fromMap(map['ship_to'])
          : null,
      sku: map['sku']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "expires_at": expires_at,
      "items": items?.map((p) => p.toMap()).toList(),
      "location_code": location_code,
      "order_ref": order_ref,
      "product_id": product_id,
      "quantity": quantity,
      "ship_to": ship_to?.toMap(),
      "sku": sku,
    };
  }
}

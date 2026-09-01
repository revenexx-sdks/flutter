part of '../../models.dart';

///
class ItemAvailability implements Model {
  /// on_hand − reserved across the locations in scope: available-to-promise, and the number a storefront shows. It can be NEGATIVE once backorders have been reserved beyond stock — nothing floors it, because "sold more than we hold" is a real state a merchant needs to see.
  final double? available;

  /// The per-location breakdown behind the summed figures — which place could actually ship it.
  final List<LocationAvailability>? locations;

  /// Physically in stock, summed across the locations in scope (every enabled location, or the one `location_code` named). Promised units are included, so this is NOT what may be sold.
  final double? on_hand;

  /// True when the item is tracked and `available >= requested` at this moment. A SNAPSHOT, not a hold: nothing is set aside until POST /inventories/reserve, and two checkouts can both read true for the last unit.
  final bool? orderable;

  /// The product id as it was asked for, echoed. Null when the item was named by SKU.
  final String? product_id;

  /// The quantity the check was made against — the item's own `quantity`, or 1 when none was sent. `orderable` answers "can I have this many?", so it is only as strict as this number.
  final double? requested;

  /// Already promised to orders, summed across the same locations — the part of `on_hand` that is spoken for.
  final double? reserved;

  /// The SKU as it was asked for, echoed. Null when the item was named by product id.
  final String? sku;

  /// False when this app has never seen the item: no stock row anywhere in scope. It is not an error and not a zero — the storefront decides whether an untracked item sells freely (a service, a made-to-order piece) or not at all. `on_hand`, `reserved` and `available` are 0 in that case, and `orderable` is false.
  final bool? tracked;

  ItemAvailability({
    this.available,
    this.locations,
    this.on_hand,
    this.orderable,
    this.product_id,
    this.requested,
    this.reserved,
    this.sku,
    this.tracked,
  });

  factory ItemAvailability.fromMap(Map<String, dynamic> map) {
    return ItemAvailability(
      available: map['available']?.toDouble(),
      locations: map['locations'] != null
          ? List<LocationAvailability>.from(
              map['locations'].map((p) => LocationAvailability.fromMap(p)))
          : null,
      on_hand: map['on_hand']?.toDouble(),
      orderable: map['orderable'],
      product_id: map['product_id']?.toString(),
      requested: map['requested']?.toDouble(),
      reserved: map['reserved']?.toDouble(),
      sku: map['sku']?.toString(),
      tracked: map['tracked'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "available": available,
      "locations": locations?.map((p) => p.toMap()).toList(),
      "on_hand": on_hand,
      "orderable": orderable,
      "product_id": product_id,
      "requested": requested,
      "reserved": reserved,
      "sku": sku,
      "tracked": tracked,
    };
  }
}

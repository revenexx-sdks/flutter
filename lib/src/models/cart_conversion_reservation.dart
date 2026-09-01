part of '../../models.dart';

/// What this app ASKED inventories for, and what it answered. This app holds no stock: inventories picks the location, applies the backorder policy and owns the hold's expiry.
class CartConversionReservation implements Model {
  /// Lines inventories accepted without stock behind them, under the tenant's backorder policy — its policy, not this app's.
  final int? backordered;

  /// inventories' hold deadline — its TTL, not this app's.
  final String? expires_at;

  /// A hold exists. False with `requested: true` means inventories was asked and refused — `reason` says why, and only convert_reserves_stock = require turns that into a 409.
  final bool? ok;

  /// The reference the reservation was booked under: the `order_ref` of the request, or the cart id when the call carried none. This is the string to hand inventories when releasing the hold.
  final String? order_ref;

  /// Why no hold exists — stated, never implied. Present whenever `ok` is false, and also on the never case.
  final String? reason;

  /// False when convert_reserves_stock is 'never' — no call was made at all, which is reported rather than dressed up as a silent success.
  final bool? requested;

  /// Lines inventories confirmed a hold for.
  final int? reservations;

  /// The HTTP status inventories answered with, present only when it refused. 404 is its own case: the tenant has no inventories app at all, which is a different problem from not enough stock.
  final int? status;

  CartConversionReservation({
    this.backordered,
    this.expires_at,
    this.ok,
    this.order_ref,
    this.reason,
    this.requested,
    this.reservations,
    this.status,
  });

  factory CartConversionReservation.fromMap(Map<String, dynamic> map) {
    return CartConversionReservation(
      backordered: map['backordered'],
      expires_at: map['expires_at']?.toString(),
      ok: map['ok'],
      order_ref: map['order_ref']?.toString(),
      reason: map['reason']?.toString(),
      requested: map['requested'],
      reservations: map['reservations'],
      status: map['status'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "backordered": backordered,
      "expires_at": expires_at,
      "ok": ok,
      "order_ref": order_ref,
      "reason": reason,
      "requested": requested,
      "reservations": reservations,
      "status": status,
    };
  }
}

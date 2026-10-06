part of '../../models.dart';

///
class CartMaintenanceResult implements Model {
  /// The first sweep: active carts nobody has touched since their market's window become abandoned. Nothing else in the platform ever stamps abandoned_at, so without this the abandonment funnel is empty by construction rather than empty because nobody abandons carts.
  final CartAbandonSweep? abandon;

  /// This pass wrote nothing. The counts and cart ids are the same ones the wet run would produce.
  final bool? dry_run;

  /// The second sweep, and the only destructive thing this app does: carts past their retention window are deleted, their lines with them. An ordered cart is never touched at any setting — it is the source record of a sale.
  final CartPurgeSweep? purge;

  /// The instant this pass measured every window against. One clock for both sweeps, so a cart cannot be judged idle by one and fresh by the other.
  final String? swept_at;

  CartMaintenanceResult({
    this.abandon,
    this.dry_run,
    this.purge,
    this.swept_at,
  });

  factory CartMaintenanceResult.fromMap(Map<String, dynamic> map) {
    return CartMaintenanceResult(
      abandon: map['abandon'] != null
          ? CartAbandonSweep.fromMap(map['abandon'])
          : null,
      dry_run: map['dry_run'],
      purge: map['purge'] != null ? CartPurgeSweep.fromMap(map['purge']) : null,
      swept_at: map['swept_at']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "abandon": abandon?.toMap(),
      "dry_run": dry_run,
      "purge": purge?.toMap(),
      "swept_at": swept_at,
    };
  }
}

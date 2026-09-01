part of '../../models.dart';

/// 
class CartMaintenanceRequest implements Model {
    /// Report what the sweep WOULD do and write nothing. Worth doing before a first retention run: cart_ttl_days deletes carts and their lines.
    final bool? dry_run;

    CartMaintenanceRequest({
        this.dry_run,
    });

    factory CartMaintenanceRequest.fromMap(Map<String, dynamic> map) {
        return CartMaintenanceRequest(
            dry_run: map['dry_run'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "dry_run": dry_run,
        };
    }
}

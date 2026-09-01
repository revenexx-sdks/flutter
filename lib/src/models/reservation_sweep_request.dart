part of '../../models.dart';

/// No fields — send `{}`. The cut-off is always now, and what counts as expired follows each reservation's own `expires_at` plus the `reservation_ttl_minutes` setting of the market it belongs to.
class ReservationSweepRequest implements Model {
    ReservationSweepRequest(
    );

    factory ReservationSweepRequest.fromMap(Map<String, dynamic> map) {
        return ReservationSweepRequest(
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
        };
    }
}

part of '../../models.dart';

///
class ReservationSweepResult implements Model {
  /// How many active reservations were found past their hold: the ones with an `expires_at` in the past, plus the undated ones older than their market's TTL.
  final int? expired;

  /// The market codes this run had to resolve a window for — every market that had an undated active reservation. Empty when nothing is market-assigned, which is the usual case.
  final List<String>? markets;

  /// How many were actually given back — `reserved` lowered on the stock row and a `release` booking written for each. It equals `expired` unless a row vanished mid-run. Idempotent: a second run immediately after finds nothing and answers 0.
  final int? released;

  /// The cut-off this run used — everything whose hold had run out by this moment was released. It is the run's own clock, not a stored value.
  final String? swept_at;

  /// The `reservation_ttl_minutes` that applied to reservations belonging to NO market — the tenant baseline. A reservation assigned to a market is judged against that market's own window instead, which is why this is reported rather than assumed to be the only one.
  final double? ttl_minutes;

  ReservationSweepResult({
    this.expired,
    this.markets,
    this.released,
    this.swept_at,
    this.ttl_minutes,
  });

  factory ReservationSweepResult.fromMap(Map<String, dynamic> map) {
    return ReservationSweepResult(
      expired: map['expired'],
      markets: List.from(map['markets'] ?? []),
      released: map['released'],
      swept_at: map['swept_at']?.toString(),
      ttl_minutes: map['ttl_minutes']?.toDouble(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "expired": expired,
      "markets": markets,
      "released": released,
      "swept_at": swept_at,
      "ttl_minutes": ttl_minutes,
    };
  }
}

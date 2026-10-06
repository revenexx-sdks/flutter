part of '../../models.dart';

/// One currency a market accepts, as opposed to the single base currency on the market row that its prices are quoted in. The base currency must be registered here or the market cannot serve.
class MarketCurrency implements Model {
  /// ISO 4217 code, unique per market — one entry in the set of currencies this market TRADES in, as opposed to the single base currency on the market row that its prices are quoted in. The base currency must appear here or the market cannot serve; clone and backfill register it for you.
  final String? code;

  /// When the currency was registered on this market. Set by the database; never writable.
  final String? created_at;

  /// Primary key of this currency registration. The currency is named by `code` everywhere else.
  final String? id;

  /// The currency offered first to a buyer who states no preference. At most one per market, and it should be the market's base currency — readiness reports it as a warning when it is not.
  final bool? is_default;

  /// The market this currency belongs to. Filled from the route path on write and never read out of the body; ON DELETE CASCADE, so deleting the market deletes this row.
  final String? market_id;

  /// Sort position among this market's currencies, ascending, default 0 — the order a currency switcher lists them in.
  final int? position;

  MarketCurrency({
    this.code,
    this.created_at,
    this.id,
    this.is_default,
    this.market_id,
    this.position,
  });

  factory MarketCurrency.fromMap(Map<String, dynamic> map) {
    return MarketCurrency(
      code: map['code']?.toString(),
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      is_default: map['is_default'],
      market_id: map['market_id']?.toString(),
      position: map['position'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "created_at": created_at,
      "id": id,
      "is_default": is_default,
      "market_id": market_id,
      "position": position,
    };
  }
}

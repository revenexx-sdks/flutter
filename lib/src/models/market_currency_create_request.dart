part of '../../models.dart';

/// The owning market comes from the route path ('market_id').
class MarketCurrencyCreateRequest implements Model {
    /// ISO 4217 code, unique per market — one entry in the set of currencies this market TRADES in, as opposed to the single base currency on the market row that its prices are quoted in. The base currency must appear here or the market cannot serve; clone and backfill register it for you.
    final String code;

    /// The currency offered first to a buyer who states no preference. At most one per market, and it should be the market's base currency — readiness reports it as a warning when it is not.
    final bool? is_default;

    /// Sort position among this market's currencies, ascending, default 0 — the order a currency switcher lists them in.
    final int? position;

    MarketCurrencyCreateRequest({
        required this.code,
        this.is_default,
        this.position,
    });

    factory MarketCurrencyCreateRequest.fromMap(Map<String, dynamic> map) {
        return MarketCurrencyCreateRequest(
            code: map['code'].toString(),
            is_default: map['is_default'],
            position: map['position'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "is_default": is_default,
            "position": position,
        };
    }
}

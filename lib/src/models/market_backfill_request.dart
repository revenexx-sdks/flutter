part of '../../models.dart';

/// The path id is the market being REPAIRED; `source` is the market to copy from (a uuid or a market code). The three flags default to true.
class MarketBackfillRequest implements Model {
  /// Take the source's traded currencies for codes this market does not already carry. Default true.
  final bool? currencies;

  /// Take the source's locales for codes this market does not already carry. Default true.
  final bool? locales;

  /// The market to copy the missing pieces FROM — a uuid or a market code. Must not be the market in the path. Pick a market that is already right; nothing about it is changed.
  final String source;

  /// Take the source's tax classes for codes this market does not already carry. An existing code keeps ITS rate — a backfill never re-rates a class the merchant already set. Default true.
  final bool? tax_classes;

  MarketBackfillRequest({
    this.currencies,
    this.locales,
    required this.source,
    this.tax_classes,
  });

  factory MarketBackfillRequest.fromMap(Map<String, dynamic> map) {
    return MarketBackfillRequest(
      currencies: map['currencies'],
      locales: map['locales'],
      source: map['source'].toString(),
      tax_classes: map['tax_classes'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "currencies": currencies,
      "locales": locales,
      "source": source,
      "tax_classes": tax_classes,
    };
  }
}

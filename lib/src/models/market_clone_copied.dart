part of '../../models.dart';

/// Child rows copied from the source, per collection. A flag left false is a zero here, and so is a source that had none of that kind.
class MarketCloneCopied implements Model {
  /// Traded currencies copied from the source market.
  final int? currencies;

  /// Locales copied from the source market.
  final int? locales;

  /// Tax classes copied from the source market.
  final int? tax_classes;

  MarketCloneCopied({
    this.currencies,
    this.locales,
    this.tax_classes,
  });

  factory MarketCloneCopied.fromMap(Map<String, dynamic> map) {
    return MarketCloneCopied(
      currencies: map['currencies'],
      locales: map['locales'],
      tax_classes: map['tax_classes'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "currencies": currencies,
      "locales": locales,
      "tax_classes": tax_classes,
    };
  }
}

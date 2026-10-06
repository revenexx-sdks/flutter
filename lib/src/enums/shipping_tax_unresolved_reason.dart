part of '../../enums.dart';

enum ShippingTaxUnresolvedReason {
  marketRequired(value: 'market_required'),
  noMarkets(value: 'no_markets'),
  noTaxClasses(value: 'no_tax_classes'),
  lookupFailed(value: 'lookup_failed');

  const ShippingTaxUnresolvedReason({required this.value});

  final String value;

  String toJson() => value;
}

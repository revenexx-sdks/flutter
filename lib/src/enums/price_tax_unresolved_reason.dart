part of '../../enums.dart';

enum PriceTaxUnresolvedReason {
    marketRequired(value: 'market_required'),
    noMarkets(value: 'no_markets'),
    noTaxClasses(value: 'no_tax_classes'),
    lookupFailed(value: 'lookup_failed');

    const PriceTaxUnresolvedReason({
        required this.value
    });

    final String value;

    String toJson() => value;
}
part of '../../enums.dart';

enum MarketPricingSource {
    market(value: 'market'),
    tenant(value: 'tenant'),
    unset(value: 'unset');

    const MarketPricingSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}
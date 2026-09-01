part of '../../enums.dart';

enum MarketDefaultLocaleSource {
    market(value: 'market'),
    marketFirst(value: 'market_first'),
    tenantFallback(value: 'tenant_fallback');

    const MarketDefaultLocaleSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}
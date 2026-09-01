part of '../../enums.dart';

enum ShippingTaxMarketSource {
    request(value: 'request'),
    header(value: 'header'),
    country(value: 'country'),
    soleMarket(value: 'sole_market');

    const ShippingTaxMarketSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}